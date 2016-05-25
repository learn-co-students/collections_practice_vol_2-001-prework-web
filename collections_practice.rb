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
  array.group_by(&:itself).map do |k, v|
    k.merge(count: v.length)
  end
end

def merge_data(a1, a2)
  a2[0].values.map.with_index do |v, i|
    a1[i].merge(v)
  end
end

def find_cool(array)
  array.select do |hash|
    hash[:temperature] == "cool"
  end
end

def organize_schools(array)
  array.each_with_object({}) do |(name, data), res|
    location = data[:location]
    res[location] ||= []
    res[location] << name
  end
end
