def begins_with_r(arr)

!arr.any? do |elm|
  elm[0]!="r"
end
end

def contain_a(arr)
  arr.select do |elm|
    elm.include?("a")
  end 
end

def first_wa(arr)
  arr.find do |elm|
    elm[0..1]=="wa"
end
end

def remove_non_strings(arr)
  arr.delete_if do |elm|
    elm.class != String
  end 
end



def count_elements(arr)
  new_arr=[]
  non_rpt=[]
  arr.each do |elm|
    (new_arr << elm.merge({:count => (arr.select {|subelm| subelm==elm}).length})) if !non_rpt.include?(elm)
    non_rpt<<elm
  end
new_arr
end

def merge_data(keys, data)
 new_arr=[]
 keys.each do |key_hash|
  top_hash= data.find {|mid_hash| mid_hash.has_key?(key_hash[:first_name])}
   new_arr<<key_hash.merge(top_hash[key_hash[:first_name]])
  #data_hash_i_want = data.find do {|thing| thing.has_key?(key_hash[:first_name])[key_hash[:first_name]]}
  end
new_arr

end

def find_cool(arr)
  arr.select do |hsh|
    hsh[:temperature]=="cool"
  end 
end

def organize_schools(hsh)

hsh_out={}
hsh.each do |key,val|
  if !hsh_out.has_key?(val[:location])
    hsh_out.merge!(val[:location]=>[])
  end
  hsh_out[val[:location]]<<key
end
hsh_out
end


