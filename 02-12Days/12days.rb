class Xmas
  @gift = ["a partridge in a pear tree", "two turtle doves", "three french hens", "four calling birds", "FIVE GOLDEN RINGS", "six geese-a-laying", "seven swans-a-swimming", "eight maids-a-milking", "nine ladies dancing", "ten lords-a-leaping", "eleven pipers piping", "twelve drummers drumming"]

  @ordinal = ["first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth"]

  def self.gifts(num)
    gift = @gift[0..num].reverse
    if num != 0
      gift[-1] = "and " + @gift[0]
    end
    return gift
  end

  def self.verse(num)
    gift = gifts(num).join("\n")
    return "On the #{@ordinal[num]} day of Christmas my true love gave to me\n#{gift}"
  end

  def self.sing
    song = []
    counter = 0
    until counter == 12
      song << verse(counter)
      counter += 1
    end
    return song.join("\n\n")
  end
end
