# frozen_string_literal: true

class Bottles
  def verse(number)
    <<~VERSE
      #{number} bottles of beer on the wall, #{number} bottles of beer.
      Take one down and pass it around, #{decrease_bottle(number)} of beer on the wall.
    VERSE
  end

  def decrease_bottle(number)
    temp = number - 1
    temp > 1 ? "#{temp} bottles" : "#{temp} bottle"
  end
end
