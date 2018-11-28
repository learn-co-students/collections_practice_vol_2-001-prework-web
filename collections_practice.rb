require 'pry'

def begins_with_r(arr)
  amount_of_r = 0

  arr.each do |element|
    if element[0] == 'r'
      amount_of_r += 1
    end
  end

  if amount_of_r == arr.length
    true
  else
    false
  end
end


def contain_a(arr)
  has_a = Array.new

  arr.select do |element|
    if element.include?('a')
      true
    else
      false
    end
  end
end

def first_wa(arr)
  arr.find do |element|
    if element[0,2] == 'wa'
      element
    else
      false
    end
  end
end


def remove_non_strings(arr)
  arr.select do |element|
    if element.class == String
      element
    else
      false
    end
  end
end

def count_elements(arr)
  new_arr = Array.new

  while arr.count > 0
    check_against_me = arr.shift
    count = 1
    arr.each_with_index do |element, i|
      if check_against_me == element
        count += 1
        arr.delete_at(i)
      end
    end
    check_against_me[:count] = count
    new_arr << check_against_me
  end

  new_arr
end


def merge_data(a1, a2)
  a1.collect do |h|
    h.merge(a2[0].shift[1])
  end
end


def find_cool(a)
  a.select do |thing|
    thing[:temperature] == 'cool'
  end
end


def organize_schools(schools)
  schools_by_loc = Hash.new
  schools.each do |school|
    schools_by_loc[school[1][:location]] = Array.new if schools_by_loc[school[1][:location]] == nil
    schools_by_loc[school[1][:location]] << school[0]
  end

  schools_by_loc
end












































































