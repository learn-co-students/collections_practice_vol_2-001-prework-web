# your code goes here


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
	array.each do |word|
		#if result.has_value?(word)==false 
			result << {:name => word, :count => array.count(word)}
		#end 
	end 
	result 
end 


def merge_data(keys, data)
	keys.merge(data)

end 