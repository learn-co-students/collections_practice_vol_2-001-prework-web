# your code goes here
require 'pry'

def begins_with_r(array)
    array.all? { |word|
       word.start_with?("r")
    }
end

def contain_a(array)
	array.find_all{ |word|
      word.include?("a")
	}
end

def first_wa(array)
	array.find{ |word|
     word[0] == "w" && word[1] == "a"       
	}
end

def remove_non_strings(array)
	array.select{ |item|
       item.kind_of? String
	}	
end

def count_elements(array)

	hash_from_array = Hash.new 0
	array.each{ |element|
		element.each{|key, value|
		 hash_from_array[value] += 1
		}
	}
    
    array_with_hash = []
    hash_from_array.each{|key, value|
       name_occurs = Hash.new 0
       name_occurs[:name] = key
       name_occurs[:count] = value
       array_with_hash << name_occurs
    }

    array_with_hash
end

def merge_data(keys_hash, data_hash)
   i = 0
   merged_array = []
   while i <= data_hash.length
     current_data = data_hash[0].values[i]
   
     current_data[keys_hash[i].keys[0]] = keys_hash[i].values[0]
     merged_array << current_data

     i += 1
   end
   merged_array
end


def find_cool(data)
   cool_array = []
   data.each{|hash|
    if hash.has_value?("cool")
      cool_array << hash
    end
   }
   cool_array
end

def organize_schools(data)
  schools_by_location = {}
  data.each{|school, location|
    if schools_by_location.keys.include?(location[:location])
     schools_by_location[location[:location]] << school
    else
     schools_by_location[location[:location]] = [school]
    end 
  }
  schools_by_location
end
