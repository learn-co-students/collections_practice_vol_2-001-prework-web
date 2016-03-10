# your code goes here
def begins_with_r(array)
  array.each do |element|
    if element[0] != "r"
    return false
  end
end
return true
end

def contain_a(array)
  have_a=[]
  array.each do |element|
    x=0
    while x < element.length
      if element[x] == "a"
        have_a << element
      end
      x+=1
    end
  end
  return have_a
end

def first_wa(array)
  array.find do |element|
    element[0] == "w" && element[1] == "a"
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    element.is_a?(String) == false 
  end
  return array
end 

def count_elements(array)
  returning=[]
  array.each do |name|
    hash={}
      hash = name
      hash[:count] = 1
      returning<<hash
  end
  returning.shift(1)
  returning[0][:count] +=1
return returning
end

def merge_data(keys, data)
  keyarray=[]
  dataarray=[]
  realdataarray=[]
  elfinale=[]
  keys.each do |key|
    keyarray << key
  end
    data.each do |data|
    dataarray << data
  end
   realdataarray<<dataarray[0]["blake"]
   realdataarray<<dataarray[0]["ashley"]
   mergedarrayblake = keyarray[0].merge(realdataarray[0])
   mergedarrayashley = keyarray[1].merge(realdataarray[1])
   elfinale << mergedarrayblake
   elfinale << mergedarrayashley
return elfinale
end

def find_cool(hash)
  elfinale=[]
  hash.each do |value|
    value.each do |key, val|
    if val == "cool"
      elfinale << value
    end
  end
end
return elfinale
end

def organize_schools(schools)
  hash={}
  schools.each do |koy, val|
    val.each do |key, vald|
    hash[vald] = []
  end
end
schools.each do |firstkey, firstval|
firstval.each do |seckey, secval|
  if secval == "NYC"
    hash["NYC"] << firstkey
    elsif secval == "Chicago"
    hash["Chicago"]<<firstkey
    elsif secval == "SF"
    hash["SF"] << firstkey
    end 
end
end
  return hash
  end
