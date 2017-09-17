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
  anagrams = Anagrams.new("Anina", "Anina")
  it("Program will check to see if words in sentence one are palindromes") do
    expect(anagrams.is_palindrome?("Anina", "Anina")).to(eq(true))
  end
end
