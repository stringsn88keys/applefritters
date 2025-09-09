tell application "zoom.us"
	activate
end tell
tell application "System Events"
	tell process "zoom.us"
		-- Use keyboard shortcut to mute (Cmd+Shift+A)
		key code 0 using {command down, shift down}
	end tell
end tell
