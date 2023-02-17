Set-PSReadLineOption -PredictionSource History

Set-PSReadLineOption -PredictionViewStyle ListView
# Shows navigable menu of all options when hitting Tab
# Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineKeyHandler -Key Ctrl+p -Function HistorySearchForward
Set-PSReadlineKeyHandler -Key Ctrl+n -Function HistorySearchBackward

Import-Module -Name Terminal-Icons

Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\nightly.omp.json" | Invoke-Expression

function which ($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue |
        Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

function ll() {
    Get-ChildItem | Format-Wide
}
