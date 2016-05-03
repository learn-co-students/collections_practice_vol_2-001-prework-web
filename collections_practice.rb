def begins_with_r(tools)
  tools.all? { |word| word.start_with?("r") }
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.delete_if { |element| element.class != String }
  array.find { |word| word.start_with?("wa") }
end

def remove_non_strings(array)
  array.delete_if { |element| element.class != String }
end

def count_elements(array)
  counts = {}
  array.each do |element| # for each element in array
    name = element[:name] # set name to value, i.e. name = "blake"
    counts[name] ? counts[name] += 1 : counts[name] = 1
    # if counts["name"] exists, add 1 to value
    # if counts["name"] does not exist (returns nil), set "name"=>1
    # counts => {"blake"=>2, "ashley"=>1}
  end
  counts.map { |key, value| {:name => key, :count => value} }
  # return a formatted array with Array#map 
end

def merge_data(keys, data)
  combined = []
  keys.each do |element|
    combined << element.merge(data[0][element[:first_name]])
  end
  combined
end

def find_cool(array)
  array.select { |e| e[:temperature] == "cool" }
end

def organize_schools(array)
  schools_by_city = {}
  array.each do |key,val|
    if schools_by_city.has_key?(val[:location])
      schools_by_city[val[:location]].push(key)
    else
      schools_by_city[val[:location]] = [key]
    end
  end
  schools_by_city
end