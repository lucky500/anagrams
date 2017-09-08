require 'rspec'
require 'anagrams'

describe("Anagrams#get_anagrams") do
  # it("Program will return error message if number is entered") do
  # anagrams = Anagrams.new()
  # expect(anagrams.get_anagrams("0", "0")).to(eq("Please enter a sentence"))
  # end

  it("Program will check if two words have the same letters and are anagrams") do
  anagrams = Anagrams.new()
  expect(anagrams.get_anagrams("ruby", "bury")).to(eq("These two words are anagrams"))
  end

end