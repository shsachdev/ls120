
def is_anagram?(word1, word2)
  hash1 = {}
  hash2 = {}
  word1.each_char do |char|
    hash1[char] = word1.count(char)
  end
  word2.each_char do |char|
    hash2[char] = word2.count(char)
  end
  hash1.sort.to_h == hash2.sort.to_h
end

def anagram(word, words)
  arr = []
  words.each do |wrd|
    arr << wrd if is_anagram?(wrd, word)
  end
  p arr
end


puts anagram('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']


# words = []

# word = str


# Write a function that will find all the anagrams of a word from a list.

# input = str, arr; output = arr

# Algorithm

# 1. Iterate through each element in words and see if it is anagram with word.
  # to check if anagram, we can define a method is_anagram?

# is_anagram? (implementation)
  # iterate through each char of both strings (using each_char)
  # create a hash of the form: char => count (for each string)
  # compare hashes; if they are equal, then the words are anagrams of each other, and is_anagram? returns true.
# 2. if it is, add it to an array.
# 3. return this array (empty or not)
