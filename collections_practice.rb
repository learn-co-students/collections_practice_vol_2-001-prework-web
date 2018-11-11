def begins_with_r(array)
  if array.all? { |x| x.start_with? "r"}
    return true
  else
    return false
  end
end

def contain_a(array)
  array.select { |x| x.include? "a"}
end

def first_wa(array)
  string_array = []
  array.each do |x|
    if x.is_a?(String)
      if x.start_with? "wa"
        string_array << x
      end
    end
  end
  string_array[0]
end

def remove_non_strings(array)
  string_array = []
  array.each do |x|
    if x.is_a?(String)
      string_array << x
    end
  end
  string_array
end

def count_elements(array)
  hash = {}
  element_tracker = []
  new_array = []
  array.each do |element|
    element.each do |key, value|
      if element_tracker.include?(element) == false
        element_tracker << element
        hash[key] = value
        hash[:count] = array.count(element)
        new_array << hash
        hash = {}
      end
    end
  end
  new_array
end

def merge_data(keys, data)
  array_one = []
  array_two = []
  keys.each do |hash|
    array_one << hash
  end
  data.each do |hashes|
    hashes.each do |key, merge_value|
      array_two << merge_value
    end
  end
  merged_array = array_one.map.with_index { |x, i| x.merge(array_two[i]) }
end

def find_cool(hashes)
  cool_hashes = []
  hashes.each do |hash|
    hash.each do |key, value|
      if value == "cool"
        cool_hashes << hash
      end
    end
  end
  cool_hashes
end

def organize_schools(schools)
  new_hash = {}
  array = []
  schools.each do |name, hash|
    hash.each do |location_key, location|
      if new_hash[location].nil?
        array << name
        new_hash[location] = array
        array = []
      elsif new_hash[location]
        new_hash[location] << name
        array = []
      end
    end
  end
  new_hash
end
