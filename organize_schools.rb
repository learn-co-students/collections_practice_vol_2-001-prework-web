schools = {
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
    }

def organize_schools(array)
  schools_by_city = {}
  array.each do |key,val|
    if schools_by_city.has_key?(val[:location])
      schools_by_city[val[:location]].push(key)
    else
      schools_by_city[val[:location]] = [key]
    end
  end
  schools_by_city
end

organize_schools(schools)