def begins_with_r(array)
  x=0
  array.each do |e|
  if String.try_convert(e)!=nil
    if e.start_with?("r")
      x+=1
    end
  end
  end

  if array.length==x
    true
  elsif array.length!=x
    false
  end
end

def contain_a(array)
  k=[]
  array.each do |e|
    if e.include?("a")==true
      k << e
    end
  end
  k
end
def first_wa(array)
    x=0
    array.each do |e|
    if String.try_convert(e) != nil
      
    if e.start_with?("wa") && x==0
      return e
      x+=1
    end
    end
end
end
def remove_non_strings(array)
  k=[]  
  array.each do |e|
  
  if String.try_convert(e) != nil
      
  k << e
  end 
end
k
end

def count_elements(array)
array_uniq = array.uniq
array_uniq.map{|e| {:name => e[:name], :count => array.count(e)} }
end


def merge_data(key, data)
int = 0
array = []
key.each do |x|
v = (x.values).join('')
m = data[0][v]
r = m.merge(x)
array.push(r)
end 
return array 
end

def find_cool(cool)
r =[] 
cool.each do |x|
   x.each do |k, v|
     if v == "cool"
        r.push(x) 
     end
    end 
  end
  r
end

def organize_schools(schools)
   location = []
   (schools.values).each do |x|
       location.push(x.values.join(""))
   end
   location = location.uniq
   og_s = Hash[location.map{|key,value| [key,Array.new()]}] 
 
 
   location.each do |l|
      schools.each do |key, v|
        if ((v.values).join("")) == l
          og_s[l].push( key )
        end
       end
   end 
   og_s
end

#contain_a(["earth", "fire", "wind", "water", "heart"])
#first_wa(["candy", "wall", :ball, "wacky"])
#remove_non_strings(["blake", 1, :hello])
#count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])
#begins_with_r(["ruby", "rspec", "sails"])
# begins_with_r(["ruby", "rspec", "rails"])
count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])

# your code goes here
