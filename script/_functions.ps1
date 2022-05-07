# *************************************************************************
#
# Copyright (c) 2022 Andrei Gramakov. All rights reserved.
#
# This file is licensed under the terms of the MIT license.  
# For a copy, see: https://opensource.org/licenses/MIT
#
# site:    https://agramakov.me
# e-mail:  mail@agramakov.me
#
# *************************************************************************

. $PSScriptRoot/_constants.ps1

function Get-Version {
    $v = "$(Get-Content $VersionFile)".split('\n')[0].split(".")
    return ($($v[2] -as [int]), 
        $($v[1] -as [int]), 
        $($v[0] -as [int]))
}

function Set-Version ($Major, $Minor, $Patch) {
    $v_str = "$Major.$Minor.$Patch"
    $v_str | Out-File $VersionFile
}

function Add-Version {
    param (
        [parameter(Mandatory = $false)]
        [Switch]$Major,
        [parameter(Mandatory = $false)]
        [Switch]$Minor,
        [parameter(Mandatory = $false)]
        [Switch]$Patch
    )
    
    $ver = Get-Version
    if ($Major){
        $ver[2] += 1
    }
    if ($Minor){
        $ver[1] += 1
    }
    if ($Patch){
        $ver[0] += 1
    }
    
    Set-Version $ver[2] $ver[1] $ver[0]
}

function Export-SvnDirectory ($Repository, $DirRepo, $DirDestination) {
    svn export --force "$Repository/trunk/$DirRepo" "$DirDestination"
}

function Download-Documentation ($Repository, $RelativeToDocsDestination) {
    $DestDir = "$DocsDir/$RelativeToDocsDestination"
    
    "- Clean an old directory"
    Remove-Item -Force -Recurse $DestDir -ErrorAction SilentlyContinue
    
    "- Downloading $Repository/main/doc -> $RelativeToDocsDestination ..."
    Export-SvnDirectory $Repository "doc" "$DestDir"
    
    "- Add a file with source repo info"
    "Documentation source: $Repository`nDon't modify it here!" | Out-File -FilePath "$DestDir/source.txt"
    
    "- Downloading Done`n"
}
