applefritters
=============

Little bites of Applescript meant to accomplish a small purpose.

## Current Scripts

### Messaging
- **`send_message.applescript`** - Send iMessage to a configurable phone number
  - Usage: `osascript send_message.applescript "+1 (555) 123-4567" "Your message here"`
  - First parameter is the phone number, subsequent parameters are messages to send

### Video Conferencing - Zoom
- **`zoom_mute.applescript`** - Mute Zoom microphone
- **`zoom_unmute.applescript`** - Unmute Zoom microphone  
- **`zoom_mute_toggle.applescript`** - Toggle Zoom microphone mute state

### Video Conferencing - Microsoft Teams
- **`teams_mute.applescript`** - Mute Teams microphone
- **`teams_unmute.applescript`** - Unmute Teams microphone
- **`teams_mute_toggle.applescript`** - Toggle Teams microphone mute state

### Email
- **`unsent_mail_raise.applescript`** - Raise unsent mail window

### Activity Tracking
- **`whathaveiworkedon.app/`** - Track application usage
  - You will need to enable `whathaveiworkedon.app` in Security & Privacy -> Accessibility in order to track usage.

## Deprecated Scripts (kept for reference)

### Microsoft Lync (Deprecated)
- **`lync_mute.applescript`** - Mute Lync microphone (deprecated)
- **`lync_unmute.applescript`** - Unmute Lync microphone (deprecated)
- **`lync_mute_toggle.applescript`** - Toggle Lync microphone mute state (deprecated)

*Note: Lync scripts are deprecated as Microsoft Lync has been replaced by Microsoft Teams, but kept as reference for similar UI automation patterns.*
