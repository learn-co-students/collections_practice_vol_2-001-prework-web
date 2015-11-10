# your code goes here
def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  array.select {|word| word.split("").include?("a")}
end

def first_wa(array)
  array.find {|word| word.start_with?("wa") if word.class == String}
end

def remove_non_strings(array)
  array.select {|word| word.class == String}
end

def count_elements(array)
  count = Hash.new(0)
  array.each do |person|
    count[person] += 1
  end
  new_array = []
  count.each do |element, value|
    new_array << element.merge({count: value})
  end
  return new_array
end

def merge_data(keys, data)
  merged_data = []
  data.each do |person_d|
    person_d.each do |name_d, attr_d|
      keys.each do |person_k|
        person_k.each do |attr_k, name_k|
          if name_k == name_d
            merged_data << person_k.merge(attr_d)
          end
        end
      end
    end
  end
  return merged_data
end

def find_cool(array)
  array.select do |element|
    element.has_value?("cool")
  end
end

def organize_schools(schools)
  new_hash = Hash.new(0)
  schools.each do |name, attr|
    if new_hash.has_key?(attr[:location])
      new_hash[attr[:location]] << name
    else
      new_hash = new_hash.merge(attr[:location] => [name])
    end
  end
  return new_hash
end
