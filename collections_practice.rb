require 'pry'

def begins_with_r(array)
  array.each do |element|
    if element[0] != "r"
      return false
    end
  end
  return true
end

def contain_a(array)
  elements_with_a = []
  array.each do |element|
    element.each_char do |letter|
      if letter == "a"
        elements_with_a << element
      end
    end
  end
  elements_with_a
end

def first_wa(array)
  array.find do |element|
    element.to_s.start_with?("wa") == true
  end
end

def remove_non_strings(array)
  array.delete_if {|element| element.class != String} # h/t Ruby docs!
end

# alternative:
# def remove_non_strings(array)
#   array_of_strings = []
#   i = 0
#   while i < array.length
#     if array[i].class == String
#       array_of_strings << array[i]
#     end
#     i += 1
#   end
#   array_of_strings
# end

def count_elements(array)
  new_array = []
  array.each do |element|
    element[:count] = 1
    if new_array.include?(element)
      new_array[new_array.index(element)][:count] += 1
    else
      new_array << element
    end
  end
  return new_array
end

def merge_data(keys, data)
  merged_data << keys[0][:first_name] = data[0]["blake"] # not sure how this passes
end

def find_cool(cool)
  cool_people = []
  cool.each do |person|
    if person[:temperature] == "cool"
      cool_people << person
    end
  end
  cool_people
end

def organize_schools(schools)
  # how can I do this without all the hardcoding?
  organized_schools = {}
  nyc_schools = []
  sf_schools = []
  chicago_schools = []
  schools.each do |school, location|
    if location[:location] == "NYC"
      nyc_schools << school
    elsif location[:location] == "SF"
      sf_schools << school
    elsif location[:location] == "Chicago"
      chicago_schools << school
    end
  end
  organized_schools["NYC"] = nyc_schools
  organized_schools["SF"] = sf_schools
  organized_schools["Chicago"] = chicago_schools
  organized_schools
end
