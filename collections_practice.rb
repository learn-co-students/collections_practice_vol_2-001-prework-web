def begins_with_r (array)
   array.all? do |word|
      word[0] == "r"
   end
end

def contain_a (array)
   array.select do |word|
      word.include?("a")
   end
end

def first_wa (array)
   array.find do |word|
      if word.is_a?(String)
         word.start_with?("wa")
      end
   end
end

def remove_non_strings (array)
   array.find_all do |element|
      element.is_a?(String)
   end
end

def count_elements (array)
   unique_array = array.uniq

   unique_array.collect do |element|
      element[:count] = array.count(element)
   end

   unique_array
end

def merge_data (keys, data)
   keys.map do |key|
      key.merge(data[0][key[:first_name]])
   end
end

def find_cool (data)
   data.select do |element|
      element[:temperature] == "cool"
   end
end

def organize_schools (schools)
   cities = schools.values.uniq.map { |element| element[:location] }
   school_locations = cities.map do |city|
      schools.select { |school, location| location[:location] == city }.keys
   end
   cities.zip(school_locations).to_h
end