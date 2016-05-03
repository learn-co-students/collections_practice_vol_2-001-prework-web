keys = [{:first_name=>"blake"}, {:first_name=>"ashley"}]
# array with 2 hash elements

data = [ {"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"}, "ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}} ]
# array with 1 nested hash element

def merge_data(keys, data)
  combined = []
  keys.each do |element| # e.g. {:first_name=>"blake"}
    combined << element.merge(data[0][element[:first_name]])
              # element.merge(data[0]["blake"])
  end
  combined
end
merge_data(keys, data)





keys = [{:first_name=>"blake"}, {:first_name=>"ashley"}]
data = [ {"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"}, "ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}} ]

combined = []

combined << {:first_name=>"blake"}.merge( {:awesomeness=>10, :height=>"74", :last_name=>"johnson"} )

combined