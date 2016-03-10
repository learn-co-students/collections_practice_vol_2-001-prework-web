def begins_with_r(array)
  array.map! { |word|
    word[0..0]}
  rs = "r, " * array.length
  new_r = rs.split(", ")
  array == new_r
end

def contain_a(array)
  array.select { |word|
    word.include?("a")}
end

def first_wa(array)
  array.find { |word| 
    word[0..1] == "wa"}
end 

def remove_non_strings(array_with_strings)
 array_with_strings.delete_if do |word| 
    word.class != String
  end
end

def count_elements(counted_array)
  counts = Hash.new(0)
  counted_array.each do |item|
    counts[item] += 1
  end

  counted_array_without_duplicates = counted_array.uniq

  counted_array_without_duplicates.each do |item|
    item[:count] = counts[item]
  end
end

def find_cool(array_with_cool)
  includes_cool = []
  array_with_cool.each do |item|
    includes_cool << item if item.has_value?("cool")
  end
  includes_cool
end

keys =
    [
           {
            :first_name => "blake"
        },
           {
            :first_name => "ashley"
        }
    ]

data =
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

def merge_data(merge_1, merge_2)
  counter = 0
  merged_data = []
  while counter < merge_1.count
    merge_2.each do |element|
      element.each do |key, value|
        merged_data << value.merge(merge_1[counter]) if merge_1[counter].has_value?(key)
      end
    end
    counter += 1
  end
  merged_data
end

merge_data(keys, data)

def organize_schools(schools_list)
  schools_reorganized = {}
  schools_list.each do |key, value|
    schools_reorganized[value[:location]] = []
  end

  schools_list.each do |key, value|
    schools_reorganized[value[:location]] << key
  end
  schools_reorganized
end

