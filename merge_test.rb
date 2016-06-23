def merge_data(keys, data)
final = []
  keys.each do |i|
    i.each_pair do |x,y|
         data.each do |k|
           final << k.merge(y)
        end
      end
  end
 final.uniq! do |t|
    t[:first_name]
end
puts final.inspect
 final
end

keys =
[
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

  data =
   [
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

merge_data(keys, data)
