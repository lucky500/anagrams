require('pry')

class Anagrams
  def initialize(sentence1, sentence2)
    @sentence1 = sentence1
    @sentence2 = sentence2
  end

  def is_palindrome?(sentence1, sentence2)
    @sentence1 = sentence1.downcase.scan(/\w/)
    @sentence2 = sentence2.downcase.scan(/\w/)
    @sentence1 == @sentence2
  end

  # def is_anagrams?
  #   clean_anagram = self.gsub!(/[^A-Za-z]/, '')
  # end
  # def is_palindrome?(word)
  #   palindrome_words = []
  #   word = word.downcase()
  #   word = word.split(" ")
  #   word.each do |i|
  #     if i == i.reverse
  #       'are palindrome words'
  #       palindrome_words.push(i)
  #   end
  # end

  def get_anagrams(sentence1, sentence2)
    @sentence1 = sentence1.gsub(/[^0-9a-z]/i, '').downcase.split("").sort()
    @sentence2 = sentence2.gsub(/[^0-9a-z]/i, '').downcase.split("").sort()
    # if (sentence1 =~ /[0-9]/) || (sentence2 =~ /[0-9]/)
    #   "Please enter a sentence"
    if @sentence1 == @sentence2
      "These two sentences are anagrams"
    else
      "These two sentences are not anagrams"
    end
  end
end