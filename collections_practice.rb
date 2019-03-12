require 'pry'

def begins_with_r(array)
  array.all? {|x| x.start_with?("r")}
end

def contain_a(array)
  array.find_all {|x| x.include?("a")}
end

def first_wa(array)
  array.find {|x| x.to_s.start_with?("wa")}
  
end

def remove_non_strings(array)
  array.delete_if {|x| !(x.class == String)}  
end

def count_elements(array)
  count = Hash.new(0)
  array.each {|element| count[element] += 1}
  final_array = []
  count.each do |element, occurence|
    element.each {|key, value| final_array << {key => value, :count => occurence} }
  end
  final_array
end

def merge_data(keys, data)
merged_array = []
keys.each {|info| merged_array << info.merge(data[0][info.values[0]])}
merged_array
end


def find_cool(array)
  array.select {|element| element.has_value?("cool")} 
end

def organize_schools(hash)
  organized_by_location = {}
  hash.values.each {|location| organized_by_location[location.values[0]] = []}
  hash.each {|school, location| organized_by_location[location.values[0]] << school}
  organized_by_location
end