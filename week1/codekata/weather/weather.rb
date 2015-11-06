# wArray = []
# File.open("weather.dat").each {|line| wArray << line.split }


# wArray.each {|row| p row}

data = []
File.open("weather.dat", "r") {|f| f.each_line {|line| data << line }}


array = []
data.each do |line|
  array = line.split
  spread = array[1].to_f - array[2].to_f
  if array[1] != nil
    puts "Day: #{array[0]}, Max: #{array[1]}, Min: #{array[2]}, Spread: #{spread}"
  end
end