require 'rspec'
require 'anagrams'

describe("Anagrams#get_anagrams") do
  # it("Program will return error message if number is entered") do
  # anagrams = Anagrams.new()
  # expect(anagrams.get_anagrams("0", "0")).to(eq("Please enter a sentence"))
  # end

  it("Program will return an error if first word and second word are not anagrams.") do
  anagrams = Anagrams.new("Hello", "Ola")
  expect(anagrams.get_anagrams("Hello", "Ola")).to(eq("These two sentences are not anagrams"))
  end

  it("Program will check if two words have the same letters and are anagrams") do
  anagrams = Anagrams.new("ruby", "bury")
  expect(anagrams.get_anagrams("ruby", "bury")).to(eq("These two sentences are anagrams"))
  end

  it("Program will ignore case sensitivity") do
  anagrams = Anagrams.new("Owl", "low")
  expect(anagrams.get_anagrams("Owl", "low")).to(eq("These two sentences are anagrams"))
  end


  it("Program will check if multiple words are anagrams") do
  anagrams = Anagrams.new("Im a Dot in Place", "A Decimal Point")
  expect(anagrams.get_anagrams("Im a Dot in Place", "A Decimal Point")).to(eq("These two sentences are anagrams"))
   #binding.pry
  end

end

describe("Anagrams#is_palindrome?") do
  palindrome = Anagrams.new("Never a foot too far, even.")
  it("Program will check to see if words in sentence one are palindromes") do
    expect(palindrome.is_palindrome?("Never a foot too far, even.")).to(eq(true))
  end
end

describe("Anagrams#is_it_a_word?") do
  word = Anagrams.new("sentence")
  it("Program will return true if word or sentence entered contain vowels.") do
    expect(word.is_it_a_word?("The path of the righteous man is beset on all sides by the iniquities of the selfish and the tyranny of evil men.")).to(eq(true))
  end
end

describe("Anagrams#is_it_a_word?") do
  word = Anagrams.new("tfrv")
  it("Program will return an error if word or sentence entered does not contain vowels.") do
    expect(word.is_it_a_word?("tfrv")).to(eq("Please enter a word"))
  end
end

