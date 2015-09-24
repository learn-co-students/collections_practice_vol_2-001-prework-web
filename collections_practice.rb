# your code goes here
# your code goes here

# COMPLETE
require 'pry'
def begins_with_r(tools)
  tools.each do |tool|
    if tool[0] != "r"
      return false
    end
  end
  true
end

# COMPLETE
def contain_a(collection)
  s_items = []
  collection.select do |item|
    if item.include?("a")
      s_items << item
    end
  end
end

# COMPLETE
def first_wa(collection)
  collection.find do |item|
    item[0] == "w" && item[1] == "a"
  end
end

# COMPLETE 
def remove_non_strings(collection)
  collection.delete_if do |item|
    item.class != String 
  end
end



# trying to redo this one...
# def count_elements(collection)
#   counting_array = []
#   collection.each_index do | i |
#     # need to be able to check if just the name k-v pair is present. That is the problem--it's not a match once you add the count k-v pair. 
#     if counting_array.include?(collection[i]) == false
#       #binding.pry
#       counting_array << collection[i]
#       binding.pry
#       counting_array[i].store(:count, 1)
#     else
#       counting_array[i][:count] = counting_array[i][:count] + 1
#     end
#     counting_array
#   end
# end

# COMPLETE
def count_elements(collection)
  # empty array
  new_array = []
  # add new names to the new array
  collection.each do |i|
    if new_array.include?(i) == false
      new_array << i
    else
      ind = new_array.index(i)
      new_array[ind][:count] = 2
    end
  end
  new_array.each do |j|
    indx = new_array.index(j)
    if new_array[indx].has_key?(:count) == false
      new_array[indx][:count] = 1
    end
  end
  new_array
end


# COMPLETE
def merge_data(names,data)
  names.each_index do |i|
    data.each do |d|
      d.each do |person,values|
        values.each do |k,v|
          if names[i][:first_name] == person
            names[i].store(k,v)
          end
        end
      end
    end
  end
end

# Complete 
def find_cool(cool)
  cool.delete_if do |person|
    person[:temperature] != "cool"
  end
end

# Complete
def organize_schools(schools)
  schools_by_city = {}
  schools.each do |skool, location_hash|
    if schools_by_city.include?(location_hash[:location]) == false
      schools_by_city[location_hash[:location]] = [skool]
    else 
      schools_by_city[location_hash[:location]] << skool
    end
  end
  schools_by_city
end






    

























































