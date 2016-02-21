
def begins_with_r(array)
  final_array = []
  array.each do |x|
    if x > "q" && x < "s"
      final_array << x
      if final_array.count == array.count
        return true
      end
    else
      return false
    end
  end
end

def contain_a(array)
  final_array = []
  array.each do |x|
    if x.include?("a") == true
      final_array << x
    end
  end
  final_array
end

def first_wa(array)
  final_array = []
  sym = []
  array.each do |y|
    sym << y.to_s
  end
  sym.each do |x|
    if x.include?("wa")
      final_array << x
    end
  end
  final_array.first
end

def remove_non_strings(array)
  array.delete_if do |x|
    x != x.to_s
  end
end

def count_elements(array)
  new_array = array.uniq
  new_array.each do |x|
    x[:count] = array.count(x)
  end
end

def merge_data(keys, data)
  new_array = []
  keys.each do |hash|
    hash.each_key do |name|
      data.each do |data|
        new_array << hash.merge(data[hash[name]])
      end
    end
  end
  new_array
end

def find_cool(array)
  array.each do |hash|
    if hash[:temperature] == "cool"
      return [hash]
    end
  end
end

def organize_schools(unorganized)
  #create new hash with all cities in it
  #.uniq hash so only 1 of each city
  #    use include? instead,no uniq for hashes
  #if :location equals city add school to city array

  new_hash = {}
  unorganized.each do |school, hash|
    hash.each do |location, city|
      new_hash[city] = []
    end
  end
  unorganized.each do |school, hash|
    hash.each do |location, city|
      if new_hash.include?(city)
        new_hash[city] << school
      end
    end
  end
  new_hash
end
=begin
{"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
     "SF"=>["dev boot camp", "Hack Reactor"],
     "Chicago"=>["dev boot camp chicago"]}
=end