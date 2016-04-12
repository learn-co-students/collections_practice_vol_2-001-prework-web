def begins_with_r(tools)
  tools.each do |name|
    if not name.start_with?("r")
      return false
    end
 end
      return true
end

def contain_a(elements)
  elements.select {|letter| letter.include?("a")}
end

def first_wa(array)
  array.find {|name| name.to_s.start_with?("wa")}
end

def remove_non_strings(strings_unite)
  strings_unite.delete_if {|non_string| non_string.class != String}
end

def count_elements(words)
  words.uniq.each do |num|
    num[:count] = words.count(num)
    num
  end
end

def merge_data(criteria, value)
merged_data = []
  i = 0
  value.each do |data|
    data.each do |name, input|
      merged_data << input.merge(criteria[i])
      i += 1
    end
  end
  merged_data
end

def find_cool(cool)
  cool.select {|hashes| hashes.has_value?("cool")}
end

def organize_schools(schools)
by_location = Hash.new
  schools.values.each {|location| by_location[location.values[0]] = []}
  schools.each {|school, location| by_location[location.values[0]] << school}
  by_location
end