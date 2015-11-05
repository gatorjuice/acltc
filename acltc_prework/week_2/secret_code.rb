# HVXIVG XLWV YB QZNRV TZGVH

@cipher = {
	"A"=>"Z",
	"B"=>"Y",
	"C"=>"X",
	"D"=>"W",
	"E"=>"V",
	"F"=>"U",
	"G"=>"T",
	"H"=>"S",
	"I"=>"R",
	"J"=>"Q",
	"K"=>"P",
	"L"=>"O",
	"M"=>"N",
	"N"=>"M",
	"O"=>"L",
	"P"=>"K",
	"Q"=>"J",
	"R"=>"I",
	"S"=>"H",
	"T"=>"G",
	"U"=>"F",
	"V"=>"E",
	"W"=>"D",
	"X"=>"C",
	"Y"=>"B",
	"Z"=>"A",
	" "=>" ",
	","=>",",
	"."=>".",
	"'"=>"'",
}

def menu
	puts "1 - Endcode Messages"
	puts "2 - Decipher Code"
	puts "type 'exit' leave"
	choice = gets.chomp
	if choice.to_i == 1 then
		@message = "ENTER MESSAGE TO ENCODE"
		encode
	elsif choice.to_i == 2 then
		@message = "ENTER MESSAGE TO DECODE"
		encode
	elsif choice.downcase == "exit" then
		puts "Bye"
		exit
	else
		menu
	end
end

def encode
	newMessage = []
	p @message
	string = gets.chomp.upcase
	letters = Array.new(string.split(""))
	letters.each do |l|
		newMessage << @cipher[l]
	end
	newMessage = newMessage.join
	p newMessage
	menu
end

menu