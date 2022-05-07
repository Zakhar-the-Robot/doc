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


class DocDescriptor {
    [string]$SrcRepo
    [string]$DestDirectory
}

function New-Doc ($SrcRepo, $DestDirectory){
    $result = [DocDescriptor]::new()
    $result.SrcRepo = $SrcRepo
    $result.DestDirectory = $DestDirectory
    return $result
}

$DocList = @(
    $(New-Doc "https://github.com/Zakhar-the-Robot/brain.git"           "Systems/Brain")
    $(New-Doc "https://github.com/Zakhar-the-Robot/io.git"              "Systems/IO")
    $(New-Doc "https://github.com/Zakhar-the-Robot/motion_wheels.git"   "Systems/Motion/Wheeled Platform")
)
