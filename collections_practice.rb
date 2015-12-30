def begins_with_r(array)
  value = false
  array.each do |item|
    if item.start_with?("r")
      value = true
    else
      value = false
    end
  end
  value
end

def contain_a(array)
  print_me = []
  array.each do |item|
    if item.include?("a") == true
      print_me << item
    end
  end
  print_me
end

def first_wa(array)
  strings = []
  selected = []

  array.each do |i|
    strings << i.to_s
  end

  strings.each do |i|
    if i.start_with?("wa")
      selected << i
    end
  end
  selected[0]
end

def remove_non_strings(array)
  strings = []
  array.each do |item|
    if item.is_a? String
      strings << item
    end
  end
  strings
end

def count_elements(array)
  new_array = Array.new
  array.uniq.select do |hash|
    hash[:count] = array.count(hash)
    new_array << hash
  end
  new_array
end

def merge_data(keys, data)
  new_array = []
  i = 0
  data.each do |hash|
    hash.each do |name, value_hash|
      new_array << value_hash.merge(keys[i])
      i += 1
    end
  end
  new_array
end

def find_cool(hash)
  hash.select do |person, temperature|
    person[:temperature] == "cool"
  end
end

def organize_schools(data) #Did not understand :(
  location_hash = {}

  data.values.each do |value_hash|
    location = value_hash.values.first
    location_hash[location] = []
  end

  location_hash.each do |k, v|
    data.each do |key, value|
      if k == value[:location]
        location_hash[k] << key
      end
    end
  end

  location_hash
end
