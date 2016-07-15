# your code goes here
def begins_with_r(array)
  array.all? do |word| 
    word[0] == "r"
  end    
end

def contain_a(array)
  array.select do |word|
    word.include?("a") 
  end  
end  

def first_wa(array)
  array.find do |word|
    word[0] == "w" && word[1] == "a"
  end
end

def remove_non_strings(array)
  array.delete_if do |word|
    word.is_a?(String) != true
  end
end        

def count_elements(arr) #found this method on Stack Overflow!
arr.each_with_object(Hash.new(0)) { |g,h| h[g[:name]] += 1 }.
    map { |name, count| { :name=>name, :count=>count } }
end

def merge_data(array1, array2)# solution found through a bunch of googling
  array1.collect do |h|
    h.merge(array2[0].shift[1])
    end
end

def find_cool(array)
      array.select {|i| i.any? {|k,v| v == "cool"}} 
end

def organize_schools(schools)
  locations_hash = {} #also got from googling/looking at past pulls of this lab
  schools.collect {|k,v| locations_hash[v[:location]] = []}
  locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end

















