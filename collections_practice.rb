def begins_with_r(array)
  array.all? {|elem| elem[0] == "r"} ? true : false
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.each do |word|
    if word[0] == "w" && word[1] == "a"
      return word
    end
  end
end

def remove_non_strings(array)
  array.reject! {|elem| elem unless elem.is_a?(String) }
end


def count_elements(array)
  hash = {}

  #for the name equal to default hash
    array.each do |elem|
      elem.each do |key, value|
        hash[value] = {:name => "", :count => 0}
      end
    end

    #for the nested key (:name) to be assigned with the name
    hash.each do |name, value_hash|
      value_hash.each do |person, the_count|
        hash[name][:name] = name
        # hash[name][:count] +=1
      end
    end

    #for the neste key (:count) to be assigned with the incrementing count
     array.each do |elem|
      elem.each do |key, value|
        hash[value][:count] +=1
      end
    end
  hash.values #.values returns an ARRAY of values. thus solving the array of hashes. 
end

def merge_data(keys,data)
  #everything's right but the first element. it's at the last.
 new_hash = {}

 keys.each do |elem|
    elem.each do |first_n_label, first_name|
      new_hash[first_name] = elem
    end
 end
data.each do |data_hash|
 data_hash.each do |name, value_hash|
    first_part = new_hash[name]
    merged = first_part.merge(value_hash)
    new_hash[name] = merged
  end
 end

p new_hash.values
end

#-----WORKS and readable
# def merge_data(keys,data)
#   #everything's right but the first element. it's at the last.
#  new_hash = {}

#  keys.each do |elem|
#     elem.each do |first_n_label, first_name|
#       new_hash[first_name] = elem
#     end
#  end
# data.each do |data_hash|
#  data_hash.each do |name, value_hash|
#     first_part = new_hash[name]
#     second_part = value_hash
#     merged = first_part.merge(value_hash)
#     new_hash[name] = merged
#   end
#  end

# p new_hash.values
# end

# def merge_data(keys,data)
#   #everything's right but the first element. it's at the last.
#   new_hash = {}
#   data.each do |data_elem_hash|
#     data_elem_hash.each do |data_name_key, data_val_hash|
#       keys.each do |elem|
#         elem.each do |label_key, name|
#           new_hash[data_name_key]||= 
#           new_hash[data_name_key][label_key] = name
#           new_hash[data_name_key] = data_val_hash
          
#         end
#       end
#     end
#   end

#   p new_hash.values
# end

def find_cool(cool)
  new_arr = []
    cool.each do |elem_hash|
      new_arr << elem_hash if elem_hash[:temperature] == ("cool")
    end
    new_arr
end

def organize_schools(schools)
  new_hash = {}
  result_hash = {}

  #assigned keys with location values of given
  schools.each do |schools, location|
    new_hash[location] = []
  end

  schools.each do |schools, location|
    new_hash[location] << schools
  end

  new_hash.each do |loc_hash, school_arr|
    loc_hash.each do |label, name|
      result_hash[name] = school_arr
    end
  end

  result_hash
  
end





