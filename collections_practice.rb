def begins_with_r(array)
array.all? do |x|
x[0]== "r"
end
end

def contain_a(array)
  array.select do |word|
  word.include?("a")
end
end

def first_wa(array)
  array.find do |word|
  word[0..1] == "wa"
end
end

def remove_non_strings(array)
  array.delete_if do |x|
    x != x.to_s
  end
end

def count_elements(array)
  counts = Hash.new(0)
  array.collect {|element| counts[element]+=1 }
    counts.collect do |hash, num|
      hash[:count] = num
    end
  counts.keys
end

def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end

def find_cool(array)
  array.select {|entry| entry if entry.has_value?("cool")}
end

def organize_schools(schools)
  by_location = {}
    schools.each do |school, location_hash|
      location_hash.each do |symbol, location|
        if by_location[location] == nil
          by_location[location] = [school]
        else
          by_location[location] << school
        end
      end
    end
    by_location
end
