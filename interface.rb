require_relative 'frequencies'

# Read in the article
article = File.read('article.txt')

# Get the histogram
frequencies = histogram(article)

# Print out results
frequencies = frequencies.sort_by { |word, frequency| frequency }.reverse

frequencies.each do |word, frequency|
  puts "#{frequency}: #{word}"
end
