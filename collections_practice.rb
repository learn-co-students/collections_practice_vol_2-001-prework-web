# your code goes here
def begins_with_r(array)
  array.all? {|str| str[0].include?('r'||'R')}
end

def contain_a(array)
  array.select {|str| str.include?('a'||'A')} 
end

def first_wa(array)
  array.find {|str| str[0..1] == "wa"} 
end

def remove_non_strings(array)
  array.delete_if {|item| !item.is_a?(String)}
end

#I do not understand how the following works yet! Main struggles came from not being able to format in the way rspec tests required
######################################################################################################################################
##                                    RETURN TO THIS SECTION AFTER GOING THROUGH HASHES ON LEARN                                    ##
######################################################################################################################################
def count_elements(array)
 #create a new Hash
 name_to_count = {}
 #for each element in the array, set the name equal to the fisrt part of the value pair
 array.each do |a|
  name = a[:name]
  #use if/else statment to count the number of instances of element
    if name_to_count.include?(name)
      name_to_count[name] += 1
    else
      name_to_count[name] = 1
      end
    end
    #create a new empty array that new Hashes will be pushed to
    result = []
    #push name/value pairs of 'name_to_count' Hash to new array
    name_to_count.each do |k,v|
      result << {:name => k, :count => v}
    end
    #return new array
    result
  end

#I do not understand how the following works yet!
  def merge_data(keys, data)
    #create new empty array that I will push Hashes to
    result = []
    data = data[0]
    keys.each do |element|
      first_name = element[:first_name]
      keys = {:first_name => first_name}
      keys.merge!(data[first_name])
      result << keys
    end
    result
  end

  def find_cool(array)
    result = []
    array.each do |i|
      if i[:temperature] == "cool"
        result << i
      end
    end
    result
  end

#this I do not understand at all
def organize_schools(schools)
  result = {}
    schools.each do |name, school|
      location = school[:location]
      if result.has_key?(location)
          result[location] << name
      else
          result[location] = [name]
      end
    end
    result
end































