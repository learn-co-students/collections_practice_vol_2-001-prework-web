# your code goes here

def begins_with_r(arr)
  arr.all?{|x| x.start_with?("r")}
end

def contain_a(arr)
   arr.select{|x| x.include?("a")}
end

def first_wa(arr)
  arr.each{|str| return str if str.to_s.start_with?("wa") }
end

def remove_non_strings(arr)
  arr.select{|item| item.is_a?(String) }
end

def count_elements(arr)
  count = Hash.new(0)
  name_count = []
  arr.each do |hash|
    hash.each do |key, value|
      count[value] += 1
    end
  end
  count.each do |k, v|
    name_count << {:name => k, :count => v}
  end
  name_count
end

def merge_data(keys, data)
  merged = []
  data.each do |hash|
    hash.each do |k, v|
      v[:first_name] = k
      merged << v
    end
  end
 merged
end

def find_cool(hash)
  super_cool = []
  hash.each do |h| 
    h.each do |k,v| 
      super_cool << h if v == "cool"
    end
  end
  super_cool
end

def organize_schools(schools)
  organized = Hash.new([])
  schools.each do |school, loc|
    loc.each do |l, city|
      organized[city] = []
    end
  end
  schools.each do |school, loc|
    loc.each do |l, city|
      organized[city] << school
    end
  end
 organized

end









#