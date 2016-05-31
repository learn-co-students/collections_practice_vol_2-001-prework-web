def begins_with_r(tools)
  z = []
  tools.each do |word|
    if word < "s" == true && word >= "r" == true
      z << word
    end
  end
  if z.length == tools.length
    true
  else
    false
  end
end

def contain_a(tools)
  z = []
  tools.each { |word|
    if word.include?("a") == true
    z << word
  end }
z
end

def first_wa(tools)
  tools.find { |word|
    if word.class == String
      word.include?("wa")
    end}
end

def remove_non_strings(array)
  array.delete_if { |element|
    element.class != String }
end

def count_elements(array)
  z = []
  array.each_with_index { |hash, index|
    z << hash
    z[index][:count] = -1}
  z.uniq.each { |hash|
    hash.each { |key, value|
      array.each { |hash_2|
        if hash[key] == hash_2[key]
          hash[:count] += 1
        end }}}
end

def merge_data(keys, data)
  z = []
  data.each { |element|
    element.each { |key, info|
    z << info }}
  z.each_with_index { |hash, index|
  keys[index].each { |key, value|
    hash[key] = value }}
  z
end

def find_cool(array)
  z = []
  array.each {|hash|
  if hash[:temperature] == "cool"
  z << hash
  end }
  z
end

def organize_schools(hash)
  z = {}
  hash.each {|school, location_hash|
  location_hash.each {|key, value|
    if z.keys.include?(value) == false
      z[value] = []
      z[value] << school
    else
      z[value] << school
    end }}
    z
  end
