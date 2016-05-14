require 'pry'

def begins_with_r(array)
	array.all? { |word| word[0] == 'r' }
end


def contain_a(array)
	array.select { |word| word.split('').include?('a') }
end


def first_wa(array)
	array.find { |word| word.slice(0,2) == 'wa'}
end


def remove_non_strings(array)
	array.delete_if {|element| element.class != String}
end


def count_elements(array)
	new_array = []
	new_hash = {}
	new_hash.default = 0	# sets default value to 0 for each key (for += 1)

	array.each { |name| new_hash[name[:name]] += 1	}
	new_hash.each { |name, count| new_array << {:name => name, :count => count} }
	new_array
end


def merge_data(keys, data)
	new_array = []
	data_hash = data[0]	#allows access to key/value pairs stored within data hash

	keys.each do |key|
		new_hash = {:first_name => key[:first_name]}
		new_hash.merge!(data_hash[key[:first_name]])	
		new_array << new_hash
	end

	new_array
end


def find_cool(data)
	new_array = []
	data.each { |hash| new_array << hash if hash[:temperature] == "cool" }
	new_array
end


def organize_schools(data)	
	new_hash = {}

	data.each do |school, city|		
		if new_hash.has_key?(city[:location])
				new_hash[city[:location]] << school
			else
				new_hash[city[:location]] = [school]
		end
	end		

	new_hash
end

     

