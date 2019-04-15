Get-Date > Generated TXT file address
dcdiag /a /q >> Generated TXT file address
$Body=Get-Content -Encoding UTF8 "Generated TXT file address " -RAW 
send-mailmessage -to "to mail address" -from "from mail address" -subject "Title" -Attachments "Generated TXT file address " -smtp smtp server address -body $body -Encoding UTF8