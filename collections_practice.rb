#Return true if every element of array starts with an "r" and false otherwise
def begins_with_r(array)
  ret = false

  array.each do |element|
    ret = (element.start_with?('r'))
  end

  ret
end

#Return all elements that contain the letter 'a'
def contain_a(array)
  array.select do |element|
    element.include?('a')
  end
end

#Return the first element that begins with the letters 'wa'
def first_wa(array)
  array.find do |element|
    element.is_a?(String) && element.start_with?('wa')
  end
end

#Remove anything that's not a string from an array
def remove_non_strings(array)
  array.reject do |element|
    !element.is_a?(String)
  end
end

#Count how many times something appears in an array
#Note: may be hacky because I haven't officially learned about hashes yet!
def count_elements(array)
  #Build hash where key = name and val = count
  counts = Hash.new(0)
  array.each do |element|
    counts[element[:name]] += 1
  end

  #Turn this into array of hashes
  ret = []
  counts.map do |key, val|
    h = {}
    h[:name] = key
    h[:count] = val
    ret << h
  end
  ret
end

#Merge each hash in keys into the corresponding hash in data
#Use the value of keys as the key in data to match records to be merged
def merge_data(keys, data)
  keys.each do |k|
    target = k.values[0]
    data[0][target].merge!(k)
  end
  data[0].values
end

#Given array of hashes, return array of hashes where temperature = "cool"
def find_cool(array_of_hashes)
  array_of_hashes.select do |hash|
    hash[:temperature] == "cool"
  end
end

#Given schools nested hash where location is represented by
# schools[schoolname][:location], return hash where key is location and
# value is list of schoolnames
def organize_schools(schools)
  schools_by_location = {}

  schools.each do |schoolname, details_hash|
    location = details_hash[:location]
    if schools_by_location.has_key?(location)
      schools_by_location[location] << schoolname
    else
      schools_by_location[location] = [schoolname]
    end
  end
  
  schools_by_location
end
