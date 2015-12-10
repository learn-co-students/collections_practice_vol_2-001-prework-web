def begins_with_r(a)
  a.all? {|x| x.start_with?("r")}
end

def contain_a(a)
  a.find_all {|x| x.include?("a")} 
end

def first_wa(h)
  h.map! {|x| x.to_s}
  h.find{|x| x.start_with?("wa")}
end

def remove_non_strings(c)
  a = c.find{|x| x.is_a?(String)}
  [a] 
end

def count_elements(a)
  new_array = []
  counts = Hash.new 0
  a.each do |h|
    counts[h] += 1
  end
  counts.each do |k,v|
    k[:count] = v
    new_array<<k
  end
  new_array

end

def merge_data(a,b)
  array=[]
  a.each do |el|
    first_name = el[:first_name]
    array << el.merge(b.first[first_name])
  end
  array 
end

def find_cool(a)
  a.select do |el|
    el[:temperature]=="cool"
  end
end

def organize_schools(schools)
  h = {}
  schools.each do |name, data|
    loc = data[:location]
    if h[loc].nil?
      h[loc] = []
    end
    h[loc] << name
  end
  return h
end
