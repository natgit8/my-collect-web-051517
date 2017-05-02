students = ["Tim Jones", "Tom Smith", "Jim Campagno"]
collection = ['ruby', 'javascript', 'python', 'objective-c']

def my_collect(array)
  new_arr = []

  i=0
  while i < array.length
    new_arr.push yield(array[i])
    i += 1
  end
  new_arr
end

my_collect(students) do |name|
  name.split(" ").first
end


my_collect(collection) do |lang|
  lang.upcase
end
