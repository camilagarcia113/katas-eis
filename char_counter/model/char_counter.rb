class CharCounter

  def self.count(word)
    hash = Hash.new
    if word.nil?
      return {}
    else
      word.each_char do |char|
        next unless char =~/\w/
        hash[char] =word.count(char)
      end
      return hash
    end

  end
end