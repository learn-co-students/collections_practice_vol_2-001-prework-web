# your code goes here
def begins_with_r(array)
  !array.any? { |word| word[0] != "r"}
end

def contain_a(array)
  array.select { |word| word.include? "a" }
end

def first_wa(array)
  array.find { |word| word[0,2] == "wa" }
end

def remove_non_strings(array)
  array.delete_if { |item| item.class != String}
  array
end

def count_elements(array)
  count_hash = array.each_with_object(Hash.new(0)) { |item,counts| counts[item] += 1 }
  counted_array = []
  count_hash.each do |key, count|
    key[:count] = count 
    counted_array.push key
  end
  counted_array
end

def merge_data(hash_array1, hash_array2)
  new_hash_array = []
  hash_array1.each do |hash|
    hash.each do |key, value|
      hash_array2.each do |hash|
        hash.each do |k, v|
          if value == k
            v[key] = value
            new_hash_array << v
          end
        end
      end
    end
  end
  new_hash_array
end

def find_cool(hash_array)
  cools = []
  hash_array.each do |hash|
    hash.each do |key, value|
      if value == "cool"
        cools << hash
      end
    end
  end
  cools
end

def organize_schools(school_hash)
  location_hash = {}
  school_hash.each do |school, loc_hash|
    loc_hash.each do |key, location|
    location_hash.has_key?(location) ? location_hash[location] << school : location_hash[location] = [school]
    end
  end
  location_hash
end
