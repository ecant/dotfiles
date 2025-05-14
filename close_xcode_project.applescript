-- Save the name of the currently frontmost application
tell application "System Events"
    set frontAppName to name of first application process whose frontmost is true
end tell

-- Bring Xcode to the front
tell application "Xcode"
    activate
end tell

-- Give Xcode time to activate
delay 0.5

-- Close the currently open project
tell application "System Events"
    tell process "Xcode"
        -- Send Cmd+Shift+W to close the frontmost project window
        keystroke "w" using {command down, shift down}
        delay 1

        -- If a dialog appears, check for "Stop Tasks" and click it
        if exists (window 1 whose subrole is "AXDialog") then
            try
                click button "Stop Tasks" of window 1
            end try
        end if
    end tell
end tell

-- Reactivate the originally frontmost app
tell application frontAppName
    activate
end tell