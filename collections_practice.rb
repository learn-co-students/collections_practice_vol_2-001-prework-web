# your code goes here
def begins_with_r(array)
  !array.any? { |e| !e.start_with?("r","R")  }
end

def contain_a(array)
  array.select { |e| /[Aa]/ =~ e  }
end

def first_wa(array)
  array.find { |e| /\A[Ww][Aa]/ =~ e  }
end

def remove_non_strings(array)
  array.find_all { |e| e.class() == String}
end

#Abstracted #count_elements and #merge_data to not hard code keys.
#Can work on any input data structured similarly to examples
def count_elements(array)
  new_array = []
  array.each do |original|
    key_list = original.keys
    key_list.each do |key| 
      i = new_array.find_index { |counted| counted[key] == original[key] }
      i ? new_array[i][:count] += 1 : new_array << {key => original[key], :count => 1}
    end
  end
  new_array
end

def merge_data(array1,array2)
  merged_array=array1.collect {|x| x}

  merged_array.each do |name|
    init_key_list = name.keys
    init_key_list.each do |init_key|
      array2.each do |info|
        key_list = info.keys
        i = key_list.find_index { |key| name[init_key] == key}
        if i != nil
          inner_key_list = info[key_list[i]].keys
          inner_key_list.each {|inner_key| name[inner_key] = info.fetch(key_list[i]).fetch(inner_key)}
        end
      end
    end
  end
  merged_array      
end

def find_cool(array)
  array.select {|hash_collection| hash_collection.has_value?("cool")}
end

#hard coded :location because method expects to organize on that key
def organize_schools(hash_collection)
  sorted_hash={}
  hash_collection.each do |school,city|
    if city.has_key?(:location)
      if !sorted_hash.has_key?(city[:location])
        sorted_hash[city[:location]] = [].push(school) 
      else
        sorted_hash[city[:location]] << school
      end
    end
  end
  sorted_hash
end

