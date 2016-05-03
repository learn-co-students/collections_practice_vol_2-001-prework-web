cool = [{:name=>"ashley", :temperature=>"sort of cool"}, {:name=>"blake", :temperature=>"cool"}]

def find_cool(array)
  select { |e| e[:temperature] == "cool" }
end

find_cool(cool)


output: [{:name => "blake",:temperature => "cool"}]