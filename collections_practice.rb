require 'pry'

def begins_with_r(array)
  array.each do |item|
    if item.chars.first != "r"
      return false
    end
  end
  return true
end

def contain_a(array)
  newarray = []
  array.select do |item|
    if item.include?("a") == true
      newarray << item
    end
  end
end

def first_wa(array)
  array.find do |item|
    if (item[0] == "w" ) && (item[1] == "a")
      return item
    end
  end
end

def remove_non_strings(array)
  array.keep_if do |item|
    item.class == String
  end
end

def count_elements(array)
  newarray = []
  blake_hash = {
    :name => "blake",
    :count => 0,
  }
  ashley_hash = {
    :name => "ashley",
    :count => 0
  }
  array.count do |item|
    if item[:name] == "blake"
      blake_hash[:count] += 1
    else
      ashley_hash[:count] += 1
    end
  end
  newarray << blake_hash
  newarray << ashley_hash
  return newarray
end

def merge_data(keys, data)
  merged_data = [] #our array to store the data
  data.each do |item|
    item.each do |key, value|
      merged_data << value #add each key/value pair from the data hash to the new array
    end
  end
  keys.each_with_index do |item, index|
    item.each do |key, value|
      merged_data[index][key] = value #use the index of the array, create a key and give it a value
    end
  end
  merged_data
end

def find_cool(array)
  newarray = []
  array.each do |element|
    element.select do |key, value|
      if value == "cool"
        newarray << element
        return newarray
      end
    end
  end
end

def organize_schools(hash)
  newhash = {}
  hash.each do |school, location|
    location.each do |location2, value|
      newhash[value] = [] #this creates the new hash, with locations as keys and arrays as values. Don't add the value here otherwise it will overwrite the existing value
    end
  end
  hash.each do |school, location|
    location.each do |location2, value|
      if newhash.has_key?(value) #if our new hash has the location as a key, add the school name to its array
        newhash[value] << school
      end
    end
  end
  newhash #return the hash
end





