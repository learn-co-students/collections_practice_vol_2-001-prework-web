def begins_with_r(array)
  array.all? do |word|
   word[0] == "r"
  end
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word.to_s.include?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |word|
    word.class != String 
  end
end

def count_elements(array)
  new_array = []
  array.uniq.each do |word|
    word[:count] = array.count(word)
    new_array << word
  end
  new_array
end

def merge_data(keys, data)
  array = []
  keys.each do |k|
    k.each do |key, value|
      data[0][value] = Hash[key,value].merge!(data[0][value])
      array << data[0][value]
    end
  end
  array
end

def find_cool(array)
  array.select do |hash|
    hash.has_value?("cool")
  end
end

def organize_schools(schools)
  schools.each do |name, location|
    location.each do |label,city|
      schools[name] = city
    end
  end
  schools.each_with_object({}) do |(k,v), result|
      result[v] ||= []
      result[v] << k
  end
end

