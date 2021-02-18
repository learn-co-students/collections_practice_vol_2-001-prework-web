require 'pry'

def begins_with_r(arr)

arr.each do |i|
  if i.start_with?("r") == false
    return false
  end
end

  true
end


def contain_a(arr)
  new_arr = []

  arr.each do |i|
    if i.include?("a")
      new_arr << i
    end
  end

  new_arr
end


def first_wa(arr)

  arr.each do |i|
    if i[0] == "w" && i[1] == "a"
      return i
    end
  end

end


def remove_non_strings(arr)

  arr.reject {|i| i.class != String}

end


def count_elements(arr) #ugly :(
  return_arr = []
  counted = []

  idx = 0
  while idx < arr.length
    idx2 = 0
    count = 0
    if counted.include?("#{arr[idx]}") == false
      counted << arr[idx].to_s
      while idx2 < arr.length
        if arr[idx] == arr[idx2]
          count += 1
        end
        idx2 += 1
      end
      new_hash = arr[idx]
      new_hash[:count] = count
      return_arr << new_hash
    end
    idx += 1
  end

  return_arr
end


def merge_data(keys, data)
  result_arr = []
  hash1 = keys
  hash2 = data[0]#get the hash out of the array(it's only one element)
  
  keys.each do |i|
    i.each do |key, value|
      if hash2.has_key?(value) == true
        hash2[value][key] = value
      end
    end
  end

  result_arr = hash2.values
end


=begin #merge_data Pseudo code for reference:
def merge_data(collection_one, collection_two)
  # collection_one = [
           {:first_name => "blake"},
           {:first_name => "ashley"}]
          

  # collection_two = [{
                      "blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"},
                       "ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}
                       }]
  # }]

  # iterate over each hash in collection_one
  #   for each sub-hash, iterate through key, value pairs
  #     check if collection_two[0] has a key that matches sub-hash value
  #     if there's a match, add sub-hash into collection_two values hash
  # return collection_two[0] values
expected return: [
          {:first_name=>"blake", :awesomeness=>10, :height=>"74", :last_name=>"johnson"}, 
          {:first_name=>"ashley", :awesomeness=>9, :height=>60, :last_name=>"dubs"}]

end

=end


def find_cool(cool)
  result_arr = []

  cool.each do |hash|
    if hash.has_value?("cool")
      result_arr << hash
    end
  end

  result_arr
end

def organize_schools(schools)
  nyc = []
  chicago = []
  sf =[]
  return_hash = {}

  schools.each do |school, loc_hash|
    if loc_hash.has_value?("NYC")
      nyc << school
    elsif loc_hash.has_value?("Chicago")
      chicago << school
    elsif loc_hash.has_value?("SF")
      sf << school
    end
  end

  return_hash["NYC"] = nyc
  return_hash["Chicago"] = chicago
  return_hash["SF"] = sf

  return_hash
end


