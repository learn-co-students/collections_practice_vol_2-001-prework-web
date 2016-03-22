# your code goes here
def begins_with_r(array)
  array.all?{|x| x[0]=="r"}
end

def contain_a(array)
   new_array=[]
   array.each do |k|
     if(k.include?("a")) then new_array << k end
   end
   new_array
end

def first_wa(array)
  array.detect {|j| j.to_s.include?("wa")}
end

def remove_non_strings(array)
  array.select {|g| g.kind_of?(String)}
end

def count_elements(array)
  counted = Hash.new(0)
  array.each {|x| counted[x[:name]] += 1}
  new_array = []
  counted.each.with_index do |k,i|
    new_array[i] = {:name=>k[0],:count=>k[1]}
  end
  new_array
end

def find_cool(cool)
  rtn_array = []
  cool.each do |ary|
    ary.each do |key, value|
      if value == "cool" then rtn_array << ary end
    end
  end
  rtn_array
end

def merge_data(keys, data)
  new_struct,i = [], 0
  keys.each {|hash| new_struct << hash}

  data.each do |ary|
    ary.each do |name,traits|
      traits.each do |trait,value|
        new_struct[i][trait] = value
      end
      i += 1
    end
  end
  new_struct
end

def organize_schools(schools)
  organized = {"NYC"=>[],"SF"=>[],"Chicago"=>[]}
  schools.each do |school, locations|
    locations.each do |location,city|
      organized[city] << school
    end
  end
  organized
end
