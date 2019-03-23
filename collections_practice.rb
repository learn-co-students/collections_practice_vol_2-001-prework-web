# your code goes here
require 'pry'
def begins_with_r(array)
	array.all? { |item| item[0] == 'r' }
end

def contain_a(array)
	array.select { |item| 
		item.split('').any? { |letter| letter == 'a' }
	}
end

def first_wa(array)
	array.find { |item| item.slice(0,2) == 'wa' }
end

def remove_non_strings(array) 
	array.delete_if { |item| !item.kind_of? String }
end

#[{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])).to eq([{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}]
def count_elements(array)
	counts = []
	array.each { |hash| 
    temp = counts.find { |object| object[:name] == hash[:name] } 
    if temp != nil
    	temp[:count] += 1
    else
      counts << {:name => hash[:name], :count => 1}
    end
  }
	counts
end

def merge_data(keys, values)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end

def find_cool(array)
  container = []
  array.each do |element|
    container << element if element[:temperature] == "cool" 
  end
  container
end


def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end

