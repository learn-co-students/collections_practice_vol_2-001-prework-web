require 'pry'
def begins_with_r(array)
  array.all? { |word| word.start_with?('r') }
end


def contain_a(array)
  array.select { |array_item| array_item.include?('a') }
end


def first_wa(array)
  array.detect do |array_item|
   if array_item.is_a? String
    array_item.start_with?('wa')
     end
  end
end


def remove_non_strings(array)
  array.select do |array_item|
    array_item.is_a? String
  end
end


def count_elements(name_array)
  name_array.uniq.collect do |name|
    name[:count] = name_array.count(name)
    name
  end
end


def merge_data(the_keys, the_values)
merged = {}
 the_values.each do |keys|
   keys.each do |name, info|
     info[:first_name] = name
   end
   merged = keys.values
 end
merged
end


def find_cool(cool)
cool.each do  |person|
    if person[:temperature] == 'cool'
      return Array.new << person
    end
end
end


def organize_schools(schools)
  schools_by_location = {}

  schools.each do |name,location_hash|        # name=   "flatiron school bk"   # location_hash=   {:location=>"NYC"}
    location_hash.each do |location, city|    # location=   :location   # city=   "NYC"

      if schools_by_location[city].nil?
        schools_by_location[city]   = []
      end
      schools_by_location[city] << name

    end
  end
  schools_by_location
end

