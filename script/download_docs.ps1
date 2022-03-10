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

$RepoRootDir = Resolve-Path -Path "$PSScriptRoot/.."
$DocsDir = Resolve-Path -Path "$RepoRootDir/src/content/docs"

function Export-SvnDirectory ($Repository, $DirRepo, $DirDestination) {
    svn export "$Repository/trunk/$DirRepo" "$DirDestination"
}

function Download-Documentation ($Repository, $RelativeToDocsDestination) {
    $DestDir = "$DocsDir/$RelativeToDocsDestination"
    "- Downloading $Repository/main/doc -> $RelativeToDocsDestination ..."
    Export-SvnDirectory $Repository "doc" "$DestDir"
    "- Downloading Done`n"
}

"[  Start  ]"
""
Download-Documentation "https://github.com/Zakhar-the-Robot/brain.git"  "Gears/Brain"
Download-Documentation "https://github.com/Zakhar-the-Robot/io.git"     "Gears/IO"
Download-Documentation "https://github.com/Zakhar-the-Robot/motors.git" "Gears/Motors"
"[  Done   ]"
