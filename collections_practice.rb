require "pry"

class Hash
  #return arguments' corresponding keys
  def keys_of(*args)
    collect {|k, v| k if args.include?(v)}.keep_if {|e| e}
  end
end

module Enumerable
  # #collect, but exclude nil or specified values from the collection
  def clean_collect(obj = nil, *objs)
    collect {|element| yield(element)}.delete_if {|e| e == obj || objs.include?(e)}
  end
end


def begins_with_r(array)
  array.all? {|e| e.start_with?("r") }
end

def contain_a(array)
  array.select {|e| e.include?("a")}
end

def first_wa(array)
  array.find {|e| e.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.select {|e| e.is_a?(String)}
end

def count_elements(array)
  e_count = array.collect do |e|
    temp_e = e
    temp_e[:count] = array.count(e)
    array.delete_if{|e2| e2 == e}
    temp_e
  end
  e_count
end

def merge_data(keys_ary,data_ary)
  data_ary.flat_map do |person|
    person.collect do |name, data|
      keys_ary.each do |first_name|
        if first_name[:first_name] == name
          person[name][:first_name] = name
        end
      end
      person[name]
    end
  end
end

def find_cool(ary)
  ary.select {|person| person[:temperature] == "cool"}
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school_name,data|
    data.each do |key, location|
      organized_schools[location] = [] if organized_schools[location] == nil
      organized_schools[location] << school_name
    end
  end
  organized_schools
end
