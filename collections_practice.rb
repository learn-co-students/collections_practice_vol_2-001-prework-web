# your code goes here
def begins_with_r(array)
  arr = []
  arr = array.select do |i|
    i.start_with?("r")
  end

  if arr.length == array.length
    return true
    else
      return false
  end
end

def contain_a(array)
  array.select do |i|
    i.include?("a")
  end
end

def first_wa(array)
  x = ""
  array.select! do |i|
    x = i.to_s
    x.start_with?("wa")
  end
array[0]
end

def remove_non_strings(array)
  array.select! do |i|
    i.is_a? String
  end
end

def count_elements(array)
  found = []
  array.uniq.each do |word|
    word[:count] = array.count(word)
    found << word
  end
  found
end


def merge_data(keys, data)
final = []

  keys.each do |i|
    i.each_pair do |x,y|
         data.each do |k|
          k.each_pair do |z,t|
            if i[x] == z
              final << i.merge(t)
            end
          end
        end
      end
  end
final
end

def find_cool(array)
 final = []
  array.each do |x|
    x.each_pair do |k,d|
      if k == :temperature && d == "cool"
        final << x
      end
    end
  end
  final
end

def organize_schools(hash)
test = "data"
final = {}
x=0
  hash.each_pair do |k,d|
    d.each_pair do |k2, d2|
      if final[d2] == nil
        final[d2] =[]
        final[d2] << k
      else
        final[d2] << k
      end

    end
  end
final
end

keys = [
           {
            :first_name => "blake"
        },
           {
            :first_name => "ashley"
        }
    ]


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

    merge_data(keys, data)
