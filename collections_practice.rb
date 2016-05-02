def begins_with_r(array)
  f = 0

  array.each do |item|
    if item[0].downcase != 'r'
      f += 1
    end
  end
    if f > 0
      return false
    else
      return true
    end
end

def contain_a(array)
  aArray = []
  i = 0
  while i < array.size do
    if array[i].downcase.include?('a') == true
      aArray.push(array[i])
    end
    i+=1
    end
    aArray
  end


def first_wa(array)
  return array[array.find_index {|i| i[0].downcase == "w" and i[1].downcase == "a"}]
end


def remove_non_strings(array)
returnArray = []
  array.each do |item|
    if (item.instance_of? String) == true
      returnArray.push(item)
    end
  end
    returnArray
end

def count_elements(array)
  uniqArray = array.uniq
  returnArray = []
  i = 0
  while i < uniqArray.size do
    count = 0
    a = 0
    while a < array.size do
      if uniqArray[i] == array[a]
        count += 1
      end
      a += 1
    end
    returnHash = {}
    returnHash[:name] = uniqArray[i][:name]
    returnHash[:count] = count
    returnArray.push(returnHash)
    i+=1
  end
return returnArray
end


def merge_data(data1, data2)
  returnArray = []

  data1.each do |full_key1, value|
    data_hash = {}
    full_key1.each do |key1, value1|
      data_hash[key1] = value1
      data2.each do |full_key2, value|
        full_key2.each do |key2, value2|
          value2.each do |key, value|
            if value1 == key2
              data_hash[key] = value
            end
          end
        end
      end 
      returnArray.push(data_hash)
    end
  end
  return returnArray
end

def find_cool(array)
  returnArray = []
  array.each do |key, item|
    hold = key
    key.each do |key, item|
      if item == "cool"
        returnArray.push(hold)
      end
    end
  end
  return returnArray
end

def organize_schools(array)
  returnHash = {} 

 array.each do |school_name, school_location_hash|
  school_location_hash.each do |location_tag, location|
    if returnHash.has_key?(location) == false
      returnHash[location] = []
    end
    returnHash[location].push(school_name)
  end
 end
 return returnHash
end


















