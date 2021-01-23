def histogram(text)
  # Pseudocode
  # return a hash containing words with frequencies

  # We receive a string (text)
  # split text into words
  # create empty hash for frequencies
  # for each word:
  #   if hash contains the word as a key,
  #     add 1 to the value of that key in the hash
  #   else
  #     add word as a key to the hash, with value of 1
  # return hash

  words = text.split
  frequencies = {}
  words.each do |word|
    if frequencies.key?(word)
      frequencies[word] += 1
    else
      frequencies[word] = 1
    end
  end
  frequencies
end
