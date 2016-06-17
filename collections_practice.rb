def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.find {|word| word.class == String && word.start_with?("wa") }
end

def remove_non_strings(array)
  array.select {|word| word.class == String}
end

def count_elements(array)
  array.map {|element| element.merge!(count: array.count(element))}
  array.uniq {|element| element.first}
end

def merge_data(array1, array2)
  new_array = []
  array2.map {|hash| hash.map {|key, value| new_array << value}}
  array1.map.with_index {|hash, i| array1[i].merge(new_array[i])}
end

def find_cool(array)
  cool_values = []
  array.map {|hash| hash.map {|*attrs| attrs.map {|key, value| cool_values << hash if value == "cool"}}}
  cool_values
end

def organize_schools(schools)
  new_hash = {}
  city_array = []
  schools.each {|school, place| place.each {|location, city| city_array << city if city_array.include?(city) == false}}

  city_array.map.with_index {|city, i|
    school_array = []
    schools.map {|school, place| school_array << school if place.value?(city_array[i])}
  new_hash[city] = school_array}
  new_hash
end
