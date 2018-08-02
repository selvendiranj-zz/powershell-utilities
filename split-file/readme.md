# Powershell functions to split and join binary files fast

Two Powershell functions to split and join binary files fast. The functions are using .Net BinaryWriter methods. If .Net 4 or above is detected, the quick .CopyTo() method is used to join files.

## Tags : Powershell, file, join, Split

Two Powershell functions to split and join binary files fast. The functions are using .Net BinaryWriter methods. If .Net 4 or above is detected, the quick .CopyTo() method is used to join files.

Usage: (in the following examples I assume all files are in the current directory)

Dot source the functions first:

```powershell
. .\Split-File.ps1
```
You can then split a file BigFile.dat with

```powershell
Split-File "BigFile.dat" 10000000
```

into parts of 10000000 byte size or to parts of the default size of 100 MB with

```powershell
Split-File "BigFile.dat"
```

The generated part files are named BigFile01.dat, BigFile02.dat, BigFile03.dat ...
You can join the part files BigFile01.dat, BigFile02.dat, BigFile03.dat ... to the original file e.g. with

```powershell
dir BigFile??.dat | Join-File Rebuild.dat
```

Rebuild.dat is the same file as the original BigFile.dat.
