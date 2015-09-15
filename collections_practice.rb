require 'pry'

def begins_with_r(array)
  counter = 0
  array.each do |word|
    letters = word.split(//)
    if letters[0] == "r"
      counter += 1
    end
  end
  if counter == array.length
    return true
  else
    return false
  end
end

def contain_a(array)
  array.select do |word|
    letters = word.split(//)
    letters.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    letters = word.to_s.split(//)
    letters[0] == "w" && letters[1] == "a"
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    #element.class != String 
    !element.is_a? String
  end
end

def count_elements(array)
  array.uniq.each do |name|
    name[:count] = array.count(name)
  end
end

def merge_data(first,second)
  counter = 0
  merged_hashes = []
  while counter < first.size
    merged_hashes << first[counter].merge(second[0].values[counter])
    counter += 1
  end
  merged_hashes
end

def find_cool(array)
  array.select do |hash|
    hash.values.include?("cool")
  end
end

def organize_schools(schools) 
  organized_schools = {}
  schools.each do |school, location_hash|
    if organized_schools.key?(location_hash.values[0]) == false     
      organized_schools[location_hash.values[0]] = [school]
    else
      organized_schools[location_hash.values[0]] << school
    end
  end
  organized_schools
end
