set old_clipboard to the clipboard
repeat
	delay 0.2
	try
		if (the clipboard) is "clear" then
			do shell script "echo '' > ~/Desktop/clip.txt"
			display notification "Clipboard log eliminata" with title "Clip-me"
			set the clipboard to ""
		else
			if (the clipboard) is not old_clipboard then
				do shell script "echo " & quoted form of ((the clipboard) & "
				
			               	-#-#-#-#-#-#-#-
				
				
" & (do shell script "cat ~/Desktop/clip.txt")) & " > ~/Desktop/clip.txt"
				set old_clipboard to the clipboard
				display notification "La clipboard è cambiata" with title "Clip-me"
			end if
		end if
	end try
end repeat
