@letters = {
  "a" => "snap",
  "b" => "best wishes, here we go.",
  "c" => "can you guess the right person?",
  "d" => "do you know who it is?",
  "e" => "snap snap",
  "f" => "fine, fair enough",
  "g" => "good grief man",
  "h" => "how haven't you guess this yet",
  "i" => "snap snap snap",
  "j" => "just guess already.",
  "k" => "keep trying",
  "l" => "listen to me",
  "m" => "maybe, maybe",
  "n" => "no, so close",
  "o" => "snap snap snap snap",
  "p" => "please guess it",
  "q" => "quick! think harder",
  "r" => "really, man?",
  "s" => "suss it out, you got this",
  "t" => "try harder",
  "u" => "snap snap snap snap snap",
  "v" => "very close",
  "w" => "why can't you get this",
  "x" => "",
  "y" => "youre killing me",
  "z" => ""
}

def get_celebrity
  puts "Which celebrity should we have them guess"
  celeb = gets.chomp
  celeb_letters = celeb.downcase.split("")
  celeb_letters.each { |letter| say_letter(letter) }
end

def say_letter(letter)
  `say "#{@letters[letter]}"`
end

get_celebrity

