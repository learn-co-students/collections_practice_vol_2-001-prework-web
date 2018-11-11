# your code goes here
#
require 'pry'

def begins_with_r(tools)
  tools.each do |x|
    if x[0] != 'r'
      return false
    end
  end
  return true
end

def contain_a(arr)
  retArr = []
  arr.each do |x|
    retArr << x if x.include?('a')
  end
  retArr
end

def first_wa(arr)
  arr.each do |x|
    return x if x[0..1] == 'wa'
  end
end

def remove_non_strings(arr)
  retArr = []
  arr.each do |x|
    retArr << x if x.is_a?(String)
  end
  retArr
end

def count_elements(arr)
  arr.group_by(&:itself).map { |k, v| k.merge(count: v.length) }
end

def merge_data(d1, d2)
  result = []
  d1.each_with_index do |x, i|
    result << d1[i].merge(d2[0][d1[i].values[0]])
  end
  result
end

def find_cool(arr)
  result = []
  arr.each { |x| result << x if x[:temperature] == 'cool' }
  result
end

def organize_schools(arr)
  result = Hash.new
  arr.each do |k,v|
    if result[v[:location]] == nil
      result[v[:location]] = []
      result[v[:location]].push(k)
    else
      result[v[:location]].push(k)
    end
  end
  result
end






