# your code goes here
def begins_with_r(array)
  array.collect.all? do |element|
    if element[0] == "r"
      true
    else
      false
    end
  end
end


def contain_a(array)
  new_array = array.collect do |element|
    element if element.include?("a")
  end
  new_array.compact
end

def first_wa(array)
  array.keep_if {|element| element.to_s.start_with?("wa")}
  array.first
end

def remove_non_strings(array)
  array.keep_if do |element|
    element.class == String
  end
  array
end

def count_elements(array)
  new_array = []
    array.uniq.each do |element|
      element[:count] = array.count(element)
      new_array << element
    end
    new_array
end

def merge_data(hash1, hash2)
  new_hash = []
  hash2.each do |element|
    element.each do |key, value|
            new_hash2 = {}
      hash1.each do |element_1|
        element_1.each do |key_1, value_1|
          if key == value_1
            new_hash2[key_1] = value_1
          end
        end
      end
      if hash1[0].values.include?(key) || hash1[1].values.include?(key)
        value.each do |keyx, valx|
          new_hash2[keyx] = valx
        end
      end
          new_hash << new_hash2
        end
  end
  new_hash
end

def find_cool(array)
  new_array = []
 array.each do |hash|
  hash.each do |key, value|
    if value == "cool"
      new_array << hash
    end
  end
end
  new_array
end

def organize_schools(schools)
final_hash = {}
  schools.each_pair do |key,value|
    value.each_pair do |key2, value2|
      if final_hash[value2] == nil
        final_hash[value2] =[]
        final_hash[value2] << key
      else
        final_hash[value2] << key
      end
    end
  end
final_hash
end
