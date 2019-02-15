# your code goes here
def begins_with_r(array)
  array.delete_if { |element| element.start_with?("r") }
  array.empty?
end

def contain_a(array)
  array.delete_if { |element| !element.include?("a") }
end

def first_wa(array)
  array.find { |element| element.to_s.start_with?("wa") }
end 

def remove_non_strings(array)
  array.delete_if { |element| !element.is_a?(String)}
end

def count_elements(array)
  array.map { |element|
    {
      name: element[:name],
      count: array.count { |hash| hash[:name] == element[:name] }
    }
  }.uniq!
end

def merge_data(keys, data)
  keys.map { |key|
    {
      first_name: key[:first_name],
      awesomeness: data[0][key[:first_name].to_s][:awesomeness],
      height: data[0][key[:first_name].to_s][:height],
      last_name: data[0][key[:first_name].to_s][:last_name]
    }
  }
end

def find_cool(array)
  array.delete_if { |hash| hash[:temperature] != "cool"}
end

def organize_schools(schools)
  location_list = []
  organized_schools = {}

  schools.each { |k, v| 
    location_list << v[:location]
  }
  location_list.uniq!

  location_list.each { |location|
    school_array = []
    schools.each { |k, v|
      school_array << k if v[:location] == location
    }
    organized_schools[location] = school_array
  }

  organized_schools
end