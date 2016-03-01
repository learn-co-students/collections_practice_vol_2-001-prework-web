# ------- BEGINS WITH R -------
def begins_with_r(array)
  array.each do |item|
    return false if item[0].downcase != "r"
  end

  true
end

def begins_with_r(array)
  return false if array.any? { |item| item[0].downcase != "r" }
  true
end

# ------- CONTAIN A -------
def contain_a(array)
  modified_array = []

  array.each do |item|
    modified_array << item if item =~ /[a]/
  end

  modified_array
end

def contain_a(array)
  array.select { |item| item.include?("a") }
end

# ------- FIRST WA -------
def first_wa(array)
  array.each do |item|
    return item if item =~ /wa/ #Interesting that this also works for symbols
  end
end

def first_wa(array)
  array.find { |word| word.to_s.include?("wa") }
end

# ------- REMOVE NON-STRINGS -------
def remove_non_strings(array)
  modified_array = []

  array.each do |item|
    modified_array << item if item.class == String
  end

  modified_array
end

def remove_non_strings(array)
  array.delete_if { |item| item.class != String }
end

# ------- COUNT ELEMENTS -------
def count_elements(array)
  modified_array = array.uniq

  modified_array.each_with_index do |item, index|
    count = item_counter(item, array)

    modified_array[index].merge!({ :count => count })
  end
  
  modified_array
end

def item_counter(count_item, array)
  count = 0

  array.each do |item|
    count += 1 if item == count_item
  end

  count
end

# ------- MERGE DATA -------
def merge_data(keys, data)
  data_hash = hash_convert(data)
  modified_array = []

  keys.each do |key|
    modified_array << key.merge(data_hash[key[:first_name]])
  end

  modified_array  
end

def hash_convert(array)
  new_hash = {}

  array.each do |pair|
    new_hash.merge!(pair)
  end

  new_hash
end

# ------- FIND COOL -------
def find_cool(cool)
  modified_array = []

  cool.each do |hash|
    modified_array << hash if hash[:temperature] == "cool"
  end

  modified_array
end

# ------- ORGANIZE SCHOOLS -------
def organize_schools(schools)
  locations = find_locations(schools.values)
  modified_array = {}

  locations.each do |location|
    schools_in_location = find_schools_in_location(schools, location)
    modified_array.merge!({ location => schools_in_location })
  end

  modified_array
end

def find_locations(hash_array)
  locations = []

  hash_array.each do |pair|
    locations << pair.values
  end

  locations.uniq.flatten
end

def find_schools_in_location(schools, location)
  schools_in_location = []

  schools.each do |pair|
    school_location = pair[1][:location]
    schools_in_location << pair[0] if school_location == location
  end

  schools_in_location
end