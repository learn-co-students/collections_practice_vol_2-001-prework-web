# your code goes here
def begins_with_r(arr)
  arr.all? { |e| e.start_with?("r") }
end

def contain_a(arr)
  arr.select { |e| e.include?("a")}
end

def first_wa(arr)
  arr.detect { |e|
    if e.class === "String"
      e.start_with?("wa")
    else
      false
    end
  }
end

def remove_non_strings(arr)
  arr.reject! {|e| !(e.class === "String")}
end

def count_elements(arr)
  new_arr = arr.uniq

  arr.collect { |x|
  	count = 0
  	while count < new_arr.count
  		if x[:name] === new_arr[count][:name]
  			new_arr[count][:count] === nil ? new_arr[count][:count] = 1 : new_arr[count][:count] += 1
  		end
  		count += 1
   	end
  }
  new_arr
end

def merge_data(keys, data)
	keys.collect { |x|
    count = 0
    while count < data.count
      x.merge!(data[count][x[:first_name]]) if data[count].has_key?(x[:first_name])
      count += 1
    end
    x
	}
end

def find_cool(arr)
  arr.select { |x| x[:temperature] == "cool"}
end

def organize_schools(schools)
  hash = Hash.new
  schools.each { |k, v|
   hash.keys.include?(v[:location])  ? hash[v[:location]] << k : hash[v[:location]] = [k]
  }
  hash
end
