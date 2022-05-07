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

. $PSScriptRoot/_functions.ps1
. $PSScriptRoot/_external_docs.ps1

"[  Start  ]"
""

foreach ($d in $DocList) {
    Download-Documentation $d.SrcRepo $d.DestDirectory
}

Add-Version -Minor
"[  Done   ]"
