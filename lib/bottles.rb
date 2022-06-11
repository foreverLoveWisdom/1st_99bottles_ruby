# frozen_string_literal: true

class Bottles
  def verse(number)
    <<~VERSE
      #{original_bottle(number)} of beer on the wall, #{original_bottle(number)} of beer.
      Take #{one_bottle_left(number)} down and pass it around, #{decrease_bottle(number)} of beer on the wall.
    VERSE
  end

  private

  def one_bottle_left(number)
    number > 1 ? 'one' : 'it'
  end

  def decrease_bottle(number)
    temp = number - 1
    if temp > 1
      "#{temp} bottles"
    elsif temp == 1
      "#{temp} bottle"
    elsif temp.zero?
      'no more bottles'
    end
  end

  def original_bottle(number)
    number > 1 ? "#{number} bottles" : "#{number} bottle"
  end
end
