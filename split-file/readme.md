# Powershell functions to split and join binary files fast

Two Powershell functions to split and join binary files fast. The functions are using .Net BinaryWriter methods. If .Net 4 or above is detected, the quick .CopyTo() method is used to join files.

## Tags : Powershell, file, join, Split

Two Powershell functions to split and join binary files fast. The functions are using .Net BinaryWriter methods. If .Net 4 or above is detected, the quick .CopyTo() method is used to join files.

Usage: (in the following examples I assume all files are in the current directory)

Dot source the functions first:

```powershell
. .\Split-File.ps1
```
