def begins_with_r(array)
  array.all? do |element|
    element[0] == "r"
  end
end

def contain_a(array)
  array.select do |element|
    element.include?("a")
  end
end

def first_wa(array)
  array.find do |element|
    element[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.reject do |element|
    element.class != String
  end
end

def count_elements(array)
  new_array = array.uniq
  new_array.each do |hash|
    count = 0
    array.each do |element|
      if hash == element
        count += 1
      end
    end
    hash[:count] = count
  end
  new_array
end

def merge_data(keys, data)
  keys
  data
end

def find_cool(array)
  array
end

def organize_schools(array)
  array
end