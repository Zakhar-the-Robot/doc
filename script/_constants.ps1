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
$VersionFile = Get-Item "$RepoRootDir/VERSION"

# "RepoRootDir: $RepoRootDir"
# "DocsDir: $DocsDir"
