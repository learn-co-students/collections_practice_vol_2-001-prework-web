def begins_with_r(tools)
  tools.all? { |word| word.start_with?("r") == true }
end

def contain_a(elements)
  elements_with_a = []
  elements_with_a << elements.select {|element| element.include?("a") }
  elements_with_a.flatten
end

def first_wa(elements)
  elements.find{ |element| element.start_with?("wa") == true }
end

def remove_non_strings(array)
end

def count_elements(array)
end

def merge_data(data)
end

def find_cool(temperature)
end

def organize_schools(schools)
end
