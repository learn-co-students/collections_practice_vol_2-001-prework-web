# your code goes here
def begins_with_r(name)
  name.all? do |tool|
    tool[0] == "r"
  end
end

def contain_a(argument)
  argument.select do |element|
    element.include?("a")
  end
end

def first_wa(new)
  new.detect do |lay|
    lay[0..1] == "wa"
  end
end

def remove_non_strings(arr)
  arr.each do |string|
    if string.class == String
      return string.split(",")
    else
      string.delete
    end
  end
end

def count_elements(array)
  array.uniq.each {|i| count = 0
      array.each { |b| if b == i then count += 1 end}
      i[:count] = count}
end

def merge_data(key, data)
  merged = []
  keys.each {|i| data.first.map { |a,b| if i.values[0] ==  a
    then merged << i.merge(b) end}}
    merged
end

def find_cool(hash)
  hash.select { |i| i.any? { |a, b| b == "cool"}}
end

def organize_schools(school)
  loc_hash = {}
  schools.collect {|a,b| loc_hash[b[:location]] = []}
  loc_hash.each {|a,b| schools.each {|a1, b1| if a ==
    b1[:location] then b << a1 end}}
end
