<#
Goes in to regEdit HKU\.DEFAULT\Control Panel\Keyboard and changes the value to 1
#>

# Run Query

# Enable Num Lock
Set-ItemProperty -Path 'Registry::HKU\.DEFAULT\Control Panel\Keyboard' -Name "InitialKeyboardIndicators" -Value "2"






