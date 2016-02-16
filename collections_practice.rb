def begins_with_r(array)
	array.all? { |e| e.start_with?("r")  }
end

def contain_a(array)
	array.select{|e| e.include?("a")}
end

def first_wa(array)
	array.find {|e| e.to_s.start_with?("wa")}
end

def remove_non_strings(array)
	array.delete_if {|e| e.class != String}
end

def count_elements(array)
	result = []
	count = Hash.new(0)
	array.each do |element|
		element.each_pair do |name, val|  
			count[val] += 1
		end
	end
	count.each_pair do |name, count|
		result << {:name => name, :count => count}
	end
	result
end

def merge_data(keys, data)
	result = []
	keys.each do |key|
		key.each_key do |name|
			data.each do |data|
				result << key.merge(data[key[name]])
			end
		end
	end
	result
end

def find_cool(cool)
	cool_hashes = []
	cool.each do |element|
		if element[:temperature] == "cool"
			cool_hashes << element
		end
	end
	cool_hashes
end

def organize_schools(schools)
	organized_schools = Hash.new([])
	schools.each do |school, location|
		organized_schools[location[:location]] += [school] 
	end
	organized_schools
end