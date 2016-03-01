def begins_with_r(array)
  begins = true

  array.each do |x|
    if x.chr != "r"
      begins = false
    end
  end

  begins
end

def contain_a(array)
  array.select do |x|
    x.include? "a"
  end
end

def first_wa(array)
  array.find do |x|
    x.to_s.index("wa") == 0
  end
end

def remove_non_strings(array)
  array.delete_if do |x|
    String.try_convert(x) == nil
  end
end

def count_elements(array)
  arr2 = []
  array.each do |x|
    if ( !arr2.include?(x) )
      arr2 << x
    end
  end
  arr2.collect do |y|
    count = array.count(y)
    y.store(:count, count)
  end
  arr2
end

def merge_data(array, data)
  merged = []
  array.each do |x|
    x.values.each do |value|
      data.each do |y|
        y.keys.each do |key|
          if (value == key)
            merged_hash = y[key]
            merged_hash.store(x.key(value), value)
            merged << merged_hash
          end
        end
      end
    end
  end
  merged
end

def find_cool(array)
  array.delete_if do |x|
    x[:temperature] != "cool"
  end
end

def organize_schools(schools)
  location_hash = Hash.new(0)
  schools.each do |school, value|
    name_array = [school]
    location = value[:location]
    if (location_hash.has_key?(location))
      name_array = location_hash[location]|name_array
    end
    location_hash.store(location, name_array)
  end
  location_hash
end