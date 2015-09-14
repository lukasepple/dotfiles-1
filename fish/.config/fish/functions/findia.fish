function findia --description 'find case insensitive anywhere (globbing)' --argument search
	# prevent out-of bounds if only one argument
        if set -q argv[2]
          set more $argv[2..-1]
        end

	command find -iname "*$search*" $more
end
