# your code goes here
def begins_with_r(array)

  array.all? do |word|
  word.start_with?("r")
  end

end

def contain_a(array)
  array.select do |word|
      word.include?("a")
  end
end

def first_wa (array)
  array.find do |word|
      word[0..1]=="wa"
  end
end


def remove_non_strings (array)
  array.delete_if do |word|
      word.class != String
  end
end

def count_elements (array)
newArray=[]

array.each do |word|
     newArray << {:name =>"#{word[:name]}", :count => array.count(word)}
end
newArray.uniq

end

def merge_data(key,data)
	merged =[]
	key.each_index do |i|
		data[0].keys.each do |name|
			merged << key[i].merge(data[0][name]) if name == key[i][:first_name]
		end
	end
  merged

end

def find_cool(array)
newArray=[]
  array.each do |hash|
      hash.map do |key,value|
       if value == "cool"
            newArray << hash
           end
       end
  end
newArray
end

def organize_schools(array)
  nycSchools=[]
  sfSchools=[]
  chicagoSchools=[]

  array.each do |key,value|
    if value[:location]=="NYC"
      nycSchools<< key
     elsif value[:location]=="SF"
      sfSchools<< key
     elsif value[:location]=="Chicago"
      chicagoSchools<< key
     end
  end
  newHash={"NYC"=> nycSchools,"SF"=> sfSchools,"Chicago" =>chicagoSchools}
end
