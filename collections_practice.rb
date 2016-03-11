def begins_with_r(array)
  array.each do |word|
    return false if (!(word.start_with? "r"))
  end
  true
end

def contain_a(array)
  array.select {|word|
    word.include?("a")}
end

def first_wa(array)
  array.find do |word|
    word[0] == "w" && word[1] == "a"
  end
end

def remove_non_strings(array)
  array.delete_if {|i| i.is_a?(String) == false}
end

def count_elements(array)
  array1 = array.uniq
  array1.each do |x|
    x[:count] = array.count(x)
  end
end

def merge_data(array1, array2)
  new_array =[]
  array1.each do |hashname|
    array2.each do |attributes|
      new_array << hashname.merge!(attributes[hashname[:first_name]])
    end
  end
end

def find_cool(array)
  array.select do |temp|
    temp[:temperature] == "cool"
  end
end

def organize_schools(schools)
  sorted = {}
  schools.each do |name, school|
    location = school[:location]
    if sorted.has_key?(location)
      sorted[location] << name
    else
      sorted[location] = [name]
    end
  end
  sorted
end