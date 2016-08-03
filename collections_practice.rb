# your code goes here
def begins_with_r(arr)
    arr.each do |word|
    	if word[0] != 'r'
    		return false
    	end
    end
    return true
end

def contain_a(arr)
    arr.select do |word|
      word.include?('a')
    end
end

def first_wa(arr)
	new_arr = []
  	arr.each do |word|
  		word = word.to_s
  		new_arr.push(word)
  	end
  	new_arr.find do |word|
  		word.include?('wa')
  	end
end
