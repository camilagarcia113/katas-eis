class CharCounter

  def self.count(word)
    hash = Hash.new(0)
    word.each_char do |char|
      next unless char =~/\w/
      hash[char] += 1
    end
    hash
  end
end