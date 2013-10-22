class PigLatin

  def self.piggieback(word)
    vowels = ['a', 'e', 'i', 'o', 'u']
    first_letter = word.slice(0)
    if vowels.include?(first_letter.downcase)
      word += 'way'
    else
      vowel_index = word.index(/[aeiou]/)
      end_of_word = word.slice!(0, vowel_index)
      word += end_of_word
      word += 'ay'
    end
    word
  end


  def self.translate(string)
    if string.split.length > 1
      words = string.split!
      words.map { |word| self.piggieback(word) }
      string = words.join
    else
      string = self.piggieback(string)
    end
    string
  end

end
