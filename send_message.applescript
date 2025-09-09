#!/usr/bin/env osascript

#  https://chrispennington.blog/blog/send-imessage-with-applescript/
on run parameters
  # the number here is the number of seconds
  set theDelay to 3

  # Get phone number from first parameter, or use default
  if (count of parameters) > 0 then
    set phoneNumber to (item 1 of parameters)
  else
    # Default phone number - change this to your preferred default
    set phoneNumber to "+1 (555) 555-1212"
  end if
  tell application "Messages"
    set targetBuddy to phoneNumber
    set targetService to id of 1st account whose service type = iMessage
    set theBuddy to participant targetBuddy of account id targetService
    
    # Send messages starting from the second parameter (first is phone number)
    if (count of parameters) > 1 then
      repeat with arg from 2 to length of parameters
        set textMessage to ( item arg of parameters )
        send textMessage to theBuddy
        delay theDelay
      end repeat
    else
      # If no message parameters provided, send a default message
      send "Hello from AppleScript!" to theBuddy
    end if
  end tell
  log "Message sent"
end run
