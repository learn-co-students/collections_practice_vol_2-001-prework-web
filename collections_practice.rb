# your code goes here
def begins_with_r(array)
  array.all? do |x|
    x.start_with?("r")
  end
end

def contain_a(array)
  array.select do |x|
    x.include?("a")
  end
end

def first_wa(array)
  array.detect do |x|
    x.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.select do |x|
    x.is_a? String
  end
end

def count_elements(array)
  array.uniq.each do |element|
    element[:count] = array.count(element)
    element
  end
end

def merge_data(keys, data)
  merged_data = []
  keys.each do |keys_hash|
    data.each do |data_hash|
      data_hash.each do |data_hash_key, data_hash_value|
        if keys_hash.has_value?(data_hash_key)
          merged_data << keys_hash.merge(data_hash_value)
        end
      end
    end
  end
  merged_data
end

def find_cool(array)
  cool = []
  array.each do |element|
    if element.has_value?("cool")
       cool << element
    end
    end
  cool
end

def organize_schools(school_collection)
  organized_schools = {}
  school_collection.each do |school, location_hash|
    location_hash.each do |location, value|
      organized_schools[value] = []
    end
  end
  organized_schools.each do |location, schools|
    school_collection.each do |school, location_hash|
      location_hash.each do |key, value|
        if value == location
          schools << school
        end
      end
    end
  end
  organized_schools
end