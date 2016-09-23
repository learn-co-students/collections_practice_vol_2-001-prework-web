def begins_with_r (array)
  array.all? {|i| i[0] == "r"}
end

def contain_a (array)
  array.select {|i| i.include?("a")}
end

def first_wa (array)
  array.find {|i| i[0..1] == "wa"}
end

def remove_non_strings (array)
  array.reject {|i| i.is_a?(String) == false}
end

def count_elements(array)
  array.uniq.each {|i| count = 0
    array.each { |b| if b == i then count += 1 end}
    i[:count] = count}
end

def merge_data(data1, data2)
  result = []
  data1.each_with_index do |x, i|
    result << data1[i].merge(data2[0][data1[i].values[0]])
  end
   result
end

def find_cool(array)
  result = []
  array.each { |x| result << x if x[:temperature] == 'cool' }
  result
end

def organize_schools(schools)
  locations = {}
  schools.collect {|k,v| locations [v[:location]] = []}
  locations.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1 end }}
end
