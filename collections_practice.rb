# your code goes here
def begins_with_r(array)
  counter = 0
  array.each do
    if array[counter].start_with?("r") == true
      counter += 1
    else
      return false
    end
  end
    return true
end

def contain_a(array)
  newarray = []
  counter = 0
  while counter < array.length
    if array[counter].include?("a") == true
      newarray << array[counter]
      counter += 1
    else
      counter += 1
    end
  end
  return newarray
end

def first_wa(array)
  newarray = []
  counter = 0
  while counter < array.length
    if array[counter].to_s.include?("wa") == true
      return array[counter]
      counter += 1
    else
      counter += 1
    end
  end
end

def remove_non_strings(array)
  newarray = []
  counter = 0
  while counter < array.length
    if array[counter].class == String
      newarray << array[counter]
      counter += 1
    else
      counter += 1
    end
  end
  return newarray
end


####WIP
def count_elements(arr)
   return_arr = []
   counted = []
   idx = 0
   while idx < arr.length
     idx2 = 0
     count = 0
     if counted.include?("#{arr[idx]}") == false
       counted << arr[idx].to_s
       while idx2 < arr.length
         if arr[idx] == arr[idx2]
           count += 1
         end
         idx2 += 1
       end
       new_hash = arr[idx]
       new_hash[:count] = count
       return_arr << new_hash
     end
     idx += 1
   end
   return_arr
 end
##########End WIP

def merge_data(keys, data)
   result_arr = []
  keyhash = keys
  datahash = data[0]#get the hash out of the array(it's only one element)

   keys.each do |i|
     i.each do |key, value|
       if datahash.has_key?(value) == true
         datahash[value][key] = value
       end
     end
   end

  result_arr = datahash.values
 end

def find_cool(cool)
   result_arr = []

   cool.each do |hash|
     if hash.has_value?("cool")
       result_arr << hash
     end
   end
   result_arr
end

		 def organize_schools(schools)
   nyc = []
   chicago = []
   sf =[]
   return_hash = {}

   schools.each do |school, loc_hash|
     if loc_hash.has_value?("NYC")
       nyc << school
     elsif loc_hash.has_value?("Chicago")
       chicago << school
     elsif loc_hash.has_value?("SF")
       sf << school
     end
   end

   return_hash["NYC"] = nyc
   return_hash["Chicago"] = chicago
   return_hash["SF"] = sf

   return_hash
 end
