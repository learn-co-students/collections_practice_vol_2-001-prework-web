# your code goes here
def begins_with_r(tools)
  always_r = true
  tools.each do |word|
    always_r = false if word[0] != 'r'
  end
  return always_r
end

def contain_a(my_arr)
  with_a = my_arr.select {|word| word.include?("a") }
  return with_a
end

def first_wa(tools)
  with_a = tools.find {|word| word[0] == 'w' && word[1] == 'a'}
  return with_a
  
end

def remove_non_strings(my_arr)
  only_strings = my_arr.select {|word| word.is_a? String }
  return only_strings
end

def count_elements(my_arr)
  new_array = []
  my_arr.each { |item| new_array << item unless new_array.include?(item)}
  new_array.each do |item| 
    arr = my_arr.select{|thing| item == thing}
    item[:count] = arr.length
  end
  return new_array
end

def merge_data(arr2, arr1)

  #loop through array2 to add to each one
  #loop through array1 to add each element to array2
  
  arr2.each do |person| #loops names with names
    #puts person.to_s + " ===" 
    arr1.each do |annoying_structure| #loops first to get attributes
      annoying_structure[person[:first_name]].each do |key, value|
        person[key] = value
      end
    end
  end
  return arr2
  #arr1.each |key, value| 
end

def find_cool(my_arr)
  
  new_array = my_arr.select do |element|
    element[:temperature] == "cool"
  end
  return new_array
end

def organize_schools(schools)
  organized_schools = Hash.new
  schools.each { |item| organized_schools[item[1][:location]] = [] unless organized_schools.include?(item[1][:location])}
  organized_schools.each do |item|
    #puts item[0].is_a? Symbol
    
    #item[0] = string with location
    #item[1] = empty array
    arr = schools.each do |school| 
      #school[0] is a string with the name of the school
      item[1].push school[0] if school[1][:location] == item[0]
    end
  end
  return organized_schools
end

schools = [["Hack Reactor", {:location=>"SF"}], ["dev boot camp", {:location=>"SF"}], ["dev boot camp chicago", {:location=>"Chicago"}], ["flatiron school", {:location=>"NYC"}], ["flatiron school bk", {:location=>"NYC"}], ["general assembly", {:location=>"NYC"}]]

puts organize_schools(schools)

#array_1 = [{"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"}, "ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}}]
#array_2 = [{:first_name=>"blake"}, {:first_name=>"ashley"}]

#merge_data(array_1, array_2)

#puts count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])
