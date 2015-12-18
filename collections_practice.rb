# your code goes here

def begins_with_r(collection)
  collection.all? { |i| i[0] == 'r' }
end

def contain_a(collection)
  collection.select { |i| i.include? 'a' }
end

def first_wa(collection)
  collection.find { |i| i[0..1] == 'wa' }
end

def remove_non_strings(collection)
  collection.select { |i| i.is_a? String }
end

def count_elements(collection)
  # [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
  # gets rid of duplicates in array
  unique_array = collection.uniq

  # maps over each item in the unique_array and adds :count to each object
  unique_array.map do |element|
    element[:count] = collection.count(element)
  end
  unique_array
end

def merge_data(keys, data)
  keys.map do |key|
    key.merge(data[0][key[:first_name]])
  end
end

def find_cool(collection)
  collection.select do |element|
    element[:temperature] == "cool"
  end
end

def organize_schools(schools)
  cities = schools.values.uniq.map {|city| city[:location]}

  new_obj = {}
  cities.each do |city|
    schools_array = schools.select {|key, value| value[:location] == city}.map {|key, value| key}
    new_obj[city] = schools_array
  end
  new_obj
end