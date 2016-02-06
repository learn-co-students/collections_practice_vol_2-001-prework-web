# your code goes here
def begins_with_r(array)
  if array.all? { |name| name.start_with?('r')}
    return true
  else
    return false
  end
end

# p begins_with_r(["ruby", "rspec", "rails"])

def contain_a(array)
  array_of_a = Array.new
  array.each do |name|
    if name.split("").sort[0] == 'a'
      array_of_a  << name
    end
  end
  p array_of_a
end

# contain_a(["earth", "fire", "wind", "water", "heart"])

def first_wa(array)
  array.find {|name| name[0..1] == 'wa'}
end
# first_wa(["candy", :pepper, "wall", :ball, "wacky"])

def remove_non_strings(array)
  array.delete_if do |name|
   name.class != String
  end
end

# remove_non_strings(["blake", 1, :hello])


def count_elements(array)
  new_array = []
  array.each do |item| 
    new_array << item unless new_array.include?(item)
  end
  new_array.each do |item| 
    arr = array.select{|value| item == value}
    item[:count] = arr.length
  end
  new_array
end

# count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])

def merge_data(arr1, arr2)
# Iterate throug the first array
  arr1.each do |person|
    #Iterate through the second array
    arr2.each do |name| 
      #name['blake'].each do |key,value|
      name[person[:first_name]].each do |key, value|
        #this will add these items to the first array
        #Example person[:awesomeness] = 10 will be in array 1 now
         person[key] = value
      end
    end

    end
    #return the array 1 to pass test
  arr1
end
#DRIVER CODE
# key = [{:first_name => "blake"},{:first_name => "ashley"}]

# data =[{"blake" => {
#         :awesomeness => 10,
#         :height => "74",
#         :last_name => "johnson"
#         },
#         "ashley" => {
#         :awesomeness => 9,
#         :height => 60,
#         :last_name => "dubs"
#         }
#       }]
# merge_data(key,data)

def find_cool(array)
  new_array = Array.new
    array.each do |section|
      section.each do |name,value|
       if section[name] == 'cool'
          new_array << section
       end
      end
    end
    new_array
end

#DRIVER CODE
# find_cool([{:name => "ashley",:temperature => "sort of cool"},{:name => "blake",:temperature => "cool"}])

def organize_schools(hash)
hash_of_arrays = Hash.new
  hash.each do |item|
     hash_of_arrays[item[1][:location]] = [] unless hash_of_arrays.include?(item[1][:location])
    end
  hash_of_arrays.each do |item|
    hash.each do |school|
      item[1].push school[0] if school[1][:location] == item[0]
    end
  end
   return hash_of_arrays
end

#DRIVER CODE
# organize_schools({"flatiron school bk" => {:location => "NYC"},
#   "flatiron school" => {:location => "NYC"},
#   "dev boot camp" => {:location => "SF"},
#   "dev boot camp chicago" => {:location => "Chicago"},
#   "general assembly" => {:location => "NYC"},
#   "Hack Reactor" => {:location => "SF"}
#   })





