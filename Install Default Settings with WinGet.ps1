#enable execution
Set-ExecutionPolicy Unrestricted

#enable NumLock
Set-ItemProperty -Path 'Registry::HKU\.DEFAULT\Control Panel\Keyboard' -Name "InitialKeyboardIndicators" -Value "2"
 
#enable SMBv1
enable-WindowsOptionalFeature -Online -FeatureName smb1protocol
#EnableGuestSMB2-SMB3
Set-ItemProperty -Path 'Registry::HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters' -Name "AllowInsecureGuestAuth" -Type DWord -Value "1"
 
#EnableLinkedConnection
Set-ItemProperty -Path 'Registry::HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name "EnableLinkedConnections" -Type DWord -Value "1"

# install IrfanView
winget install IrfanSkiljan.IrfanView

# install VCRedist
winget install Microsoft.VCRedist.2005.x86
winget install Microsoft.VCRedist.2008.x86
winget install Microsoft.VCRedist.2010.x86
winget install Microsoft.VCRedist.2012.x86
winget install Microsoft.VCRedist.2013.x86
winget install Microsoft.VCRedist.2015+.x86

winget install Microsoft.VCRedist.2005.x64
winget install Microsoft.VCRedist.2008.x64
winget install Microsoft.VCRedist.2010.x64
winget install Microsoft.VCRedist.2012.x64
winget install Microsoft.VCRedist.2013.x64
winget install Microsoft.VCRedist.2015+.x64

winget install Microsoft.VCRedist.2019.arm64
winget install Microsoft.VCRedist.2022.arm64

# install DotNet
winget install Microsoft.DotNet.Runtime.6
winget install Microsoft.DotNet.AspNetCore.6
winget install Microsoft.DotNet.Runtime.6

# install Java
winget install Oracle.JavaRuntimeEnvironment

# for Python scripts
winget install Python.Python.3.11

