require "pry"

def begins_with_r(tools)
  tools.all? { |word| word.start_with?("r") == true }
end

def contain_a(elements)
  elements_with_a = []
  elements_with_a << elements.select {|element| element.include?("a") }
  elements_with_a.flatten
end

def first_wa(elements)
  elements = elements.join(",").split(",")
  elements.each do |element|
    if element.start_with?("wa") == true
        return element
    end
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |value|
    if value.class == String
      new_array << value
    end
  end
  new_array
end

def count_elements(array)
  count = Hash.new(0)
  array.map {|name| count[name] += 1}
  count.keys.map{|key| key[:count] = count[key]; key}
end

def merge_data(array1, array2)
  array1.each do |person|
    array2.each do |name|
      name[person[:first_name]].each do |key, value|
        person[key] = value
      end
    end
  end
  array1
end

def find_cool(temperature)
  cool = []
  temperature.each do |key|
    key.each do |name, temp|
      if temp == ("cool")
        cool << key
      end
    end
  end
  cool
end

def organize_schools(schools)
  final = {}
  schools.each do |school, data|
    data.each do |att, location|
      final[location] = []
    end
  end
  schools.each do |school, data|
    data.each do |att, location|
      final[location] << school
    end
  end
  final
end
