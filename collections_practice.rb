def begins_with_r(arr)
  r_words = arr.select { |elem| elem[0] == "r" }
  r_words.size < arr.size ? false : true
end

def contain_a(arr)
  arr.select { |elem| elem.include?("a") }
end

def first_wa(arr)
  arr.find { |elem| elem[0..1] == "wa" }
end

def remove_non_strings(arr)
  arr.delete_if { |elem| elem.class != String }
end

def count_elements(arr)
  arr.uniq.each do |elem|
    elem[:count] = arr.count(elem)
  end
end

def merge_data(keys,data)
  flattened_arr = data.map { |elem| elem.flatten }
  merged_data = flattened_arr.flatten.select {|elem| elem.class == Hash }

  keys.map.each_with_index do |elem,i|
    elem.merge(merged_data[i])
  end
end

def find_cool(arr)
 arr.select { |elem| elem if elem.has_value?("cool") }
end

def organize_schools(hash)
  cities = hash.map {|key,value| value[:location]}.uniq

  organized_hash = Hash.new {|hash,key| hash[key] = [] }

  hash.each do |key,value|
    cities.each do |city|
      if value.has_value?(city)
        organized_hash[city].push key
      end
    end
  end

# cities.each do |city|
#    if value.has_value?(city)
#      organized_hash[city].push key
#    end
#  end

# was refactored from:

#   i = 0
#   while i < cities.length
#     if value.has_value?(cities[i])
#       organized_hash[cities[i]].push key
#     end
#     i += 1
#   end
# end

  organized_hash
end