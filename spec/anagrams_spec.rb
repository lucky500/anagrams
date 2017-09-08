require 'rspec'
require 'anagrams'

describe("Anagrams#get_anagrams") do
  it("Program will return error message if number is entered") do
  anagrams = Anagrams.new()
  expect(anagrams.get_anagrams(0)).to(eq("Please enter a sentence"))
  end

end