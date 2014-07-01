tell application "Microsoft Lync"
	activate
end tell
tell application "System Events"
	tell process "Microsoft Lync"
		repeat with aWindow in (get every window)
			set aName to get the name of aWindow
			set initialName to ((characters 1 through 12 of aName) as string)
			if (initialName = "Conversation") then
				activate aWindow
				click checkbox 5 of splitter group 1 of aWindow
			end if
		end repeat
	end tell
end tell
