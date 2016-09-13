def begins_with_r(input)
  sum = 0
  input.each do |word|
    if word[0] == 'r'
      sum += 1
    end
  end
  if sum == input.length
    true
  else
    false
  end
end

def contain_a(input)
  input.select { |word| word.chars.include?("a") }
end

# def first_wa(input)
#   input.select { |word| word[0..1].== "wa" }.first
# end


def first_wa(input)
  for word in input
    if word[0..1].== "wa"
      return word
    end
  end
end


def remove_non_strings(input)
  input.delete_if { |thing| thing.class != String }
end

# first create a hash with the number of times each name appears
# since each element is a hash, you'll need to refer to the name by it's key, :name
# if your hash includes a name already, increment it's value, otherwise set it to 1
# But you need to format it because reasons. So your hash will need to be broken
# up into a list of smaller hashes with labels

def count_elements(set)
  temp_hash = { }
  set.each do |item|
    if temp_hash.include?((item[:name]))
      temp_hash[item[:name]] += 1
    else
      temp_hash[item[:name]] = 1
    end
  end
  map_list = []
  temp_hash.each do |k,v|
    map_list << {name: k, count: v}
  end
  return map_list
end

=begin 
THESE ARE BOTH FAILING :( 
# NOTE: Using `merge` to add data contents to keys
# def merge_data(keys, data)
#   merged_data = []
#   i = 0
#   while i < keys.length
#     (keys[i]).merge!(data[i][keys[i][:first_name]])
#     merged_data << keys[i]
#     i += 1
#   end
#   return merged_data
# end


# NOTE: Using explicit hash syntax to add keys content to data
# def merge_data(keys, data)
#   merged_data = []
#   i = 0
#   while i < keys.length
#     (data[i][keys[i][:first_name]])[:first_name] = (keys[i][:first_name])
#     merged_data << data[i][keys[i][:first_name]]
#     i += 1
#   end
#   return merged_data
# end
=end 

def find_cool(input)
  cool_hashes = []
  input.each do |hash|
    if hash.has_value?("cool")
      cool_hashes << hash
    end
  end
  cool_hashes
end

def organize_schools(schools)
  location_hash = {}
  schools.each do |k,v|
    if location_hash.include?(v[:location])
      location_hash[(v[:location])] << k
    else
      location_hash[(v[:location])] = [k]
    end
  end
end
