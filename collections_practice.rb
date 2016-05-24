def begins_with_r(array)
  array.all? {|word| word.start_with?("r") == true}
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  stringy_array = array.map {|a| a.to_s}
  stringy_array.find {|word| word.start_with?("wa")}
end

def remove_non_strings(array)
  array.grep(String)
end

def count_elements(array)
  counted = []
  array.uniq.each do |word|
    word[:count] = array.count(word)
    counted << word
  end
  counted
end

def merge_data(array1, array2)
  merged = []
  array1.each do |x|
    x.each_key do |y|
      array2.each do |z|
        merged << x.merge(z[x[y]])
      end
    end
  end
  merged
end

def find_cool(array)
  array.each do |hash|
    if hash[:temperature] == "cool"
       return [hash]
    end
  end
end

def organize_schools(schools)
    organized = Hash.new(0)
    schools.each_pair do |school, location|
  location.each_value do |value|
     organized[value] = []
    end
  end

  schools.each do |school, location|
    location.each_value do |value|
      if organized.include?(value)
        organized[value] << school
      end
    end
  end
  organized
end
