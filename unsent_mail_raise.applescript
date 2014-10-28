repeat
	tell application "System Events"
		tell process "Microsoft Outlook"
			repeat with aWindow in (get every window)
				set aName to get the name of aWindow
				set initialName to ((characters 1 through 3 of aName) as string)
				if (initialName = "Re:") then
					tell application "Microsoft Outlook"
						activate
					end tell
					activate aWindow
					set frontmost to true
					perform action "AXRaise" of aWindow
					exit repeat -- only activate one window
				end if
			end repeat
		end tell
	end tell
	delay 60
end repeat