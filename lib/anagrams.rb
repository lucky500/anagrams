require('pry')

class Anagrams

  attr_accessor :sentence1, :sentence2

  def initialize(sentence1, sentence2 = '')
    @sentence1 = sentence1
    @sentence2 = sentence2
  end

  def is_palindrome?(sentence1)
    @sentence1 = sentence1.downcase.scan(/\w/)
    @sentence1 == @sentence1.reverse
  end

  def is_it_a_word?(sentence1, sentence2 = '')
    if @sentence1.match(/[aeiou]/i) || @sentence2.match(/[aeiou]/i)
      true
    else
      "Please enter a word"
    end
  end


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