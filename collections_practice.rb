# your code goes here
def begins_with_r(array)
  new_array =  array.select {|word| word.start_with?("r")}
  array == new_array
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.find {|word| word.start_with?("wa")}
end

def remove_non_strings(array)
  array.select {|item| item.class == String}
end

def count_elements(array)
  c_array = array.uniq.map {|item| {:name => item, :count => array.count(item)}
  c_array
end

def merge_data(keys, data)
  merged_data = []
  data.each do |name, hash|
    keys.each do |first_name|
      if name == first_name
        hash[:first_name] = first_name
      end
    end
    merged_data << hash
  end
  merged_data
end

def find_cool(cool)
	cool_hashes = []
  cool.each do |hash|
    hash.each do |key, value|
      if value == "cool"
      	cool_hashes << hash
      end
    end
  end
  cool_hashes
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, info|
    info.each do |key, location|
    	if not organized_schools.keys.include?(location)
    		organized_schools[location] = []
      end
      organized_schools[location] << name
    end
  end
  organized_schools
end
