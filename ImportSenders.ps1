$content = Get-Content C:\Users\user\Desktop\block.txt


$CurrentConfig = Get-SenderFilterConfig
$CurrentBlockedSender = $CurrentConfig.BlockedSenders


foreach ($line in $content)
{
$CurrentBlockedSender += $line
}


Set-SenderFilterConfig -BlockedSenders $CurrentBlockedSender


Get-SenderFilterConfig | Format-List BlockedSenders