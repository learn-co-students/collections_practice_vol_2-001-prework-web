def begins_with_r(array)
	array.each do |x|
		if x[0] != "r"
			return false
		end
	end
	true
end

def contain_a(array)
	a_array = []
	array.each do |x|
		if x.include? "a"
			a_array << x
		end
	end
	a_array
end

def first_wa(array)
	array.each do |x|
		if x.to_s.start_with?("wa")
			return x
		end
	end
	nil
end

def remove_non_strings(array)
	array.select { |x| x.is_a?(String) }
end

def count_elements(array)
	results = []
	while array.length > 0
		x = array.shift
		additional = array.count(x)
		if additional > 0
			array.delete(x)
		end
		x[:count] = 1 + additional
		results.push(x)
	end
	results
end

def merge_data(structure1, structure2)
	results = []
	structure1.each do |data|
		x = Hash.new
		data.each do |key, value|
			x[key] = value
			structure2.each do |moredata|
				y = moredata[value]
				x.merge!(y)
			end
			results.push(x)
		end
	end
	results
end

def find_cool(array)
	array.select do |x|
		x.any? { |key, value| value == "cool" }
	end
end

def organize_schools(schools)
	results = Hash.new
	schools.each do |key, value|
		store2 = key
		store1 = value[:location]
		if results[store1] == nil
			results[store1] = [].push(store2)
		else
			results[store1].push(store2)
		end
	end
	results
end