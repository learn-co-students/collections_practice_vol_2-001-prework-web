array = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]

def count_elements(array)
  counts = {}
  array.each do |element| # for each element in array
    name = element[:name] # set name to value, i.e. name = "blake"
    counts[name] ? counts[name] += 1 : counts[name] = 1
    # if counts["name"] exists, add 1 to value
    # if counts["name"] does not exist (returns nil), set "name"=>1
    # counts => {"blake"=>2, "ashley"=>1}
  end
  counts.map { |key, value| {:name => key, :count => value} }
  # return a formatted array with Array#map 
end

count_elements(array)

def count_elements(array)
  results = [] # empty array
  array.each do |element| # for each element in array
    element.each do |key, value| # for each key, value pair in an element
      results << {:name => value, :count => array.count(element)}
      # configure the hash using Array#count and shovel to empty results array
    end
  end
  results.uniq # return last statement but only unique elements 
end