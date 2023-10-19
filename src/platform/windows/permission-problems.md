# Windows permission problems

<!-- toc -->

## Permission Problems

If you receive "access denied" messages, some of Anki's files may be set to read only mode, meaning Anki is not able to write to them.

To fix the problem, you can do the following:

- in the search area of the start bar, type cmd.exe and hit enter
- in the window that opens, type the following and hit enter to see your username:

whoami

- type the following, hitting enter after each line, and replacing ____ (and keeping the :F part) with your username from the previous command

cd %APPDATA%

icacls Anki2 /grant ____:F /t

That command should fix the permissions on Anki's data folder, and you should now be able to start the program.

## Antivirus/Firewall/Anti-Malware

Some users have experienced "permission denied" or "readonly" errors that were caused by security software installed on their machine. You may need to add an exception for Anki, or try temporarily disabling the software to rule it out as the cause. Some users have reported that simply turning off their software did not fix the problem, and they either had to add an exception for Anki or uninstall the software.

## Debugging Permission Problems

If problems persist after you've ruled out Antivirus and related programs, have performed the steps above to fix permissions, and don't use OneDrive, please run the following commands in cmd.exe, pressing enter after each one.

whoami

cd %APPDATA%

icacls Anki2 /t

Then please copy & paste or screenshot what you see, and post it to us in a support ticket.
