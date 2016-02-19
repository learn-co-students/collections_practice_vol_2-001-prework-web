def begins_with_r(array)
  array.each do |i|
    return false if (!(i.start_with? "r"))
  end
  true
end

def contain_a(array)
  array.select{|item| item.include?("a")}
end

def first_wa(array)
  array.find{|item| item.start_with? "wa" if item.is_a?(String)}
end

def remove_non_strings(array)
  array.select{|item| item.is_a?(String)}
end

def count_elements(array)
  sets = array.uniq
  sets.each do |set|
    num_of = 0
    array.each do |item|
      num_of += 1 if item == set 
    end
    set.merge!(count: num_of)
  end
end

def merge_data(keys, data)
  sets = []
  keys.each do |name_hash|
    data.each do |attributes|
      sets << name_hash.merge!(attributes[name_hash[:first_name]])
    end
  end
end

def find_cool(array)
  array.select { |person| person[:temperature] == "cool"}
end

def organize_schools(hash)
  organized_hash = {}
  hash.each_value do |sub_hash|
    city = sub_hash[:location]
    schools = []
    hash.each do |school, subH2|
      if subH2[:location] == city
        schools << school
        hash.delete(school)
      end
    organized_hash[city] = schools
    end
  end
  organized_hash
end






