# your code goes here
require 'pry'
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

def count_elements(arr)
  #count how many times something appears in an array
  a = []

  arr.each do |hash|
    count = arr.count(hash)
    hash_mod = hash.merge({:count=>count})
    a << hash_mod
  end
  end_a = a.uniq
  end_a
end
#expected [{:first_name=>"blake", :awesomeness=>10, :height=>"74", :last_name=>"johnson"}, {:first_name=>"ashley", :awesomeness=>9, :height=>60, :last_name=>"dubs"}]
def merge_data(keys, data)
  #combines two nested data structures into one

  keys.each do |key_arr|
    key_arr.each do |key,name|
      binding.pry
      data.each do |data_arr|
        binding.pry
        data_arr.each do |data_name, attributes|
          binding.pry
          if name == data_name
            attributes.each do |attribute, value|
              key << {attribue=>value}
              binding.pry
            end
          end
        end
      end
    end
  end
end

def find_cool
  #find all cool hashes
end

def organize_schools
  #organizes the schools by location
end
