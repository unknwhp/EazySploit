#! by unknwhp
echo
echo
azul='\033[01;34m'
vermelho='\033[01;31m'
verde='\033[01;32m'
amarelo='\033[01;33m'
branco='\033[01;37m'
figlet 'EazySploiter'
echo
echo

echo "  $amarelo [1]$branco Windows"
echo
echo "  $amarelo [2]$branco Linux"
echo
echo "  $amarelo [3]$branco Android"
echo
echo "  $amarelo [4]$branco Other"
echo
echo "  $amarelo [99]$branco Exit"
echo
echo
echo "$amarelo Select the target to exploit:"
echo -n "$verde eazy> $branco" && read target
echo
if [ $target -eq 1 ]
then
	echo
	echo "  $amarelo[1]$branco browser"
	echo
        echo "  $amarelo[2]$branco fileformat"
	echo
        echo "  $amarelo[3]$branco http"
	echo
        echo "  $amarelo[4]$branco smb"
	echo
        echo "  $amarelo[5]$branco vnc"
	echo
        echo "$amarelo Select a host:"
	echo -n "$verde windows>  $branco" && read wintarget 
	if [ $wintarget -eq 1 ]
	then
		echo
	        echo "  $amarelo[1]$branco adobe_flash_regex_value"
	        echo
	        echo "  $amarelo[2]$branco autodesk_idrop"
	        echo
	        echo "  $amarelo[3]$branco firefox_smil_uaf"
	        echo
	        echo "  $amarelo[4]$branco ie_unsafe_scripting"
	        echo
	        echo "  $amarelo[5]$branco ms16_051_vbscript"
	        echo
		echo "$amarelo Select a exploit:"
		echo -n "$verde windows/browser> $branco" && read winbrowser
	elif [ $wintarget -eq 2 ]
        then
                echo
                echo "  $amarelo[1]$branco adobe_pdf_embedded_exe"
                echo
                echo "  $amarelo[2]$branco ms15_020_shortcut_icon_dllloader"
                echo
                echo "  $amarelo[3]$branco vlc_smb_uri"
                echo
                echo "  $amarelo[4]$branco wireshark_mpeg_overflow"
                echo
                echo "  $amarelo[5]$branco cve_2017_8464_lnk_rce"
                echo
                echo "$amarelo Select a exploit:"
                echo -n "$verde windows/fileformat> $branco" && read winformat
	fi
 fi

