require 'pry'

def begins_with_r(tools)
  tools.all? do |tools| tools.start_with?("r")
  end
end

def contain_a(words)
  a2 = []
  words.each do |x| 
    if x.match "a"
    a2 << x
  end
  end
  return a2
end

def first_wa(words)
 a2 = []
  words.each do |x| 
    if x.is_a?(String) && x.start_with?("wa") == true
      a2 << x   
    end
  end  
  return a2.first
end

def remove_non_strings(array)
  a2 = []
  array.each do |x| 
    if x.is_a?(String) == true
      a2 << x
    end
  end  
  return a2
end

#array = [{:name=>"blake"}, {:name=>"blake"}, {:name=>"ashley"}]
#[{:name=>"blake"}, {:name=>"ashley"}]
def count_elements(array)
#  hash = {}
#  a2 = []
  array.uniq.map do |names|
    names[:count] = array.count(names)
    names
#    names[:name] = names
  end
#  hash
end
#count_elements(array)

def merge_data(keys, data)
  array = []
  a2 = []
  keys.each do |hash|
    names = hash.values
    array.push(hash.merge!(data[0][hash.values[0]]))
#    person.unshift(set.merge!(second[0]))
  end
  array
end


def find_cool(hash)
  array = []
  hash.each do |set|
    set.each do |key, value|
      if value == "cool"
        array << set
      end 
    end
  end  
  array
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

#def organize_schools(hash)
#  organized = {}
#  hash.each do |key, data|
#    data.each do |description, hash|
#      array << description
#      hash.each do |key, locations|
 #       organized[hash] = array
#      end  
 #   end
#  end
#  organized 
#end

