class Hamming

  def self.compute(first, second)
    if first.length != second.length
      raise ArgumentError
    end
      hamming_number = 0
      first.length.times do |i|
        if first[i] != second[i]
          hamming_number += 1
        end
      end
    return hamming_number
  end

end
