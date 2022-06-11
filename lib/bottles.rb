# frozen_string_literal: true

class Bottles
  def verse(number)
    <<~VERSE
      #{verse1(number)}
      #{verse2(number)}
    VERSE
  end

  def verses(start, finish)
    "#{verse(start)}\n#{verse(finish)}"
  end

  private

  def verse1(number)
    if number > 1
      "#{number} bottles of beer on the wall, #{number} bottles of beer."
    elsif number == 1
      '1 bottle of beer on the wall, 1 bottle of beer.'
    else
      'No more bottles of beer on the wall, no more bottles of beer.'
    end
  end

  def verse2(number)
    if number.zero?
      'Go to the store and buy some more, 99 bottles of beer on the wall.'
    else
      "Take #{one_bottle_left(number)} down and pass it around, #{decrease_bottle(number)} of beer on the wall."
    end
  end

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
end
