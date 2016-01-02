# your code goes here
def begins_with_r(array)
  array.each do |a|
    if not a.start_with?("r")
      return false
    end
  end
  return true
end

def contain_a(array)
  new_list = []
  array.each do |a|
    if a.include?("a")
      new_list << a
    end
  end
  new_list
end

def first_wa(array)
  array.each do |a|
    if a.to_s().start_with?("wa")
      return a
    end
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |a|
    if a.is_a?(String)
      new_array << a
    end
  end
  new_array
end

def count_elements(array)
  name_to_count = {}
  array.each do |a|
    name = a[:name]
    if name_to_count.include?(name)
      name_to_count[name] += 1
    else
      name_to_count[name] = 1
    end
  end
  result = []
  name_to_count.each do |k,v|
    result << {:name => k, :count => v}
  end
  result
end

def merge_data(keys, data)
  new_array = []
  data2 = data[0]
  keys.each do |element|
    first_name = element[:first_name]
    new_hash = {:first_name => first_name}
    new_hash.merge!(data2[first_name])
    new_array << new_hash
  end
  new_array
end

def find_cool(array)
  result = []
  array.each do |a|
    if a[:temperature] == "cool"
      result << a
    end
  end
  result
end

def organize_schools(schools)
  by_location = {}
  schools.each do |name, school|
    location = school[:location]
    if by_location.has_key?(location)
      by_location[location] << name
    else
      by_location[location] = [name]
    end
  end
  by_location
end
