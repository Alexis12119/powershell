Set-PSReadLineOption -PredictionSource History

Set-PSReadLineOption -PredictionViewStyle ListView
# Shows navigable menu of all options when hitting Tab
# Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineKeyHandler -Key Ctrl+n -Function HistorySearchForward
Set-PSReadlineKeyHandler -Key Ctrl+p -Function HistorySearchBackward

# Import-Module -Name Terminal-Icons

# Import-Module PSFzf
# Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\nightly.omp.json" | Invoke-Expression

# Open files from fzf
function f {
  # Define the command to invoke fzf and select a file
  $fzfCommand = "fzf --preview 'bat --color=always {}'"

  # Invoke fzf and capture the selected file
  $selectedFile = Invoke-Expression -Command $fzfCommand

  # Check if a file was selected
  if ($selectedFile) {
      # Open the selected file in neovim
      nvim $selectedFile
  }
}

function which ($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue |
        Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

function ll() {
    Get-ChildItem | Format-Wide
}

function nvims()
{
  $items = "Default", "NvChad", "AstroNvim", "LazyVim", "kickstart"
  $config = $items | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0

  if ([string]::IsNullOrEmpty($config))
  {
    Write-Output "Nothing selected"
    break
  }
 
  if ($config -eq "Default")
  {
    $config = ""
  }

  $env:NVIM_APPNAME=$config
  nvim $args
}