set myFile to open for access (choose file name) with write permission
try
	repeat
		tell application "System Events"
			set frontApp to name of first application process whose frontmost is true
			
			if (frontApp = "HipChat") then
				tell process "HipChat"
					-- set things to entire contents of group 1 of group 1 of group 1 of window 1
					
					try
						-- I think this is the PM
						set myList to name of UI element of group 1 of group 2 of group 1 of group 3 of UI element 1 of scroll area 1 of group 1 of group 1 of group 1 of group 1 of window "HipChat" of application process "HipChat" of application "System Events"
						write (item (count of myList) of myList) & "|" & ((current date)) & linefeed to myFile
						delay 15
					on error
						-- Chat room?
						set myList to name of UI element of group 1 of group 3 of UI element 1 of scroll area 1 of group 1 of group 1 of group 1 of group 1 of window "HipChat" of application process "HipChat" of application "System Events"
						write (item 2 of myList) & "|" & ((current date)) & linefeed to myFile
						delay 15
					end try
				end tell
			end if
			
			
		end tell
	end repeat
on error errstr number errNum
	say "closeded"
	close myFile
end try