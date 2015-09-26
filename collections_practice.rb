require 'pry'

def begins_with_r(array)
  array.each do |word|
    if word[0] != 'r'
      return false
    end
  end
  true
end

def contain_a(array)
  array.select{|word| word.include?('a')}
end

def first_wa(array)
  array.find{|word| word[0..1] == 'wa'}
end

def remove_non_strings(array)
  array.delete_if{|word| !word.is_a?(String)}
end

def count_elements(array)
  quantity = []
  array.each do |element|
    quantity << array.count(element)
  end

  count = 0
  array.each do |element|
    element[:count] = quantity[count]
    count += 1
  end

  array.uniq
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

def find_cool(hash)
  hash.delete_if do |element|
    element[:temperature] != "cool"
  end
end

def organize_schools(schools)
  organized_schools = {}

  schools.each do |school, location|
    location.each do |l_key, city|
      if organized_schools.has_key?(city)
        organized_schools[city] << school
      else
        organized_schools[city] = [school]
      end
    end
  end
  organized_schools
end