tell application "Microsoft Teams"
	activate
end tell
tell application "System Events"
	tell process "Microsoft Teams"
		-- Use keyboard shortcut to unmute (Cmd+Shift+M)
		key code 46 using {command down, shift down}
	end tell
end tell
