require 'pry'

## 1.) #begins_with_r Return true if every element of the tools 
#array starts with an "r" and false otherwise.

def begins_with_r(array)
  array.all? { |word| word.start_with?("r") }
end

## 2.) #contain_a return all elements that contain the letter 'a'.

def contain_a(array)
  array.find_all { |word| word.include?("a") }
end

## 3.) #first_wa Return the first element that begins with the letters 'wa'.

def first_wa(array)
  array.find { |word| word.to_s.start_with?("wa") }
end

## 4.) #remove_non_strings remove anything that's not a string from an array.

def remove_non_strings(array)
  array.delete_if { |element| element.class != String }
end

## 5.) #count_elements count how many times something appears in an array.

# NOTE: Learn.co is asking us to work with an array of hashes but hashes have
# yet to be introduced in the curriculum (?!). Ask Glen how to solve this one
# w/ no knowlegde of hashes.

#input: [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
#output: [{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}]
#
#
#
def count_elements(array)
  results = {}
  array.each do |element|
    if results[element[:name]]
      results[element[:name]] += 1
    else
      results[element[:name]] = 1
    end
  end
  results.to_a.map { |x| {:name=>x[0], :count=>x[1]} }
end

## 6.) #merge_data combines two nested data structures into one.

#keys: [{:first_name=>"blake"}, {:first_name=>"ashley"}]
#data: [{"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"}, 
#       "ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}}]
#merged result: 
# [{:first_name=>"blake", :awesomeness=>10, :height=>"74", :last_name=>"johnson"}, 
#  {:first_name=>"ashley", :awesomeness=>9, :height=>60, :last_name=>"dubs"}]

def merge_data(keys, data)
  merged_data = [keys[0].merge(data[0]["blake"]), 
  keys[1].merge(data[0]["ashley"])]
end

## 7.) #find_cool find all cool hashes.

def find_cool(list)
  new_list = []
  list.each do |hash|
    hash.each do |key, value|
      if value == "cool"
        new_list << hash
      end
    end
  end
  new_list
end

## 8.) #organize_schools organizes the schools by location.

def organize_schools(list)
  organized_list = {}
  list.each do |key, value|
    if organized_list[value[:location]]
      organized_list[value[:location]] << key
    else  
      organized_list[value[:location]] = [key]
    end 
  end
  p organized_list
end