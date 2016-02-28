def begins_with_r(array)
  array.all? {|word| word.start_with? "r"}
end

def contain_a(array)
  words_with_a = []
  array.each do |word|
    if word.include? "a"
      words_with_a << word
    end
  end
  words_with_a
end

# .any, .include?, .find
def first_wa(array)
  array.find {|word| word.start_with "wa" }
end