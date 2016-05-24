def begins_with_r(array)
  allR = true
  array.each do |value|
    if value[0] != "r"
      allR = false
    end
  end
  allR
end

def contain_a(array)
  result = []
  array.each do |value|
    if value.include?("a")
      result << value
    end
  end
  result
end

def first_wa(array)
  array.find do |value|
    value[0,2] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if do |value|
    value.class.name != "String"
  end
end

def count_elements(array)
  count = Hash.new
  counter = 0
  array.each do |value|
    count[counter] += 1
  end
end
