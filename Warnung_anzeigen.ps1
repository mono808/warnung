param(
    [string]$title,
    [string]$text='nix zu sagen'
)

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object System.Windows.Forms.Form 
$form.Text = $title
$form.Size = New-Object System.Drawing.Size(340,180) 
$form.StartPosition = "CenterScreen"

######################################
#InfoText
$infoLabel = New-Object System.Windows.Forms.Label
$infoLabel.Location = New-Object System.Drawing.Size(10,20) 
$infoLabel.Size = New-Object System.Drawing.Size(320,45) 
$infoLabel.Text = $text
$form.Controls.Add($infoLabel)

#######################################
#Buttons
$OKButton = New-Object System.Windows.Forms.Button
$OKButton.Location = New-Object System.Drawing.Point(60,100)
$OKButton.Size = New-Object System.Drawing.Size(200,23)
$OKButton.Text = "Jaa, Danke Schlaubischlumpf"
$OKButton.DialogResult = [System.Windows.Forms.DialogResult]::OK
$form.AcceptButton = $OKButton
$form.Controls.Add($OKButton)

########################################

$form.Topmost = $True

$form.Add_Shown({$OKButton.Select()})
$result = $form.ShowDialog()
