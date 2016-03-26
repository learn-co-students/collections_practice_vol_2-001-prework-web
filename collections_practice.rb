require 'pry'

def begins_with_r(array)
  array.each do |word|
    return false if word[0] != "r"
  end
  true
end

def contain_a(array)
  array.collect { |word| word.include?("a") ? word : nil}.compact
end

def first_wa(array)
  array.find { |word| word[0..1] == "wa"}
end

def remove_non_strings(array)
  array.delete_if {|element| !element.is_a?(String)}
end

def count_elements(array)
  array.map do |hash|
    hash.merge({count: array.count(hash)})
  end.uniq!
end

def merge_data(keys, data)
  keys.map do |key|
    new_hash = nil
    data.each do |data_hash|
      data_hash.each do |name, attributes|
        if name == key[:first_name]
          new_hash = key.merge(attributes)
        end
      end
    end
    new_hash
  end.compact
end

def find_cool(cool)
  cool.select {|person| person[:temperature] == "cool"}
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school_name, location_hash|
    location = location_hash[:location]
    if organized_schools.has_key?(location)
      organized_schools[location] << school_name
    else
      organized_schools[location] = [school_name]
    end
  end
  organized_schools
end