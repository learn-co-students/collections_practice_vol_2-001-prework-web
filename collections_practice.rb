def begins_with_r(array)
  array.all? do |item|
    item.start_with?("r")    
  end
  
end

def contain_a(array)
  array.select do |item|
    item.include?("a")
  end
  
end

def first_wa(array)
  array.detect do |item|
    item.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.reject do |item|
    !(item.class == String)
  end
  
end

def count_elements(array)
  array.uniq.collect do |element|
    element[:count] = array.count(element)
    element
  end
end


def merge_data(keys, data)
  array=Array.new 
  data.collect do |data_item| 
    data_item.each do |key1, value1| #key1 = "blake" , value1 = { ...  }
      keys.each do |key| #key = {:first_name => "blake"}
        key.each do |key2, value2|
          if key1 == value2 
            array << key.merge(value1)
          end
        end
      end
    end
  end
  array
end

#works in IRB but did not pass the test
#def merge_data(keys, data)
#array=Array.new
#  keys.collect do |keys_item|
#    keys_item.each do |key1, value1|
#      data.collect do |key2, value2|
#        if value1 == key2
#         data[key2][key1] = value1 
#        end
#        array<<data[key2]
#      end
#    end
#  end
#  array.uniq
#end

def find_cool(array)
  array.select do |item|
    if item.values.include?("cool")
      item
    end
  end
end

def organize_schools(bootcamps)
  sorted_schools = Hash.new
  bootcamps.each do |school, info|
    info.each do |location, city|
      if sorted_schools.has_key?(city)
        sorted_schools[city]<<school
      else
        sorted_schools[city] = [school]
      end
    end
  end
  sorted_schools
end