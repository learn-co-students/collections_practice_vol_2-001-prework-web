# your code goes here

def begins_with_r(array)
  new_array = []
  sorted_word = array.select {|word| word[0] == "r" }
  new_array << sorted_word
  if sorted_word == array
    return true
  else
    false
  end
end

def contain_a(array)
  array.select { |word| word.include?("a") }
end

def first_wa(array)
  array.find { |word| word[0..1] == "wa" }
end

def remove_non_strings(array)
  new_array = array.grep(String)
end

def count_elements(array)
  new_array = array.uniq
  for element in new_array
    element[:count] = array.count(element)
  end
  new_array 
end

def merge_data(arr1, arr2)
  arr1.collect do |name|
    name.merge(arr2[0].shift[1])
  end
end

def find_cool(cool)
  cool.select {|i| i.any? {|k,v| v == "cool"}}
end

def organize_schools(schools)
  organize_school = {}
  schools.each_pair do |school|
    organize_school[school[1][:location]] = Array.new if organize_school[school[1][:location]] == nil
    organize_school[school[1][:location]] << school[0]
    end
  organize_school
end


