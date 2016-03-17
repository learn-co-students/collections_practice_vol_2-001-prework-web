# your code goes here

def begins_with_r(tools)
  tools.each do |x|
    if x[0] != "r"
      return false
    end
  end
  return true
end

def contain_a(coll)
  array = []
  coll.each do |x|
    if x.include? "a"
      array << x
    end
  end
  array
end

def first_wa(coll)
  coll.each do |x|
    if x[0] == "w"
      if x[1] == "a"
        return x
      end
    end
  end
end

def remove_non_strings(coll)
  array = []
  coll.each do |x|
    if x.is_a? String
      array << x
    end
  end
  coll = array
end

def count_elements(coll)
  #takes an array of hashes, returns an array with two hashes in it
  name_hash = {}

  coll.each do |name_item|
    # grab the name from the hash
    name = ""
    name_item.each do |key, value|
      name = value
      # puts "Debug, putting key: #{key}"
      # puts "Debug, putting value: #{value}"
      # puts "Debug, putting name: #{name}"
    end
    if name_hash.keys.include?(name)
      count = name_hash[name]
      count += 1
      name_hash[name] = count
    else
      name_hash[name] = 1
    end
  end

  new_arr = [{},{}]
  counter = 0
  name_hash.each do |name, count|
    new_arr[counter][:name] = name
    new_arr[counter][:count] = count
    counter += 1
  end

  new_arr
end

def merge_data(keys, data)
  fin_arr = []

  keys.each do |key_item|
    name = key_item[:first_name]
    #puts "debug: name: #{name}"
    new_hash = data[0][name]
    #puts "debug: hash: #{new_hash}"
    new_hash[:first_name] = name
    fin_arr << new_hash
  end

  fin_arr
end

def find_cool(coll)
  fin_arr = []

  coll.each do |cool_hash|
    if cool_hash[:temperature] == "cool"
      fin_arr << cool_hash
    end
  end
  fin_arr
end

def organize_schools(coll)
  fin_hash = {
    "NYC" => [],
    "SF" => [],
    "Chicago" => []
  }

  coll.each do |key, value|
    location = value[:location]
    fin_hash[location] << key
  end

  fin_hash
end

