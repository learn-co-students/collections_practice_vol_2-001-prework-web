require 'pry'

def begins_with_r(array)
  array.all? do |word|
    word.start_with?("r")
  end
end

def contain_a(array)
  result = []
  array.collect do |word|
    if word.include? ("a")
    result << word
    end
  end
  result
end

def first_wa(array)
  array.find do |word|
    word.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |word|
    word.class != String
  end
end

def count_elements(array)
   new_array = []
    array.uniq.map do |data|
        data[:count] = array.count(data)
        new_array << data
    end
    new_array
end

def merge_data(keys, data)
  merged_data = []
  keys.each do |info|
      merged_data << info.merge(data[0][info[:first_name]])
  end
  merged_data
end

def find_cool(array)
  array.each do |info|
    if info[:temperature] == "cool"
      return [info]
    end
  end
end

def organize_schools(hash)
  organized = {}
  hash.each do |school, location|
    if organized.keys.include?(location[:location])
      organized[location[:location]] << school
    else
      organized[location[:location]] = [school]
    end
  end
  organized
end
