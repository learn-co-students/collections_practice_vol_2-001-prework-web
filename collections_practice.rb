require 'pry'
# your code goes here
def begins_with_r(arr)
	arr.all? {|word| word[0] == 'r'}	#-->all? => true or false
end



def contain_a(arr)
	arr.select do |word|
		word.split('').include?('a')	#--> convert each word into array of chars, does array include a?
	end
end



def first_wa(arr)
	arr.find do |word|
		word.slice(0,2) == 'wa'		#--> #(0,2) does not include 2
	end
end

def remove_non_strings(arr)
	arr.delete_if {|thing| thing.class != String}
end



def count_elements(arr)
	newArr = []
	newHash = {}
	newHash.default = 0

	arr.each do |hash|
		newHash[hash[:name]] += 1		#{"blake" => 1}
	end

	newHash.each do |name, count|
		newArr << {:name => name, :count => count}
	end
	newArr
end


#keys => [{:first_name=>"blake"}, {:first_name=>"ashley"}]
#data => {"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"},"ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}}
#expected => [{:first_name=>"blake", :awesomeness=>10, :height=>"74", :last_name=>"johnson"}, {:first_name=>"ashley", :awesomeness=>9, :height=>60, :last_name=>"dubs"}]


def merge_data(keys, data)
	newArr = []
	data1 = data[0]	#----> important allows access to hash stored within array
	keys.each do |name|
		#binding.pry
		first_name = name[:first_name]		#=>"blake"
		newHash = {:first_name => first_name}		#=>{:first_name =>"blake"}
		newHash.merge!(data1[first_name])	#=> #{:first_name=>"blake", {:awesomeness=>10, :height=>"74", :last_name=>"johnson"}}
		newArr << newHash
	end
	newArr
end

#arg = [{:name=>"ashley", :temperature=>"sort of cool"}, {:name=>"blake", :temperature=>"cool"}]

def find_cool(arg)
	arg.delete_if {|hash| hash[:temperature] != "cool"}
end


def organize_schools(schools)
	#binding.pry
	newSchools = {}

	schools.each do |name, location|		
		#name=> "flatiron school bk"
		#location=> {:location=>"NYC"} //location[:location]=> "NYC"
		if newSchools.has_key?(location[:location])
			newSchools[location[:location]] << name
		else
			newSchools[location[:location]] = [name]	#important --> assign name within array
		end
	end
	newSchools
end
