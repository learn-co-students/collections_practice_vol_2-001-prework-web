# your code goes here
def begins_with_r(collection)
  collection.all? {|tool| tool[0] == 'r' }
end

def contain_a(collection)
  collection.select {|word| word.include?('a')}
end

def first_wa(collection)
  collection.each {|word| return word if word[0..1] == "wa"}
end

def remove_non_strings(collection)
  collection.select {|word| word.is_a?(String)}
end

def count_elements(collection) 
  counted_objects = [] 
  collection.each do |element|
    element[:count] = collection.count(element)
    counted_objects << element
    collection.delete(element)
  end
  counted_objects
end

def merge_data(keys, data)
  new_array = []
  keys.each do |key|
    data.each do |info|
      new_array << key.merge!(info[key.values[0]])
    end
  end
  new_array
end

def find_cool(cool)
  answer = []
  cool.each {|hash| answer << hash if hash.values.include?("cool") }
  answer
end

def organize_schools(schools)
  organized_schools = Hash.new { |key, value| key[value] = [] }
  schools.each {|school| organized_schools[school[1].values[0]] << school[0] }
  organized_schools
end