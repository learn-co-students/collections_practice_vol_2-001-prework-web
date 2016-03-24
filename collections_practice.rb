def begins_with_r(array)
  array.all? {|word| word.start_with? "r"}
end

def contain_a(array)
  words_with_a = []
  array.each do |word|
    if word.include? "a"
      words_with_a << word
    end
  end
  words_with_a
end

def first_wa(array)
  array.find {|word| word[0..1]== "wa" }
end

def remove_non_strings(array)
  array.select {|item| item.class == String}
end

def count_elements(array)
  newArray=[]
  array.each do |word|
      newArray << {:name =>"#{word[:name]}", :count => array.count(word)}
  end
  newArray.uniq
end

def merge_data(keys, data)
  new_arr = []

   data.each do |data_hash|
     data_hash.each do |name, attributes_hash|
       keys.each do |name_hash|
         if name_hash.values.first == name
           new_arr << name_hash.merge(attributes_hash)
         end
       end
     end
   end
   new_arr
end

def find_cool(cool)
  answer = []
    cool.each do |element|
      element.each do |key, value|
        answer << element if value == "cool"
      end
    end
  answer
end

def organize_schools(schools)
   answer = Hash.new
   schools.each do |school, data|
     data.each do |key, value|
       if key == :location
         !answer.keys.include?(value) ? answer[value] = [school] : answer[value] << school
       end
     end
   end
   answer
end