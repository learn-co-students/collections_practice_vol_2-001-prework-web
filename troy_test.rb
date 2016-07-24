names = [{:firstname=>"Bill"}, {:firstname=>"Ted"}]
data = [{"Bill" => {:age=>18, :height=>74, :band=>"Wyld Stallions"}},
  {"Ted" =>{:age=>19, :height=>70, :band=>"Wyld Stallions"}}]

def merge_data(names, data)
  answer_array=[]
    names.each do |firstname|
      if data.any? {|title| title==firstname}
        data << firstname
      end
    end
  puts data
end

merge_data(names, data)