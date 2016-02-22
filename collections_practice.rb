def begins_with_r(arr)
  x = 0
  r_arry = []
 lgth = arr.count
  while x < lgth
    res = arr[x].start_with?("r")
    if res == true
       r_arry << res
    end
     x+=1
  end
   if r_arry.count == arr.count
     return true
   else
     return false
   end
end

def contain_a(arr)
  arrcount= 0
  a_box =[]
  while arrcount < arr.length
    letters = arr[arrcount].split('')
    if letters.include?("a")
      a_box << arr[arrcount]
    end
    arrcount+=1
  end
  return a_box
end

def first_wa(arr)
  arrcount= 0
  while arrcount < arr.length
     letters = arr[arrcount].to_s.split('')
    if (letters[0] == "w") && (letters[1] == "a")
      return arr[arrcount]
    end
    arrcount+=1
  end
end

def remove_non_strings(arr)
#     remove anything that's not a string from an array (FAILED - 5)
    arr.delete_if {|x| !(x.is_a?(String))}
    return arr
end
# expected: [{:name=>"blake", :count=>2}, {:name=>"ashley", :count=>1}]
#             got: [{:name=>"blake"}, 1, {:name=>"blake"}, 2, {:name=>"blake"}, 2]

def count_elements(arr)
#     hash_arr ={name: "", count: 0}

new_hash = Hash.new(0)

arr.collect do |x|
   x[:count]= 0
end

# iterate and count same entries and return the number
arr.each do |v|
  new_hash[v] += 1
end

  new_hash.each do |k, v|
      k[:count]=v
  end
  return new_hash.keys

end

def merge_data(keys, data)
#     combines two nested data structures into one (FAILED - 7)
a_box = []

count =0
  while count < keys.length
      a = keys[count]
      b = data[0].values
      newm =  a.update(b[count])
      #inserts into array
      a_box << newm
      count+=1
  end

return a_box

end


def find_cool(cool)
#     find all cool hashes (FAILED - 8)
#  expect(find_cool(cool)).to eq([{:name => "blake",:temperature => "cool"}])
a_box = []
count =0
  while count < cool.length
      a = cool[count]
      b = cool[count].fetch(:temperature)
      if b == "cool"
        a_box << cool[count]
      end
      count+=1
  end

return a_box
end



def organize_schools(schools)
 loc_key = schools.values
lgh =schools.to_a
 new_hash =Hash.new

 count =0
 while count < lgh.length
    school_box =[]
    city = loc_key[count].values
    schools.each do |school_name, value|
      if  value.values == city
         school_box <<  school_name
     end
    new_hash[city.join]= school_box
   end
   count+=1
 end

return new_hash

end

