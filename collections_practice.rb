# your code goes here
# your code goes here
def begins_with_r(array)
    array.each do |word|
      return false if word[0] != "r"
    end
  true
end

def contain_a(array)
  array.select {|word| word.include? ("a")}
end

def first_wa(array)
  array.find {|element| element.to_s[0..1] == "wa"}
end


def remove_non_strings(array)
  array.select {|element| element.is_a?(String)}
end

def count_elements(array)
  counts = {}
  count_array = []

  array.each {|element| counts[element] = 0}
  array.each {|element| counts[element] +=1 }

  counts.each do |hash, count|
    count_array.push(hash.merge({:count => count}))
  end

  count_array
end

def merge_data(key, value)
  merged_data - []

  data.each do |hash|
    hash.each do |name, traits|
      new_hash = {:first_name => name}
      merged_data.push(new_hash.merge(traits))
    end
  end
  merged_data
end

def find_cool(array)
  array.select {|hash| hash[:temperature] == "cool"}
end

def organize_schools(schools)
  locations = {}

  schools.each do |school, info|
    location = info[:location]
    locations[location] ||= []
    locations[location].push(school)
  end
locations
end