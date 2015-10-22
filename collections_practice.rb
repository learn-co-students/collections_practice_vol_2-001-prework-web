def begins_with_r(array)
  array.all? do |a|
    a[0] == 'r' || a[0] == 'R'
  end
end

def contain_a(array)
  new_array = array.select do |a|
    a.include?('a') || a.include?('A')
  end
end

def first_wa(array)
  first_wa = array.find() do |a|
    a.to_s.start_with?('wa')
  end
end

def remove_non_strings(array)
  array.delete_if do |a|
    a.class != String
  end
end

def count_elements(names)
  counts = []
  names.each do |name|
    name.each do |key, value|
      item = counts.find { |count| count[key] == value }
      if item != nil
        item[:count] += 1
      else
        counts << { key => value, :count => 1}
      end
    end
  end
  counts
end

def merge_data(keys, data)
  merged = []
  keys.each do |key|
    key.each do |k, v|
      found_item = data.find { |data_item| data_item[v] != nil }
      if found_item != nil
        merged << key.merge(found_item[v])
      end
    end
  end
  merged
end

def find_cool(hashes)
  hashes.delete_if do |h|
    h[:temperature] != 'cool'
  end
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school|
    if organized_schools[school[1][:location]] == nil
      organized_schools[school[1][:location]] = [school[0]]
    else
      organized_schools[school[1][:location]].push(school[0])
    end
  end
  organized_schools
end