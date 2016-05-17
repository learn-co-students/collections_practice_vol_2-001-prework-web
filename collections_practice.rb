# your code goes here
def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.find {|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.delete_if {|word| word != word.to_s}
end

def count_elements(array)
  array.uniq.each do |word|
    word[:count] = array.count(word)
  end
end

def merge_data(keys, data)
  keys.collect do |key|
   key.merge(data[0][key[:first_name]])
 end
end

def find_cool(array)
  array.select {|hash|
    hash[:temperature] == "cool"}
end

def organize_schools(schools)
  loc_hash = []
  city_hash = {}
  schools.each do |school, data|
    loc_hash << data.values
  end
  loc_hash.uniq.flatten.each do |value|
    city_hash[value] = []
  end
  
   schools.each do |school, data|
    data.each do |attribute, city|
      city_hash.each do |city_2, city_schools|
        if city_2 == city 
          city_schools << school
        end
      end
    end
  end
  city_hash
end