
Notation = ["R", "R'", "L", "L'", "U", "U'", "F", "F'", "B", "B'"]


def Generator(scramblelength)
	r = Random.new
	scramble = ''
	a = 0
	while a < scramblelength
		selection = Notation[r.rand(1...Notation.length) - 1]
		unless scramble[-1].nil?
			while selection.gsub!(/\W+/, '') == scramble[-1].gsub!(/\W+/, '')
				selection = Notation[r.rand(1...Notation.length) - 1]
			end
		end
		if r.rand(1...4) > 2
			selection = selection + '2'
		else
			unless selection.include? '\''
				if r.rand(1...4) > 2
					selection = selection + '\''
			end
		end
		end
		scramble = scramble + selection + ' '
		a = a + 1

	end
	puts scramble
end
Generator(20)