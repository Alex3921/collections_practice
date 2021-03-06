def sort_array_asc(array_of_nums)
  array_of_nums.sort
end

def sort_array_desc(array_of_nums)
  array_of_nums.sort_by { |c| -c.ord }
end

def sort_array_char_count(array_of_str)
  array_of_str.sort do |a, b|
    a.length <=> b.length
  end
end

def swap_elements(array)
  new_array = [array[0],array[2],array[1]]
  array.each_with_index do |word, idx|
    if idx > 2
      new_array << word
    end
  end
  new_array
end

def reverse_array(array_of_nums)
  array_of_nums.reverse
end

def kesha_maker(array_of_str)
  new_array = []

  array_of_str.each do |word|
    if word.length > 2
      word_with_dolla = word.split("")
      word_with_dolla[2] = "$"
      new_array << word_with_dolla.join
    else
      new_array << word
    end
  end
  new_array
end

def find_a(array_of_str)
  array_of_str.select do |phrase|
    phrase.start_with?('a', 'A')
  end
end

def sum_array(array_of_nums)
  array_of_nums.inject {|sum, n| sum + n}
end

def add_s(array_of_str)
  array_of_str.each_with_index.collect do |phrase, index|
    if index != 1
      phrase << "s"
    else
      phrase
    end
  end
end

