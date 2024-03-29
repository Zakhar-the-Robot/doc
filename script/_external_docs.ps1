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
    $(New-Doc "https://github.com/Zakhar-the-Robot/brain_service.git"   "Systems/Brain_Service")
    $(New-Doc "https://github.com/Zakhar-the-Robot/io_face.git"         "Systems/IO_Face")
    $(New-Doc "https://github.com/Zakhar-the-Robot/io_sensors.git"      "Systems/IO_Sensors")
    $(New-Doc "https://github.com/Zakhar-the-Robot/motion_wheels.git"   "Systems/Motion_Wheels")
)
