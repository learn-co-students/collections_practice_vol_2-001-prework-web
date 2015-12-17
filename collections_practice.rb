# your code goes here
def begins_with_r(array)
  array.all? do |x|
    x.start_with?("r")
  end
end

def contain_a(array)
  array.select do |x|
    x.match("a")
  end
end

def first_wa(array)
  array.find do |x|
    x[0].match("w") && x[1].match("a")
  end
end

def remove_non_strings(array)
  array.select do |x|
    x.class == String
  end
end

def count_elements(array)
  new_array = []
  hash = {}
  hash.default = 0
  array.each do |x|
    hash[x] += 1
  end
  new_hash = {}
  hash.each do |x, y|
    new_hash = x
    new_hash[:count] = y
    new_array << new_hash
  end
  new_array
end

def merge_data(keys, data)
  hash = {}
  hash.default = 0
  new_array = []
  data.each do |x|
    x.each do |y,z|
      hash = z
      new_array << hash
    end
  end
  idx = 0
  answer = []
  keys.each do |x|
    answer[idx] = x.merge(new_array[idx])
    idx += 1
  end
  answer
end

def find_cool(cool)
  array = []
  cool.each do |x|
    x.each do |y, z|
      if z == "cool"
        array << x
      else
        nil
      end
    end
  end
  array
end

def organize_schools(schools)
  location = {}
  location.default = 0
  hash = {}
  hash.default = 0
  schools.each do |x, y|
    y.each do |a, b|
      hash = {}
      hash[b] = [x]
      location = location.merge(hash) do |k, o, n|
        (o << n).flatten
      end
    end
  end
  location
end