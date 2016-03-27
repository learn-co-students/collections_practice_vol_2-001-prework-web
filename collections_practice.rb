require "pry"

def begins_with_r(array)
  array.each do |item|
      if item.start_with?("r") == false
        return false
      end
  end
  return true
end

def contain_a(array)
  new_array = []
  array.each do |item|
    if item.include? "a"
      new_array << item
    end
  end
  return new_array
end

def first_wa(array)
  array.each do |item|
    if item.to_s.start_with?("wa")
      return item
    end
  end
end

def remove_non_strings(array)
  array.delete_if {|item| item != item.to_s}
end

def count_elements(array)
  counted = []
  array.each do |item|
    item[:count] = array.count(item)
    counted << item
  end
  return counted.uniq{ |item|
    item[:name]
  }
end

def merge_data(keys, data)

  new_array = []
  
  keys.each do |keys_hash|

    keys_hash.each do |first_name_key, first_name_value|
      hash = {}
      hash[first_name_key] = first_name_value
      
      data.each do |data_hash|
        data_hash.each do |name, stats|
          if name == first_name_value
            stats.each do |char, value|
              hash[char] = value
            end
          end
        end
      end

      new_array << hash
    end 
  end

  return new_array
end

array_of_hashes = [
            {
                   :name => "ashley",
            :temperature => "sort of cool"
        },
            {
                   :name => "blake",
            :temperature => "cool"
        }
    ]

def find_cool(array_of_hashes)
  temp_arrays = []

  array_of_hashes.each do |hash|
    if hash[:temperature] == "cool"
      temp_arrays << hash
    end
  end
  return temp_arrays
end

school_hash = {
      "flatiron school bk" => {
        :location => "NYC"
      },
      "flatiron school" => {
        :location => "NYC"
      },
      "dev boot camp" => {
        :location => "SF"
      },
      "dev boot camp chicago" => {
        :location => "Chicago"
      },
      "general assembly" => {
        :location => "NYC"
      },
      "Hack Reactor" => {
        :location => "SF"
      }
    }

def organize_schools(school_hash)

  organized_school_hash = {}

  school_hash.each do |school_name, school_stats|

    if organized_school_hash.include?(school_stats[:location]) == false
      temp_school_array = []

      temp_school_array << school_name

      organized_school_hash[school_stats[:location]] = temp_school_array

    else 
      temp_school_array = []
      
      temp_school_array << organized_school_hash[school_stats[:location]]

      temp_school_array << school_name

      organized_school_hash[school_stats[:location]] =  temp_school_array.flatten
    end


  end

return organized_school_hash

end


