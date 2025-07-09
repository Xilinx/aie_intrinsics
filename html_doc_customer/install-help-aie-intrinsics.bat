rem #
rem # COPYRIGHT NOTICE
rem # Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
rem #

rem # This utility copies the webhelp files to the recommended location so 
rem # that you can access the help from within the Vitis IDE.


@echo off & cls
if not "%minimized%"=="" goto :minimized
set minimized=true
start /min cmd /C "%~dpnx0"
goto :EOF
:minimized
mode 75,40
powershell (New-Object -ComObject Wscript.Shell).Popup("""This utility copies the webhelp files to the recommended location so that you can access the help from within the Vitis IDE.`n`nClick OK to continue.""",0,"""Vitis Unified Software Development Documentation""",0x0)
powershell (New-Object -ComObject Wscript.Shell).Popup("""Click OK to copy the help files to %UserProfile%\.Xilinx\Vitis\2020.2\helpdocs\aie_intrinsics\""",0,"""Accessing AI Engine Intrinsics Documentation""",0x0)
mkdir "%UserProfile%\.Xilinx\Vitis\2020.2\helpdocs\aie_intrinsics\
XCOPY /E/Y *.* "%UserProfile%\.Xilinx\Vitis\2020.2\helpdocs\aie_intrinsics\."
cd "%UserProfile%\.Xilinx\Vitis\2020.2\helpdocs\aie_intrinsics\."
DEL *.bat
DEL *.sh
powershell (New-Object -ComObject Wscript.Shell).Popup("""Operation Completed!`n`nYou can now access the AI Engine Intrinsics Documentation from within the Vitis IDE. `n`nLaunch the Vitis IDE and select Help `> AI Engine Intrinsics Help to view the help files.""",0,"""Accessing Vitis Environment Help Content""",0x0)