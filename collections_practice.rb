# your code goes here
def begins_with_r(array)
  array.all? { |word| word.start_with?("r") }
end

def contain_a(array)
  array.select { |word| word.include?("a") }
end

def first_wa(array)
  array.find { |word| word.start_with?("wa") unless word.class == Symbol }
end

def remove_non_strings(array)
  array.delete_if { |element| element.class != String }
end

def count_elements(array)
  # get unique items from 'array'
  targets = array.uniq
  new_array = []

  for element in targets do
    # count the occurences of 'element' in array and that becomes the value
    # for ':count'. Then merge that into the existing hash. Finally, push the
    # merged hash onto 'new_array'
    new_array.push(element.merge(:count => array.count(element)))
  end
  new_array
end

def merge_data(keys, data)
  merged_data = []

  keys.map do |hash|
    data[0].map do |person, attr_hash|
      if hash.has_value?(person)
        merged_data << hash.merge(attr_hash)
      end
    end
  end
  merged_data
end

def find_cool(array_of_hashes)
  array_of_hashes.map { |hash| return [hash] if hash.has_value?("cool") }
end

def organize_schools(schools_hash)
  organized = {}

  schools_hash.each do |school_name, info|
    info.each do |location, city|
      if organized.has_key?(city)
        organized[city] << school_name
      else
        organized[city] = [] << school_name
      end
    end
  end
  organized
end
