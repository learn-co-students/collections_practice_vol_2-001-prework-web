def begins_with_r(array)
  array.each do |x|
    if x.start_with?("r") == false
      return false
    end
  end
  true
end

def contain_a(array)
  new_arr = []
  array.each do |x|
    if x.include? "a"
      new_arr << x
    end
  end
  new_arr
end

def first_wa(array)
  array.each do |x| 
    if x.is_a? String
    if x.start_with?("wa") == true
      return x
    end
  end
  end
end

def remove_non_strings(array)
  new_arr = []
  array.each do |x|
    if x.is_a? String
      new_arr << x
    end
  end
  new_arr
end

def count_elements(col)
  hash_arr = []

  col.uniq.each do |a_name|
    temp_hash = a_name
    #temp_hash[:name] = a_name
    count = 0

    col.each do |x|
      if x == a_name
        count += 1
      end
    end

    temp_hash[:count] = count

    hash_arr << temp_hash
  end
  hash_arr
end

def merge_data(keys, data)
  
  new_arr = []
  
  keys.each do |hash|
    value_array = hash.values
    new_arr.push(hash.merge(data[0][hash.values[0]]))
  end
  new_arr
end

def find_cool(hash)

cool_arr = []
  hash.each do |x|
    x.each do |key, value|
      if value == "cool"
        cool_arr << x
      end
    end
  end
cool_arr
end

def organize_schools(schools)
  
  location_arr = []
  schools.each do |names, hash|
    hash.each do |label, location|
      location_arr << location
    end
  end

  org_hash = Hash.new
  location_arr.uniq.each do |loc|
    solution_arr = []
    

    schools.each do |names, hash|
      hash.each do |label, location|
      
        if location == loc
          solution_arr << names
        end
      end
    end
    org_hash[loc] = solution_arr
  end
org_hash
end











  








