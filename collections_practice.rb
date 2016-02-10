def begins_with_r(array)
  array.include? { |e| e.match( /^r/ ) }
end

def contain_a(array)
  array.select { |x| x.match( /a/ ) }
end

def first_wa(array)
  array.find { |x| x.match( /wa/ ) }
end

def remove_non_strings(array)
  array.each do |x|
    if x.class == String
      x.select
    else
      x.reject
    end
  end
end

def count_elements(array)
  array.uniq{|d| d[:a]}
end
