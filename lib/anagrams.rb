class Anagrams
  # def is_anagrams?
  #   clean_anagram = self.gsub!(/[^A-Za-z]/, '')
  # end

  def get_anagrams(sentence1, sentence2)
    sentence1 = sentence1.gsub(/[^0-9a-z]/i, '')
    sentence2 = sentence2.gsub(/[^0-9a-z]/i, '')
    sentence1 = sentence1.downcase.split("").sort()
    sentence2 = sentence2.downcase.split("").sort()
    # if (sentence1 =~ /[0-9]/) || (sentence2 =~ /[0-9]/)
    #   "Please enter a sentence"
    if sentence1 == sentence2
      "These two sentences are anagrams"
    else
      "These two sentences are not anagrams"
    end

  end
end