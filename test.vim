function! RedGem()
ruby << EOF
	class Garnet
		def initialize(s)
			@buffer = Vim::Buffer.current
			vimputs(s)
		end
		def vimputs(s)
			@buffer.append(@buffer.count,s)
		end
	end
	gem = Garnet.new("pretty")
EOF
endfunction


function! TestHoge()
ruby << EOF
	require 'io/console'

	p Vim::command("sp")
	hoge = Dir.glob("*")

	while c = STDIN.getch
		print c
	end

	#	hoge.each do |file|
	#	print "#{file}\n"
	#end
EOF
endfunction


