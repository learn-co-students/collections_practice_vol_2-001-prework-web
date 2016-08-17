def begins_with_r(array)
  array.each do |e|
    if e[0] == "r"
    else
      return false
    end
  end
  true
end

def contain_a(array)
  array.select {|e| e.include? ?a}
end

def first_wa(array)
  array.find {|e| e[0] == "w" && e[1] == "a"}
end

def remove_non_strings(array)
  array.delete_if {|e| e.class != String}
end

def count_elements(array)
  array.group_by(&:itself)
    .map {|k,v|k.merge(count: v.length)}
end

def merge_data(v1, v2)
  v2[0].values.map.with_index {|v,i| v.merge(v1[i])}
end

def find_cool (array)
  i = []
  array.each do |e|
    if e.any? { |key,value| value == "cool" }
      i << e
    else
    end
  end
  i
end

def organize_schools(array)
  ii = {}
  array.values.each {|e| ii[e.values.join("")] = []}
  array.each {|index,value| ii[value.values.join("")].push index}
  ii
end
