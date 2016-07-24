require "pry"

def begins_with_r(array)
  array.all? {|word|
    word[0]=="r"
  }
end

def contain_a(array)
  a_array=[]
  array.each {|word|
    if word.include? "a"
      a_array<<word
    end
  }
  a_array
end

def first_wa(array)
  wa_array=[]
  array.each do |word|
    if word[0] == "w" && word[1]=="a"
      wa_array<<word
    end
    if wa_array.count>=1
      break
    end
  end
  wa_array.join
end

def remove_non_strings(array)
  array.delete_if {|item| item.is_a?(String) == false}
  array
end

def count_elements(array)
  new_array=[]
  array.each do |hash|
    combo_hash={:count=>array.count(hash)}
    new_array<<hash.merge(combo_hash)
  end
  new_array.uniq
end

def merge_data(names, data)
  return_hash=[]
  names.each do |name_hash|
    name_hash.each do |name_attribute, value|
      data.each do |data_hash|
        data_hash.each do |name, data_attribute|
          if name == value
            storage_hash=[{:first_name=>name}]
            storage_hash<<data_attribute
            return_hash<<storage_hash[0].merge(storage_hash[1])
          end
        end
      end
    end
  end
  return_hash
end 

def find_cool(data)
  cool_array=[]
  data.each do |cool_data|
    if cool_data[:temperature]=="cool"
      cool_array<<cool_data
    end
  end
  cool_array
end

def organize_schools(schools)
  organized_hash={}
  schools.each do |school, location_hash|
    location_hash.each do |location_symbol, location|
      organized_hash[location]=[]
    end
  end
  organized_hash.each do |organized_location, organized_schools|
    schools.each do |school, location_hash|
      location_hash.each do |location_symbol, location|
        if location == organized_location
          organized_hash[location]<<school
        end
      end
    end
  end
  organized_hash
end