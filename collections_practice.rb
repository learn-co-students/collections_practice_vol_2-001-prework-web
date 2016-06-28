# your code goes here
def begins_with_r(array)
  new_array =  array.select {|word| word.start_with?("r")}
  array == new_array
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.find {|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.select {|item| item.class == String}
end

def count_elements(array)
  c_array = array.uniq.map {|item| {:name => item[:name], :count => array.count(item)}}
  c_array
end

def merge_data(keys, data)
  merged_data = []
  keys.each do |keys_hash|
    keys_hash.each do |keys_key, keys_value|
      data.each do |data_hash|
        data_hash.each do |data_key, profile|
          if keys_value == data_key
            data_hash[data_key][keys_key] = keys_value
            merged_data << profile
          end
        end
      end
    end
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
