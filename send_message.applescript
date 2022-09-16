#!/usr/bin/env osascript

#  https://chrispennington.blog/blog/send-imessage-with-applescript/
on run parameters
  # the number here is the number of seconds
  set theDelay to 3
  # Verify if this can use display names
  set phoneNumber to "+1 (555) 555-1212"
  tell application "Messages"
    set targetBuddy to phoneNumber
    set targetService to id of 1st account whose service type = iMessage
    repeat with a from 1 to length of parameters
      set textMessage to ( item a of parameters )
      set theBuddy to participant targetBuddy of account id targetService
      send textMessage to theBuddy
      delay theDelay
    end repeat
  end tell
  log "Message sent"
end run
