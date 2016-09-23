def begins_with_r(array)
  i = 0
  while i < array.length
    if array[i][0] != "r"
      return false
    end
    i += 1
  end
  true
end


def contain_a(array)
  i = 0
  contains_a = []
  while i < array.length
    if array[i].include? "a"
      contains_a << array[i]
    end
    i += 1
  end
  contains_a
end


def first_wa(array)
  array.find do |word|
    word[0] == "w" && word[1] == "a"
  end
end


def remove_non_strings(array)
  array.delete_if { |item| item.class != String }
end


def count_elements(array)
  i = 0
  new_array = []
  while i < array.length
    if array.include?(array[i])
      new_hash = {}
      new_hash[array[i].keys[0]] = array[i].values[0]
      new_hash[:count] = (array.select { |item| item == array[i] }).length
      new_array << new_hash
    end
    i += 1
  end
  new_array.uniq
end

def merge_data(keys, data)
  array = []
  new_hash = {}
  keys.each do |the_names_hashes|
    the_names_hashes.each do |name_key, name_value|
      new_hash[name_key] = name_value
      data.each do |data_hashes|
        data_hashes.each do |data_key, data_value|
          if data_key == name_value
            data_value.each do |attribute_key, attribute_value|
              new_hash[attribute_key] = attribute_value
            end
            array << new_hash
            new_hash = {}
          end
        end
      end
    end
  end
  array
end

def find_cool(cool)
  array = []
  cool.each do |hash|
    hash.each do |attribute_key, attribute_value|
      if attribute_value == "cool"
        array << hash
      end
    end
  end
  array
end

def organize_schools(schools)
  school_hash = {}
  locations = schools.values.uniq!
  locations.each do |location_hash|
    location_hash.each do |key, value|
      school_hash[value] = []
    end
  end

  schools.each do |school, school_location_hash|
    school_location_hash.each do |location_key, location_value|
      school_hash.each do |location, array|
        if location_value == location
          school_hash[location] << school
        end
      end
    end
  end
  school_hash
end
