require 'pry' # your code goes here
def begins_with_r(input_array)
  if input_array == input_array.find_all {|element| element[0] == "r"}
    true
  else
    false
  end
end

def contain_a(input_array)
  output_array = []
  input_array.each do |element|
    if element.include?("a")
      output_array << element
    else
      #do nuffin'
    end
  end
  output_array
end

def first_wa(input_array)
  input_array.find {|element| element[0] == "w" && element[1] =="a" }
end

def remove_non_strings(input_array)
  input_array.delete_if {|element| !element.is_a?(String) }
end

def count_elements(input_array)
  unique_array = input_array.uniq
  unique_array.each do |uniq|
    count = 0
    input_array.each do |element|
      if element == uniq
        count += 1
      end
    end
    uniq[:count] = count
  end
  unique_array
end

def merge_data(data1, data2)
#This code smells so bad...
  keys1 = []
  values1 =[]
  data1.each do |nest1|
    keys1 << nest1.keys
    values1 << nest1.values
  end
  keys1.flatten!
  values1.flatten!
  keys2 = data2[0].keys
  values2 = data2[0].values
  merged_hash = {}
  data1.each do |key|
  i=0
  values2.each do |element|
    element[keys1[i]] = values1[i]
    i+=1
  end
end
  values2
end

def find_cool(hash_array)
  answer = []
  hash_array.each do |item|
    #binding.pry
    item.each do |key,value|
      if value=="cool"
        answer << item
      end
    end
  end
  answer.uniq
end

def organize_schools(input)
#  binding.pry
  organized_by_location = {}
  input.each do |school, data|
    data.each do |key, city|
      if !organized_by_location.keys.include?(city)
        organized_by_location[city] = [school]
      else
        organized_by_location[city] << school
      end
    end
  end
  organized_by_location
end
