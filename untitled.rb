def merge_data(array1, array2)
returnHash1 = {}
returnHash2 = {}
returnArray = []

  array1.each do |person, data|
    person.each do |attribute, value|
      returnHash1["#{attribute}:"] = "#{value}"
    end
    returnArray.push(returnHash1)
  end
  array2.each do |person, data|
    person.each do |attribute, value|
      returnHash2["#{attribute}:"] = "#{value}"
    end
    returnArray.push(returnHash2)
  end
  return returnArray
end

[
           {
             :first_name => "blake",
            :awesomeness => 10,
                 :height => "74",
              :last_name => "johnson"
        }],
           [{
             :first_name => "ashley",
            :awesomeness => 9,
                 :height => 60,
              :last_name => "dubs"
        }
    ]