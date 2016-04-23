# your code goes here

# Return true if every element of the tools array starts with an "r" and false otherwise.
# should return false if there's an element that does not begin with r
def begins_with_r(array)
    array.all? do |element|
    element[0] == ("r")
  end
end

# return all elements that contain the letter 'a' 
def contain_a(array)
  array.select do |element|
    element.include?("a")
  end  
end

# Return the first element that begins with the letters 'wa'
def first_wa(array)
  array.find do |element|
    element =~ /wa/
  end
end

# remove anything that's not a string from an array 
def remove_non_strings(array)
  array.delete_if do |element|
    element != element.to_s
  end
end

# count how many times something appears in an array
def count_elements(array)

end

# combines two nested data structures into one
def merge_data(keys, data)
    keys.each do |hash|
        person = hash[:first_name]
        data = hash[key].merge(hash)
    end
    # keys.class == Array
    # keys.each do |hash|
    #     person = hash[:first_name]
    #     data # => Find in data a hash with the key of blake,
    #     # merge it with `hash`
    # end
end

# find all cool hashes
def find_cool(array)
    
end

# organizes the schools by location
def organize_schools
    
end
