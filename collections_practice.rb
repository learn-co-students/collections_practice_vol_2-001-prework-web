def begins_with_r(array)
  c = 0
  array.each do |elem|
    if elem.start_with?("r")
      c += 1
    end
  end 

  if c == array.length
    return true
  else false
  end  
end

def contain_a(array)
  array.select do |elem|
    elem.include?("a")
  end
end

def first_wa(array)
  array.each do |elem|
    if elem.to_s.start_with?("wa")
      return elem
    end
  end
end

def remove_non_strings(array)
  array.select do |elem|
    elem == elem.to_s 
  end  
end

def count_elements(array)
  tempHash = Hash.new
  tempHash.default = 0
  result = []
  array.each do |elem|
    name = elem[:name]
    tempHash[name] += 1
  end  
  tempHash.each do |key, value|
    result.push(:name => key, :count => value)
  end
  result
end

def merge_data(key,data)
  result = []
    data = data[0]
    keys.each do |elem|
      first_name = elem[:first_name]
      keys = {:first_name => first_name}
      keys.merge!(data[first_name])
      result << keys
    end
    result
end

def find_cool(array)
    result = []
    array.each do |i|
      if i[:temperature] == "cool"
        result << i
      end
    end
    result
  end

def organize_schools(schools)
  result = {}
    schools.each do |name, school|
      location = school[:location]
      if result.has_key?(location)
          result[location] << name
      else
          result[location] = [name]
      end
    end
    result
end
