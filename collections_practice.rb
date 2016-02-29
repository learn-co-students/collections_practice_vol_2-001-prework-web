# your code goes here
def begins_with_r(tools)
  counter = 0
  tools.each do |x|
    if x[0] == "r"
      counter += 1
      else
    end
  end
  if counter == tools.length
    return true
    else
    return false
  end
end

def contain_a(array)
  new = []
array.each do |x|
   if x.include?("a")
  new.push(x)
     else
   end
end
new
end

def first_wa(array)
  string_array = []
  array.each do |x|
    string_array.push(x.to_s)
  end
  string_array.each do |y|
    if y.include?("wa")
  return y
end
  end
end

def remove_non_strings(array)
  new = []
  array.each do |x|
    if x.class == String
      new.push(x)
    end
  end
new
end

def count_elements(array)
	new_array = []
	array.each do |x|
		new_array << x unless new_array.include?(x)
	end
	new_array.each do |x|
		arr = array.select{|value| x == value}
		x[:count] = arr.length
	end
	new_array
end

def merge_data(array1, array2)
  array1.each do |person|
    array2.each do |name|
      name[person[:first_name]].each do |key, value|
      person[key] = value
      end
    end
  end
  array1
end

def find_cool(array)
	new_array = []
		array.each do |section|
		section.each do |name, value|
		if section [name] == "cool"
			new_array << section
		end
		end
	end
	new_array
end


def organize_schools(hash)
hash_of_arrays = Hash.new
	hash.each do |item|
		hash_of_arrays[item[1][:location]] = [] unless hash_of_arrays.include?(item[1][:location])
	end
hash_of_arrays.each do |item|
	hash.each do |school|
		item[1].push school[0] if school[1][:location] == item[0]
	end
end
	return hash_of_arrays
end





