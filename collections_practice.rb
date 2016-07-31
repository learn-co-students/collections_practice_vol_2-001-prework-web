# your code goes here
def begins_with_r(array)
  array.all? {|element| element[0] == "r"}
end

def contain_a(array)
  array.select {|element| element.include?("a")}
end

def first_wa(array)
  array.find {|element| element[0..1] == ("wa")}
end

def remove_non_strings(array)
  new_array = []
  array.each do |element|
    new_array << element if element.is_a?(String)
  end
  new_array
end

def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
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

def find_cool(array)
  new_array = []
  array.each do |element|
    new_array << element if element[:temperature] == "cool"
  end
  new_array
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
