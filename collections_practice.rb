require 'byebug'

def begins_with_r(array)
  array.all? { |word| word[0] == "r" }
end

def contain_a(array)
  array.select { |word| word.include?("a") }
end

def first_wa(array)
  array.each { |word| return word if word[0..1] == "wa" }
end

def remove_non_strings(array)
  array.delete_if { |element| !element.is_a?(String) }
end

def count_elements(array)
  counts = []
  counted = []

  array.each do |el| 
    unless counted.include?(el)
      counted << el
      count = array.count(el) 
      counts << el.merge({count: count})
    end
  end

  counts
end

def merge_data(key_hash_array, data_hash_array)
  key_hash_array.each do |hash| 
    key = hash.values[0]

    data_hash_array[0].each do |data_key, data_value|
      if data_key == key
        hash.merge!(data_value)
      end
    end 
  end 

  key_hash_array
end


def find_cool(array)
  cool = []

  array.each do |hash|
    cool << hash if hash[:temperature] == "cool"
  end

  cool
end


def organize_schools(schools)
  organized_schools = {}

  schools.each do |school_name, location_hash|
    location = location_hash.values[0]

    if organized_schools.include?(location)
      organized_schools[location] << school_name
    else
      organized_schools[location] = [school_name]
    end
  end

  organized_schools
end





{"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
     "SF"=>["dev boot camp", "Hack Reactor"],
     "Chicago"=>["dev boot camp chicago"]}




{
      "flatiron school bk" => {
        :location => "NYC"
      },
      "flatiron school" => {
        :location => "NYC"
      },
      "dev boot camp" => {
        :location => "SF"
      },
      "dev boot camp chicago" => {
        :location => "Chicago"
      },
      "general assembly" => {
        :location => "NYC"
      },
      "Hack Reactor" => {
        :location => "SF"
      }
}

















