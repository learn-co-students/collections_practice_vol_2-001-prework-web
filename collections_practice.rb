# your code goes here
def begins_with_r(arr)
  all_r = true
  arr.each do |elem|
    if elem.chr != "r"
      all_r = false
    end
  end
  all_r
end

def contain_a(arr)
  arr.select do |elem|
    !elem.index('a').nil?
  end
end

def first_wa(arr)
  arr.find do |elem|
    elem[0, 2] == "wa"
  end
end

def remove_non_strings(arr)
  arr.select do |elem|
    elem.class == "test_string".class
  end
end

def count_elements(arr)
  output_arr = []
  temp_hash = {}
  arr.each do |hash|
    if temp_hash.has_key?(hash[:name])
      temp_hash[hash[:name]] += 1
    else
      temp_hash.store(hash[:name], 1)
    end
  end
  temp_hash.each do |key, item|
    output_arr << {:name => key, :count => item}
  end
  output_arr
end

def merge_data(arr1, arr2)
  output_arr = []
  arr1.each do |hash|
    temp_name = hash[:first_name]
    arr2.each do |hash|
      if hash.has_key?(temp_name)
        temp_hash = hash[temp_name]
        temp_hash.store(:first_name, temp_name)
        output_arr << temp_hash
      end
    end
  end
  output_arr
end

def find_cool(arr)
  arr.select do |hash|
    hash[:temperature] == "cool"
  end
end

def organize_schools(hash)
  output_hash = {}
  hash.each do |key, item|
    temp_loc = item[:location]
    if output_hash.has_key?(temp_loc)
      output_hash[temp_loc] << key
    else
      output_hash.store(temp_loc, [key])
    end
  end
  output_hash
end
