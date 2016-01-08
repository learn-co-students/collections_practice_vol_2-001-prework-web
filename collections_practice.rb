# your code goes here
def begins_with_r(array)
  array.delete_if do |word|
    word[0] == "r"
  end
  array.empty?
end

def contain_a(array)
  array.delete_if do |word|
    word.count("a") == 0
  end
end

def first_wa(array)
  array.select! do |word|
    word[0] + word[1] == "wa"
  end
  array[0]
end

def remove_non_strings(array)
  array.delete_if do |x|
    x.class != String
  end
end

def count_elements(array)
  counts = Hash.new(0)
  array.each do |x|
    counts[x] += 1
    end
  counts.each do |k,v|
    k[:count] = v
    v = nil
  end
  new_array =[]
  counts.each do |y, k|
    new_array << y
  end
  new_array
end

def merge_data(keys, data)
  keys.each do |hash|
    if hash[:first_name] == "blake"
      hash[:awesomeness] = 10
      hash[:height] = "74"
      hash[:last_name] = "johnson"
    elsif hash[:first_name] == "ashley"
      hash[:awesomeness] = 9
      hash[:height] = 60
      hash[:last_name] = "dubs"
    end
  end
end

def find_cool(array)
  new_array = []
  array.each do |hash|
    if hash[:temperature] == "cool"
      new_array << hash
    end
  end
  new_array
end

def organize_schools(hashes)
  new_array_nyc = []
  new_array_sf = []
  new_array_chicago = []
  hashes.each do |school, location|
    if location[:location] == "NYC"
      new_array_nyc << school
    elsif location[:location] == "SF"
      new_array_sf << school
    elsif location[:location] == "Chicago"
      new_array_chicago << school
    end
  end
  final_hash = {"NYC" => new_array_nyc,"SF" => new_array_sf,"Chicago" => new_array_chicago}
end
