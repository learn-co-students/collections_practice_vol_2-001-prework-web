def begins_with_r(tools)
  tools.all? do |tool|
    tool.downcase!
    tool[0] == 'r'
  end
end

def contain_a(array)
  new_array = []
  array.each do |word|
    if word.include?("a")
      new_array.push(word)
    end
  end
  return new_array
end

def first_wa(array)
  array.each do |word|
    if word[0] == "w" && word[1] == "a"
      return word
    end
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |item|
    if item.is_a? String
      new_array.push(item)
    end
    return new_array
  end
end


#return an array of hash elements
def count_elements(array)
  new_array = []

  array.each do |original_array_element|

  #now inside the array looking at each indv hash
  	if new_array.empty?

  		first_new_element = {name: original_array_element[:name], count: 1}
  		new_array.push(first_new_element)

  	else
      name_found = false
  		new_array.each do |new_hash_item|
  			#binding.pry
  			if new_hash_item.has_value?(original_array_element[:name])
  				new_hash_item[:count] += 1
          name_found = true
  			end
      end
      if name_found == false
        new_element = {name: original_array_element[:name], count: 1}
        new_array.push(new_element)
      end
  	end
  end
  return new_array
end


def merge_data(keys, data)
	new_array = []

	keys.each do |first_name_array| #:first_name => blake

		first_name_array.each do | first_name_key, first_name_value |

			data.each do |data_array|

				data_array.each do |data_key, data_value_hash|

					if first_name_value == data_key
						new_hash = {first_name_key => first_name_value}
						data_value_hash.each do |k, v|
							new_hash[k] = v
						end
						new_array.push(new_hash)
					end
				end
			end
		end
	end
	return new_array
end

def find_cool(cool)
  #return hash names of people who have cool temperatures [{:name => "blake",:temperature => "cool"}]
  new_array = []
  cool.each do |coolish_hash|

    coolish_hash.each do |k, v|
      if coolish_hash.has_value?(v)
        new_array_item = coolish_hash
      end

      if v == "cool"
        new_array.push(new_array_item)
      end
    end
  end
  return new_array
end


def organize_schools(schools)
organized_schools = {}


#iterate through each item in the original hash.
schools.each do |orig_school_name, orig_location_hash|

    if organized_schools.empty?
      city_string = orig_location_hash.values[0]
      school_name_array = [orig_school_name]
      organized_schools[city_string] = school_name_array

    else

      city_string = orig_location_hash.values[0]

      if organized_schools.key?(city_string)
        organized_schools[city_string].push(orig_school_name)
      else
        school_name_array = [orig_school_name]
        organized_schools[city_string] = school_name_array
      end

    end
  end

  return organized_schools
end
