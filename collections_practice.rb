# your code goes here
def begins_with_r(collection)
  all_r = true
  collection.each do |item|
    if !(item.start_with?("r", "R"))
      all_r = false
    end
  end
  all_r
end

def contain_a(collection)
  a_new_collection = []

  collection.each do |item|
    if item.include?("a")
      a_new_collection << item
    end
  end
  a_new_collection
end

def first_wa(collection)
  collection.find do |item|
    if item.class == String
      item.start_with?("wa")
    end
  end
end

def remove_non_strings(collection)
  collection.delete_if do |item|
    item.class != String
  end
end

def count_elements(array)
  index_counter = 0
  new_array = array.uniq

  array.each do |item|
    new_array[index_counter][:count] = array.count(item)
    if index_counter < new_array.size - 1
        index_counter += 1
    end
  end
  new_array
end

def merge_data(keys, data)
  return_array = []
  array_of_first_names = []
  array_of_symbols = []
  array_of_last_names = []
  temporary_hash = {}


  keys.each do |hash_names|
    hash_names.each_value do |name|
      array_of_first_names << name
    end
  end

  array_of_first_names.each do |name|
    temporary_hash = {}
    temporary_hash[:first_name] = name
    data.each do |hash_inside|
      hash_of_values = hash_inside[name]
      hash_of_values.each do |attribute, value|
        temporary_hash[attribute] = value
      end
      return_array << temporary_hash
    end
  end



  return_array
end


def find_cool(array_of_hashes)
  return_array = []
  array_of_hashes.each do |item|
    item.each do |key, value|
      if value == "cool"
        return_array << item
      end
    end
  end
  return_array
end

def organize_schools(original_hash)
  return_hash = {}
  array_of_cities = []
  array_of_schools = []

  original_hash.each do |name, location_hash|
    location_hash.each do |sym, city|
      if !(array_of_cities.include?(city))
         array_of_cities << city
      end
    end
  end

  array_of_cities.uniq!

  array_of_cities.each do |city|
    schools_by_city = []
    original_hash.each do |name, location_hash|
      location_hash.each do |sym, location|
        if city == location
          schools_by_city << name
        end
      end
    end
    return_hash[city] = schools_by_city
  end

  return_hash
end






















