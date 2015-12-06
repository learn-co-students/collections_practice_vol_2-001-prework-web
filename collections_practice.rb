def begins_with_r(array)
  if array.all? {|item| item.start_with? "r"}
    return true
  else return false
  end
end

def contain_a(array)
  contain_a = []
  array.each do |word|
    if word.include? "a"
      contain_a.push(word)
    end
  end
  return contain_a
end

def first_wa(array)
  array.collect do |word|
    if word[0] == "w" && word[1] == "a"
      return word
    end
  end
end

def remove_non_strings(array)
  array.delete_if do |item|
    item.class != String
  end
end

def count_elements(array)
  counted_array = []
    array.each do |item|
      if counted_array.include?(item) == false 
        counted_array.push(item)
      end
    end
    counted_array.each do |item| 
      item_count = array.select do |matched|
        matched == item
      end
      item[:count] = item_count.length
    end
    return counted_array
end

def merge_data(keys, data)
  keys.each do |key|
    data.each do |person|
      if person.has_key?(key[:first_name])
        key.merge!(person[key[:first_name]])
      end
    end
  end
  return keys
end

def find_cool(cool_prop)
  cool_prop.keep_if do |property|
    property[:temperature] == "cool"
  end
end

def organize_schools(schools)
  sorted_schools = {}
  schools.each do |school, location|
    location.each do |key, city|
      if sorted_schools.has_key?(city)
        sorted_schools[city] << school
      else
        sorted_schools[city] = [school]
      end
    end
  end
  return sorted_schools
end