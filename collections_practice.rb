def begins_with_r(array)
  array.each do |element|
    letters = element.split("")
    if letters[0]!="r"
      return false
    end
  end
  return true
end

def contain_a(array)
  as=[]
  array.each do |element|
   letters = element.split("")
   if letters.include?("a")
as << element
end
end
return as
end

def first_wa(array)
  array.each do |element|
    letters = element.to_s.split("")
    if letters[0] == "w" && letters[1] == "a"
      return element
    end
  end
end

def remove_non_strings(array)
  stringsonly=[]
  array.each do |element|
    if element.is_a?(String) == true
stringsonly<<element
end
end
return stringsonly
end

def count_elements(array)
  hashesarray=[]
nameshash=Hash.new(0)
array.each do |hash|
  hash.each do |key, val|
nameshash[val] +=1
end
end
nameshash.each do |name1, count1|
  namecounthash=Hash.new(0)
  namecounthash[:name]=name1
  namecounthash[:count]=count1
  hashesarray << namecounthash
end
return hashesarray
  end



def merge_data(hash1, hash2)
  newhash=[]
  hash2.each do |hash|
    hash.each do |key, val|
            newerhash={}
      hash1.each do |keyshash|
        keyshash.each do |keyskey, keysval|
          if key == keysval
            newerhash[keyskey] = keysval
          end
        end
      end
      if hash1[0].values.include?(key) || hash1[1].values.include?(key)
        val.each do |key4, val4|
          newerhash[key4] = val4
        end
      end
          newhash << newerhash
        end
  end
return newhash
end

def find_cool(array)
  cool_array=[]
 array.each do |hash|
  hash.each do |key, val|
    if val == "cool"
      cool_array << hash
    end
  end
end
return cool_array
end




