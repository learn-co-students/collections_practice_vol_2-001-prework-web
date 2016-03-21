# your code goes here

def begins_with_r(tools)
  tool_checker = []
  tools.each do |tool|
    if tool.chr == "r"
    tool_checker << tool
      if tool_checker.length == tools.length
        return true
      end
    else
      return false
    end
  end
end

def contain_a(collection)
  collection.select {|element|
    element.include?('a')
  }
end

def first_wa(array)
  array.find do |element|
    if element.is_a? String
      element.start_with?('wa')
    end    
  end
end

def remove_non_strings(array)
  array.select do |element|
    element.class == String
  end
end

def count_elements(array)

  array.uniq.each_with_object([]) { |unique_ele, unique_array_with_count| 
    occurrences = array.select do |element|
      element == unique_ele
    end
    unique_ele[:count] = occurrences.length
    unique_array_with_count << unique_ele
  }
end

def merge_data(keys, data)
  keys.each_with_object([]) {|first_name_keys, merged_data|
    array_strings_student_first_name= first_name_keys.values
    array_strings_student_first_name.each do |name_string|
      data.each do |data_hash|
        if data_hash.has_key?(name_string)
          combined_data_hash = Hash.new

          first_name_keys.each_pair {|key, value|
            combined_data_hash[key] = value
          }
          data_hash[name_string].each_pair {|key, value|
            combined_data_hash[key] = value
          }
          merged_data << combined_data_hash
        end
      end
    end
  }
end

def find_cool(cool)
  cool.each_with_object([]) {|hashes_in_array, returned_array_with_cool_hash|
    if hashes_in_array.has_value?("cool")      
        returned_array_with_cool_hash << hashes_in_array
    end
  }
end

def organize_schools(schools)
  school_location = schools.values
  school_location = school_location.uniq

  schools_in_same_city = []

  school_location.each {|city_name_hash|
    city_string = city_name_hash
    city_string = city_string.values.to_s
    schools.each_with_object({}) {|objects_inside, organized_schools|
      matching_city_string = objects_inside[1].has_value?(city_string)
      if objects_inside.include?(city_string) && matching_city_string
        school_name = objects_inside[0]
        schools_in_same_city << school_name
      end
      organized_schools[city_string] = schools_in_same_city
  }
    }
    organized_schools
end