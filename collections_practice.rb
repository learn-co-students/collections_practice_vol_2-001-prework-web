#All arguments take in an array

# your code goes here

def begins_with_r(array)
  r_array = []
  array.each do |tool|
    if tool[0] == "r"
      r_array << tool
    end
  end
  if r_array.length == array.length
    return true
  else
    return false
  end
end

def contain_a(array)
  array.select {|word| word.include? "a"}
end

def first_wa(array)
  array.find {|word| word[0..1] == "wa"}
end

def remove_non_strings(array)
  array.delete_if {|x| x.class != String}
end

def count_elements(array)
  new_array = []
  array.each {|item| new_array << item unless new_array.include?(item)}
  
  new_array.each do |item| 
    arr = array.select{|x| item == x}
    item[:count] = arr.length
  end
  new_array
end

def merge_data(keys, data)
  keys.each do |key|
    data.each do |person|
      if person.has_key?(key[:first_name])
        key.merge!(person[key[:first_name]])
      end
    end
  end
  keys
end

def find_cool (x)
  x.delete_if do |element|
    element[:temperature] != "cool"
  end
end

def organize_schools(schools)
  sorted_schools = {} 

  schools.each do |school, location|
    location.each do |key, city|
      if sorted_schools.has_key?(city)
        sorted_schools[city] << school
      else
        sorted_schools[city] = [school]
      end
    end
  end
  sorted_schools
end
