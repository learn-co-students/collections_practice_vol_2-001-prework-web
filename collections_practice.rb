# your code goes here
def begins_with_r(array)
	array.all? {|a| a[0] == "r"}
end

def contain_a(array)
	array.select {|a| a.include?("a")}
end

def first_wa(array)
	array.find {|a| a[0..1] == "wa"}
end

def remove_non_strings(array)
	return array.grep(String)
end

def count_elements(array)
	tmp_array = []
	array.uniq.each do |x|
		tmp_array << {:name=>x[:name], :count => array.grep(x).count}
	end
	return tmp_array
end

def merge_data(keys,data)
	tmp_a = []
	keys.each do |key|
		data.each do |element|
			element.each do |pers, d_hash|
				if pers == key[:first_name]
					tmp_a << key.merge(d_hash)
				end
			end
		end
	end
	tmp_a
end

def find_cool(array)
	array.select {|x| x[:temperature] == "cool"}
end

def organize_schools(hash)
	tmp_a = {}
	n = []
	s = []
	c = []
	hash.each do |a, b|
		if b[:location] == "NYC"
			n << a
			tmp_a["NYC"] = n
		elsif b[:location] == "SF"
			s << a
			tmp_a["SF"] = s
		elsif b[:location] == "Chicago"
			c << a
			tmp_a["Chicago"] = c
		end
	end
	tmp_a
end
