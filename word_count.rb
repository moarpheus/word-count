=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

require 'byebug'

class Phrase
  def initialize word
    @word = word
  end

  def word_count 
    result = {}
    clean_words = @word.split(/[,:.!&@$%^&\s]+/).reject(&:empty?).map(&:downcase).map {|w| w.gsub!(/^\'|\'?$/, '') }
    clean_words.each do |word|
      result[word] = clean_words.count(word)
    end
    result
  end
end
