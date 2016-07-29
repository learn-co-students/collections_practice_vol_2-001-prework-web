require 'pry'
# your code goes here
def begins_with_r(array)
  array.select {|item| item.chr == 'r'}.size == array.size
end

def contain_a(array)
  array.select {|item| item.include? "a"}
end

def first_wa(array)
  array.find {|item| item[0] == "w" && item[1] == "a"}
end

def remove_non_strings(array)
  array.delete_if {|item| item.class != String}
end

def count_elements(array)
  unique_id_array = array.uniq
  count_array = unique_id_array.collect {|item| array.count(item)}
  i = 0
  intermediate_hash = Hash.new
  array_hashes = Array.new
  while i < unique_id_array.length do
    intermediate_hash = unique_id_array[i]
    intermediate_hash[:count] = count_array[i]
    array_hashes.push(intermediate_hash)
    i += 1
  end
  array_hashes
end

def merge_data(dkeys, data)
  array_of_keys = data[0].keys

  array_of_hashes = Array.new
  i = 0
  while i < array_of_keys.length do
    array_of_hashes << dkeys[i].merge(data[0][array_of_keys[i]])
    i += 1
  end
  array_of_hashes
end

def find_cool(array)
  array.select {|item| item[:temperature] == "cool"}
end

def organize_schools(hash)
  all_locations_array_of_hashes = Array.new
  hash.keys.each {|item| all_locations_array_of_hashes << hash["#{item}"]}
  unique_locations_array_of_hashes = all_locations_array_of_hashes.uniq
  unique_locations_stringvalues = Array.new
  unique_locations_array_of_hashes.each {|item| unique_locations_stringvalues << item[:location]}

  inverted_hash = Hash.new
  unique_locations_array_of_hashes.each {|hashitem| inverted_hash[hashitem] = hash.keys.select {|item| hash["#{item}"] == hashitem}}

  output_hash = Hash.new
  inverted_hash.keys.each {|item| output_hash["#{item[:location]}"] = inverted_hash[item]}
  output_hash
end
