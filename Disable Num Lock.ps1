<#
Goes in to regEdit HKU\.DEFAULT\Control Panel\Keyboard and changes the value to 0
#>

# Run Query
# Disable Num Lock
Set-ItemProperty -Path 'Registry::HKU\.DEFAULT\Control Panel\Keyboard' -Name "InitialKeyboardIndicators" -Value "0"

