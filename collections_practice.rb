def begins_with_r(array)
  array.each {|name| if name.start_with?("r") == false 
    return false 
  end}
  true
end

def contain_a(array)
  words_with_a = []
i = 0
while i < array.length
  word = array[i]
  j = 0
  while j < word.length
    if word[j] == "a"
      words_with_a << word
    end
    j += 1
  end
  i += 1
end
words_with_a
end

def first_wa(array)
  array_2 = []
  array.each {|name| array_2 << name.to_s}

  word = []
  array_2.any?{|name| if name.start_with?("wa")
  word << name
  end}
  return word[0]
end

def remove_non_strings(array)
    strings = []
    array.collect do |x| if x == x.to_s
    strings << x
end
end
strings
end

def count_elements(array)
return_array = array.uniq
count = 0
i = 0
while i < return_array.length
j = 0
while j < array.length
  if array[j] == return_array[i]
    count += 1
  end
  j += 1
end
return_array[i].merge!({:count => count})
count = 0
i += 1
end
return_array
end

def merge_data(keys, data)
new_hash = {}
new_array = []
data.each {|x| new_hash.merge!(x)}
keys.each {|key| new_array << key.merge(new_hash[key[:first_name]])}
new_array
end

def find_cool(cool)
  has_cool = []
  cool.each {|x| has_cool << x if x[:temperature] == "cool"}
  has_cool
end


def organize_schools(schools)
  locations = find_locations(schools.values)
  return_hash = {}
  locations.each do |location|
    schools_in_location = find_schools_in_location(schools, location)
    return_hash.merge!({ location => schools_in_location })
  end
  return_hash
end

def find_locations(hash)
  locations = []
  hash.each do |x|
    locations << x.values
  end
  locations.uniq.flatten
end

def find_schools_in_location(schools, location)
  schools_and_location = []
  schools.each do |y|
    school_location = y[1][:location]
    schools_and_location << y[0] if school_location == location
  end
  schools_and_location
end
  



    