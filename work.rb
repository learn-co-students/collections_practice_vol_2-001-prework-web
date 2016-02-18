require 'pry'

keys = [ {:first_name => "blake"}, {:first_name => "ashley"}]
            
data = [
  {
    "blake" => {
      :awesomeness => 10,
      :height => "74",
      :last_name => "johnson"
    },
    "ashley" => {
      :awesomeness => 9,
      :height => 60,
      :last_name => "dubs"
    }
  }
]

 merged_data = [
  {
    :first_name => "blake",
    :awesomeness => 10,
    :height => "74",
    :last_name => "johnson"
    },
   {
    :first_name => "ashley",
    :awesomeness => 9,
    :height => 60,
    :last_name => "dubs"
  }
]




def merge_data(keys, data)
  #i = 0 #create a counter
  merged_data = [] #our array to store the data
  data.each do |item|
    item.each do |key, value|
      merged_data << value #add each key/value pair from the data hash to the new array
    end
  end
  keys.each_with_index do |item, index|
    item.each do |key, value|
      merged_data[index][key] = value #start with index 0 of the array, create a key and give it a value
      #i += 1 #increment our counter so we move on to the next index in the array
    end
  end
  print merged_data
end

merge_data(keys, data)






