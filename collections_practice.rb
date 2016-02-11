# your code goes here
def begins_with_r(array)
#Return true if every element of the tools array starts with an "r" and false otherwise.
#should return false if there's an element that does not begin with r
  array.all? do |x|
    x.start_with?"r"
  end

end


def contain_a(array)
  # return all elements that contain the letter 'a'
  array.select do |x|
    x.include? "a"
  end
end

def first_wa(array)
  #Return the first element that begins with the letters 'wa'
  array.detect do |x|
    x.start_with?"wa"
  end
end

def remove_non_strings(array)
  #remove anything that's not a string from an array
  array.find_all do |x|
    x.is_a? String
  end
end

def count_elements(ary,element)
  #count how many times something appears in an array
  ary.count(element)
end

def merge_data
  #combines two nested data structures into one
end

def find_cool
  #find all cool hashes
end

def organize_schools
  #organizes the schools by location
end

puts count_elements(["candy", "candy", "wall", :ball, "wacky"],"candy")