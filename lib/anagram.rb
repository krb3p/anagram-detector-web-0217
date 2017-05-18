require 'pry'

class Anagram

  def initialize (word)
    @word = word
  end

  def word
    @word
  end

  def sorted_word_array(word)
    word.chars.sort.join
  end

  def sort_comparison_array(array)
    split_array = array.each_slice(1).to_a.map {|word| word[0].chars}
    sorted_words = split_array.map { |chars| chars.sort}
    combined_words = sorted_words.map {|word| word.join}
  end

  def match(array)
    sorted_array = self.sort_comparison_array(array)
    sorted_word = self.sorted_word_array(word)
    x = sorted_array.each_index.select do |i|
      sorted_array[i] == sorted_word
    end
    final_array = []
    x.each do |index_number|
      array.each_with_index do |element, index|
        if index == index_number
          final_array << element
        end
      end
    end
    final_array
  end

end
