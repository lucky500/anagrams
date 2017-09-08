#Anagrams

#Specifications

* Program will return error message if number is entered
  * Example Input: 0
  * Example Output: "Please enter a sentence"
* Program will check if two words have the same letter and are anagrams:
  * Example Input: "ruby" "bury"
  * Example Output: "These two words are anagrams"
* Program will ignore case sensitivy
  * Example Input: "Owl" "low"
  * Example Output: "These two words are anagrams"
* Program will also check if word is a Palindrome besides being an anagram
  * Example Input: "aaaad" "daaaa"
  * Example Outup: "aaaad is an anagram of the "aadaa" palindrome"
* Add a rule to check if the inputs are words. A word must contain a vowel (aeiou) or y, Otherwise it is not a word.
  * Example Input: "fhgkrl"
  * Example Output: "Please enter a word"
* If input is not an actual anagram, program will check if the input is an antigram.
  * Example Input: "Hi" "Bye"
  * Example Output: "These two words have no letters matching and is an actual antigram"
* Account for multiple words being angram or antigram
  * Example Input: "A Decimal Point" "Im a Dot in Place"
  * Example Output: "These words are anagrams"