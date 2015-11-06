system('clear')
puts "Welcome to the ROOM SPLI-TTER".center(63)
puts "The ONLY way to divide the people in the room into groups ever."
puts 
puts "Start typing in the group members names: (just press return when complete)"

names = []
name = gets.chomp
names << name

until name == ""
  puts "NAME ADDED, ENTER ANOTHER OR PRESS ENTER"
  name = gets.chomp
  names << name
end

names.delete("")

if names.length > 0
  names.shuffle!
  groups = []
  names.each { group = []
    group << names.shift
    group << names.shift
    groups << group
  }
  if names.length == 1 
    groups[0] << names.shift
  end
  groups.each do |group|
      puts "Group: #{group[0]} #{group[1]} #{group[2]}"
  end
else
  puts "Who are you trying to fool over here? Bye."
end