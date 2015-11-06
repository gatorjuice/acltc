# Fibonacci by Jamie Gates

n = 0
n2 = 1
50.times do
	puts n
	puts n2
	n = n2 + n
	n2 = n + n2
end