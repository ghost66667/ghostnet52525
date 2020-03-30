$EmailTo = "ghostacccount666@gmail.com"
$EmailFrom = "ghostacccount666@gmail.com"
$Subject = "Transmission 2" 
$Body = "echo SUCCESSFULLY CONNECTED 3" 
$SMTPServer = "smtp.gmail.com" 

$SMTPMessage = New-Object System.Net.Mail.MailMessage($EmailFrom,$EmailTo,$Subject,$Body)


$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587) 
$SMTPClient.EnableSsl = $true 
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential("ghostacccount666@gmail.com", "timeryan?"); 
$SMTPClient.Send($SMTPMessage)