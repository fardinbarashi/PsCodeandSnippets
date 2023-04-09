 $ComputerName = ""
 
 $GetProfileSid = Get-WmiObject -ComputerName $ComputerName -Filter "Special=False" -Class Win32_UserProfile | Select-Object Sid
            
 foreach ($UserSid in $GetProfileAttributes) {     
 
 $SID = New-Object System.Security.Principal.SecurityIdentifier($UserSid.sid)            
 $UserAccount = $SID.Translate([System.Security.Principal.NTAccount])            
 $Profile = $UserAccount.value.split("\")[1]  
 $Username = $Profile
 Write-Host $Username
   
    }