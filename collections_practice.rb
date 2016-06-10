require 'pry'
# your code goes here
def begins_with_r(array)
  array.any? {|x| x.split("").first != "r" }? false : true
end
def contain_a(array)
  arr=[]
  array.each {|x| arr << x if x.split("").include? "a"}
  arr
end
def first_wa(array)
  array.any? {|x| return x if x.to_s.start_with?("wa")}
end
def remove_non_strings(array)
  array.delete_if{|x| x.class !=String}
end

def count_elements(array)
  #.merge(:count => "")
  array.each { |original_h|
    original_h[:count]=0
    name = original_h[:name]
    array.each {|hash| original_h[:count]+=1 if hash[:name]== name}
  }.uniq

end

def merge_data(keys,data)
  array=[]
  keys.each {|n|
    name= n[:first_name]
    data.each{|d|
      if d[name]
        merged= d[name]
        merged[:first_name]=name
        array << merged
      end
    }
  }
  array
end
def find_cool(array)
    arr=[]
    array.each {|e| arr << e if e[:temperature]=="cool"}
    arr
end
def organize_schools(schools)
  organized_schools={}
  schools.each {|name, location_h|
    location= location_h[:location]
    organized_schools[location]? (organized_schools[location] << name): (organized_schools[location]=[] ; organized_schools[location] << name)
    }
    organized_schools
end
