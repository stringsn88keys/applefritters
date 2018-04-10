set myFile to open for access (choose file name) with write permission

try
	repeat
		tell application "System Events"
			set frontApp to name of first application process whose frontmost is true
			
			if (frontApp = "HipChat") then
				-- set things to entire contents of group 1 of group 1 of group 1 of window 1
				-- set things to UI elements of group 1 of group 1 of group 1 of window 1
				try
					-- I think this is the PM
					set myList to name of UI element of group 2 of group 1 of group 3 of UI element 1 of scroll area 1 of group 1 of group 1 of group 1 of group 1 of window "HipChat" of application process "HipChat" of application "System Events"
					write (item 1 of myList) & ";" & ((current date)) & linefeed to myFile
					delay 15
				on error
					-- Chat room?
					set myList to name of UI element of group 1 of group 3 of UI element 1 of scroll area 1 of group 1 of group 1 of group 1 of group 1 of window "HipChat" of application process "HipChat" of application "System Events"
					write (item 2 of myList) & ";" & ((current date)) & linefeed to myFile
					delay 15
				end try
			end if
			
			if (frontApp = "Teams") then
				set myTitle to title of window 2 of process "Microsoft Teams" of application "System Events"
				write myTitle & ";" & (current date) & linefeed to myFile
				delay 15
			end if
			
			if (frontApp = "RubyMine") then
				-- need to also capture the directory which is in the first element
				set staticTexts to value of static text of window 1 of process "RubyMine" of application "System Events"
				set gitMe to {}
				repeat with theText in staticTexts
					if theText begins with "Git" then
						set gitMe to theText
					end if
				end repeat
				write gitMe & ";" & (current date) & linefeed to myFile
				delay 15
			end if
			
			if (frontApp = "firefox") then
				set myTitle to name of window 1 of application process "Firefox" of application "System Events"
				write myTitle & ";" & (current date) & linefeed to myFile
				delay 15
			end if
			
			if (frontApp = "Google Chrome") then
				set myTitle to name of window 1 of application process "Chrome" of application "System Events"
				write myTitle & ";" & (current date) & linefeed to myFile
				delay 15
			end if
			
			if (frontApp = "iTerm2") then
				set myTitle to name of window 1 of application process "iTerm2" of application "System Events"
				write myTitle & ";" & (current date) & linefeed to myFile
				delay 15
			end if
			
			if (frontApp = "MacVim") then
				set myTitle to name of window 1 of application process "MacVim" of application "System Events"
				write myTitle & ";" & (current date) & linefeed to myFile
				delay 15
			end if
		end tell
	end repeat
on error errstr number errNum
	write "Error: " & errstr & linefeed to myFile
	close myFile
end try