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

. $PSScriptRoot/functions.ps1

"[  Start  ]"
""
Download-Documentation "https://github.com/Zakhar-the-Robot/brain.git"  "Gears/Brain"
Download-Documentation "https://github.com/Zakhar-the-Robot/io.git"     "Gears/IO"
Download-Documentation "https://github.com/Zakhar-the-Robot/motors.git" "Gears/Motors"
Add-Version -Minor
"[  Done   ]"
