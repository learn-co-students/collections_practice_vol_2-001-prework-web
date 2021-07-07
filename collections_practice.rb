# your code goes here
def begins_with_r(array)
  ret = true
  array.each do |x|
    if !x.start_with?("r")
      ret = false
    end
  end
  ret
end

def contain_a(array)
  ret = []
  array.each do |x|
    if x.include?("a")
      ret << x
    end
  end
  ret
end

def first_wa(array)
  out = nil
  array.each do |x|
    if x.match(/wa/)
      out=x
      break
    end
  end
  out
end

def remove_non_strings(array)
  out = []
  array.each do |x|
    if x.is_a?(String) 
      out << x
    end
  end
  out
end

def find_cool(array)
  out = []
  array.each do |x|
    out << x if x[:temperature] == "cool"
  end
  out
end


def count_elements(array)
  array.each do |x|
    x[:count] = 0
    name = x[:name]
    array.each do |y|
      if y[:name] == name
        x[:count] +=1
      end
    end
  end.uniq
end

def merge_data(keys, values)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end