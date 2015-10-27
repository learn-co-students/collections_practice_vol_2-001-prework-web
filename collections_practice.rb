require "pry"

def begins_with_r(ary)
  ary.all? do |word|
    word[0] == "r"
  end
end

def contain_a(ary)
  ary.find_all do |word|
    word.include?("a")
  end
end

def first_wa(ary)
  ary.find do |word|
    word[0, 2] == "wa"
  end
end

def remove_non_strings(ary)
  ary.find_all do |word|
    word.instance_of?(String)
  end
end

def count_elements(ary)
  quantity = []
  ary.each do |name|
    quantity << ary.count(name)
  end 
  count = 0
  ary.each do |name|
    name[:count] = quantity[count]
    count += 1
  end
  ary.uniq
end

def merge_data(keys, data)
  return_hash = []
  data.each do |person|
    person.each do |chars, info|
      person[chars][:first_name] = chars 
       return_hash << info
    end
  end
  return_hash
end

def find_cool (x)
  x.delete_if do |element|
    element[:temperature] != "cool"
  end
end

def organize_schools(schools)
  return_hash = {} 
  schools.each do |school, location|
    location.each do |key, city|
      if return_hash.has_key?(city)
        return_hash[city] << school
      else
        return_hash[city] = [school]
      end
    end
  end
 return_hash
end