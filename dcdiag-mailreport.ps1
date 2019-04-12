Get-Date > D:\dcdiagreport\dcdiagreport.txt
dcdiag /a /q >> D:\dcdiagreport\dcdiagreport.txt
$From="you mail"
$To="Addressee "
$Subject="mail Title" 
$Body=Get-Content "The dcdiag test txt path" -RAW
$smtpServer="smtp mail server"
$smtpPort=smtp port
$username="user name"
$password="password"
$SMTPMessage=New-Object System.Net.Mail.MailMessage($From, $To, $Subject,$Body) 
$SMTPClient=New-Object Net.Mail.SmtpClient($smtpServer, $SmtpPort)
$SMTPMessage.IsBodyHtml = $false
$SMTPClient.EnableSsl=$ture #ssl is enable or not
$SMTPClient.Credentials=New-Object System.Net.NetworkCredential($username, $password); 
$SMTPClient.Send($SMTPMessage) #send
