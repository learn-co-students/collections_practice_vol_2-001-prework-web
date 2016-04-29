# your code goes here
def begins_with_r(arr)
  arr.all?{ |x| x.upcase.start_with?("R") }
end

def contain_a(arr)
  arr.select{ |x| x.upcase.include?("A") }
end

def first_wa(arr)
  arr.find{ |x| x[0..1] == "wa" }
end

def remove_non_strings(arr)
  arr.select{ |x| x.class == String }
end

def count_elements(arr)
  counts = {}
  arr.each do |x|
    if counts.key?(x[:name])
      counts[x[:name]] += 1
    else
      counts[x[:name]] = 1
    end
  end
  counts.collect {|k, v| {:name => k, :count => v} }
end

def merge_data(keys,data)
  merged = []
  keys.each do |e|
    merged << e.merge(data[0][e[:first_name]])
  end
  merged
end

def find_cool(arr)
  arr.select{|x| x[:temperature] == "cool"}
end

def organize_schools(arr)
  schools_by_location = {}
  arr.each do |k,v|
    if schools_by_location.has_key?(v[:location])
      schools_by_location[v[:location]].push(k)
    else
      schools_by_location[v[:location]] = [k]
    end
  end
  schools_by_location
end