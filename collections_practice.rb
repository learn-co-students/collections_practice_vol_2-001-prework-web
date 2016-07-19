def begins_with_r(array)
  result = true
  array.each do |element|
    if !element.start_with?('r')
      result = false
    end
  end
  return result
end

def contain_a(array)
  array.select do |element|
    element.include?('a')
  end
end

def remove_non_strings(array)
  array.delete_if do |item|
    !item.is_a? String
  end
end


def first_wa(array)
  array.any? do |el|
   el.class == Symbol ? symb = el.to_s : symb = el
    if symb.start_with?("wa")
      return el
    end
  end
end

def find_cool(obj)
	obj.select do |person|
		person[:temperature] == "cool"
	end
end

def count_elements(array)
new_arr = []
  array.each do |person|
  	person[:count] = 1
     if new_arr.include?(person) == false
     	new_arr << person
     else
     	new_arr.each do |existing_person|
     	existing_person[:count] += 1
     	end
     end
	end
	return new_arr
end

def merge_data(keys,data)
	merged = []
	keys.each do |key_first|
	data.each do |person|
		person.each do |k,v|
	if key_first[:first_name] == k
		v[:first_name] = k
	merged << v
	 end
	end
	end
	end
	merged
end
def organize_schools(school)
	by_location = {}
	school.each do |schools,loca|
		loca.each do |prop,city|
			by_location[city] = []
		end
	end
	school.each do |schools,loca|
		loca.each do |prop,city|
			by_location[city] << schools
		end
	end
	return by_location
end
