# your code goes here

require "pry"

def begins_with_r(array)
	count=0
	array.each do |word|
		if word.start_with?("r")
			count+=1
		end 
	end 
	
	if count==array.length
		return true 
	end 
		return false 
end 


def contain_a(array)
	array.select do |word|
		word.split("").include?("a")
	end 
end 

def first_wa(array)
	array.find do |word|
		word[0..1]=="wa"
	end 
end 

def remove_non_strings(array)
	array.delete_if do |element|
		element.class!=String
	end 
	
end 

def count_elements(array)
	result =[]
	array.each do |name|
		name.each do |key, value|
			result <<  {:name => value, :count => array.count(name)}
	 	end 
	end 
	result.uniq
end 


def merge_data(keys, data)
	result=[]
	keys.each do |key_v|
		key_v.each do |key, name|
			data.each do |name_key|
				name_key.each do |name_value, name_key|
					if name_value==name 
						 name_key[key] = name
						result << name_key
					end
				end 
			end
		 
		end
	end  
	result 
end 

def find_cool(array)
	result =[]
	array.each do |hash|
		hash.each do |values|
			values.each do |key, value|
				if key=="cool"
					result << hash
				end 
			end 
		end 
	end 
	result 
end 

def organize_schools(hash)
	result ={}
	hash.each do |school, value|
		value.each do |location, city|
			if result.has_key?(city)==false 
				result[city] = [school]
			else 
				result[city] << school 
			end 
		end 
	end 
	result 
end 




