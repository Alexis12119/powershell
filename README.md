# Windows Setup

## Powershell Setup

* Clone this repository
```sh
git clone https://github.com/Alexis12119/powershell.git Documents\Powershell
```
**NOTE:** Put `nightly.omp.json` in the `$env:POSH_THEMES_PATH`

* [Scoop](https://scoop.sh/) - A command-line installer

**NOTE:** Use Only [PowerShell](https://github.com/PowerShell/PowerShell) (version 5.1 or later). 

```ps1
 Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
```

```ps1
irm get.scoop.sh | iex
```

* [Git for Windows](https://gitforwindows.org/) - Version Control

```ps1
scoop bucket add main
```

```ps1
scoop install git
```

* [Oh My Posh](https://ohmyposh.dev/) - Prompt theme engine

```ps1
scoop bucket add main
```

```ps1
scoop install oh-my-posh
```

* [Terminal Icons](https://github.com/devblackops/Terminal-Icons) - Folder and file icons

```ps1
scoop bucket add extras
```

```ps1
scoop install terminal-icons
```

* [PSReadLine](https://docs.microsoft.com/en-us/powershell/module/psreadline/?view=powershell-7.2) - Cmdlets for customizing the editing environment, used for autocompletion

```ps1
scoop bucket add extras
```

```ps1
scoop install psreadline
```

* [z](https://www.powershellgallery.com/packages/z/1.1.13) - Directory jumper

```ps1
scoop bucket add extras
```

```ps1
scoop install z
```

* [PSFzf](https://github.com/kelleyma49/PSFzf) - Fuzzy finder

```ps1
scoop bucket add extras
```

```ps1
scoop install psfzf
```
