# your code goes here
def begins_with_r(array)

  (array[0][0] && array[1][0] && array[2][0])  == "r" ? true : false

end

def contain_a(array)
  result = []
  array.each{|i|

    if i.chars.include?("a")
      result << i
    end

    }
  result
end

def first_wa(array)

  array.find{|i| i[0] == "w" && i[1] == "a"}

end

def remove_non_strings(array)
  result = []
  array.each{|i|

   if i.is_a?(String)
     result << i

   end

    }
  result

end

def count_elements(my_arr)
	new_array = []
	my_arr.each { |item| new_array << item unless new_array.include?(item)}
	new_array.each do |item|
		arr = my_arr.select{|thing| item == thing}
		item[:count] = arr.length
	end
	 new_array
end

def merge_data(arr2, arr1)

	#loop through array2 to add to each one
	#loop through array1 to add each element to array2
	
	arr2.each do |person| #loops names with names
		#puts person.to_s + " ===" 
		arr1.each do |annoying_structure| #loops first to get attributes
			annoying_structure[person[:first_name]].each do |key, value|
				person[key] = value
			end
		end
	end
	return arr2
	#arr1.each |key, value| 
end

def find_cool(my_arr)
	
	new_array = my_arr.select do |element|
		element[:temperature] == "cool"
	end
	return new_array
end

def organize_schools(schools)
	organized_schools = Hash.new
	schools.each { |item| organized_schools[item[1][:location]] = [] unless organized_schools.include?(item[1][:location])}
	organized_schools.each do |item|
		#puts item[0].is_a? Symbol
		
		#item[0] = string with location
		#item[1] = empty array
		arr = schools.each do |school| 
			#school[0] is a string with the name of the school
			item[1].push school[0] if school[1][:location] == item[0]
		end
	end
	return organized_schools
end

schools = [["Hack Reactor", {:location=>"SF"}], ["dev boot camp", {:location=>"SF"}], ["dev boot camp chicago", {:location=>"Chicago"}], ["flatiron school", {:location=>"NYC"}], ["flatiron school bk", {:location=>"NYC"}], ["general assembly", {:location=>"NYC"}]]

puts organize_schools(schools)
