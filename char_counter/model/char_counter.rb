class CharCounter

  def self.count(word)
    hash = Hash.new(0)
    if word.nil?
      return {}
    else
      word.each_char do |char|
        next unless char =~/\w/
        hash[char] += 1
      end
      return hash
    end

  end
end