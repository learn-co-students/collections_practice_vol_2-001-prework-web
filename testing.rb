def organize_schools(schools)
  hash={}
  schools.each do |koy, val|
    val.each do |key, vald|
    hash[vald] = []
  end
end
  secvals=[]
schools.each do |firstkey, firstval|
firstval.each do |seckey, secval|
    if secval == "NYC"
    hash["NYC"] << firstkey
  end
secvals << secval
end
end
  puts hash
  puts secvals
  end

organize_schools({
      "flatiron school bk" => {
        :location => "NYC"
      },
      "flatiron school" => {
        :location => "NYC"
      },
      "dev boot camp" => {
        :location => "SF"
      },
      "dev boot camp chicago" => {
        :location => "Chicago"
      },
      "general assembly" => {
        :location => "NYC"
      },
      "Hack Reactor" => {
        :location => "SF"
      }
    })