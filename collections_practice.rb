# your code goes here
def begins_with_r(array)
  array.all? do |s|
    s[0] == "r"
  end
end
def contain_a(aladin)
aladin.select do |f|
  f.include?("a")
end
end
def first_wa (pepe)
pepe.find do |we|
we.to_s.include?("wa")
end
end
def remove_non_strings(ora)
  ora.delete_if do |a|
    a != a.to_s
  end
end
def count_elements(coco)
  un_array = coco.uniq
  un_array.map do |f|
    f[:count] = coco.count(f)
  end
  un_array
  end

def merge_data(keys, data)
  merged_data = Array.new
  data.each do |d|
  keys.each do |k|
  merged_data << k.merge(d[k[:first_name]])
  end
  end
  merged_data
  end
def find_cool(cool)
  r = []
  cool.each do |x|
    x.each do |k,v|
      if v == "cool"
        r.push(x)
end
end
end
r
end
def organize_schools(schools)
  location = {}
  schools.each do |n,l|
    l.each do |lo,c|
      if location[c].nil?
        location[c] = []
      end
      location[c] << n
    end
  end
  location
  end




