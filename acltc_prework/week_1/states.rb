#Exercise 13 Hashes with states

def main

states_cap = {
	"Alabama" => "Montgomery",
	"Alaska" => "Juneau",
	"Arizona" => "Phoenix",
	"Arkansas" => "Little Rock",
	"California" => "Sacramento",
	"Colorado" => "Denver",
	"Connecticut" => "Hartford",
	"Delaware" => "Dover",
	"Florida" => "Tallahassee",
	"Georgia" => "Atlanta",
	"Hawaii" => "Honolulu",
	"Idaho" => "Boise",
	"Illinois" => "Springfield",
	"Indiana" => "Indianapolis",
	"Iowa" => "Des Moines",
	"Kansas" => "Topeka",
	"Kentucky" => "Frankfort",
	"Louisiana" => "Baton Rouge",
	"Maine" => "Augusta",
	"Maryland" => "Annapolis",
	"Massachusetts" => "Boston",
	"Michigan" => "Lansing",
	"Minnesota" => "St. Paul",
	"Mississippi" => "Jackson",
	"Missouri" => "Jefferson City",
	"Montana" => "Helena",
	"Nebraska" => "Lincoln",
	"Nevada" => "Carson City",
	"New Hampshire" => "Concord",
	"New Jersey" => "Trenton",
	"New Mexico" => "Santa Fe",
	"New York" => "Albany",
	"North Carolina" => "Raleigh",
	"North Dakota" => "Bismarck",
	"Ohio" => "Columbus",
	"Oklahoma" => "Oklahoma City",
	"Oregon" => "Salem",
	"Pennsylvania" => "Harrisburg",
	"Rhode Island" => "Providence",
	"South Carolina" => "Columbia",
	"South Dakota" => "Pierre",
	"Tennessee" => "Nashville",
	"Texas" => "Austin",
	"Utah" => "Salt Lake City",
	"Vermont" => "Montpelier",
	"Virginia" => "Richmond",
	"Washington" => "Olympia",
	"West Virginia" => "Charleston",
	"Wisconsin" => "Madison",
	"Wyoming" => "Cheyenne"}

puts "I can tell you the capital of any state. Type the state name and try me out."
puts "type 'exit' get out of here"
state = gets.chomp.capitalize.to_s

if states_cap.has_key?(state) then
	puts "the capital of " + state + " is " + states_cap[state]
	main
elsif state.downcase == "exit" then
	exit 
else
	puts "that isn't a valid state."
	main
end
end
system("clear")
main