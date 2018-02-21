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
elif [ $target -eq 2 ]
then
        clear
        echo
        echo "  $amarelo[1]$branco http"
        echo
        echo "  $amarelo[2]$branco samba"
        echo
        echo "  $amarelo[3]$branco ssh"
        echo
        echo "  $amarelo[4]$branco local"
        echo
        echo "$amarelo Select a host:"
        echo -n "$verde linux>  $branco" && read ltarget
	if [ $ltarget -eq 1 ]
	then
		clear
       		echo
		echo "  $amarelo[1]$branco apache_continuum_cmd_exec"
	        echo
        	echo "  $amarelo[2]$branco cisco_firepower_useradd"
       		echo
		echo "  $amarelo[3]$branco nginx_chunked_size"
       		echo
  		echo "  $amarelo[4]$branco vcms_upload"
       		echo
	        echo "$amarelo Select a exploit:"
        	echo -n "$verde linux/http>  $branco" && read lhttp
		if [ $lhttp -eq 1 ]
		then
			msfconsole -x 'use exploit/linux/http/apache_continuum_cmd_exec; options'
		elif [ $lhttp -eq 2 ]
		then
			msfconsole -x 'use exploit/linux/http/cisco_firepower_useradd; options'
		elif [ $lhttp -eq 3 ]
		then
			msfconsole -x 'use exploit/linux/http/nginx_chunked_size; options'
		elif [ $lhttp -eq 4 ]
		then
			msfconsole -x 'use exploit/linux/http/vcms_upload; options'
		fi
	elif [ $ltarget -eq 2 ]
	then
		clear
       		echo
		echo "  $amarelo[1]$branco chain_reply"
	        echo
        	echo "  $amarelo[2]$branco trans2open"
       		echo
		echo "  $amarelo[3]$branco is_known_pipename"
       		echo
  		echo "$amarelo Select a exploit:"
        	echo -n "$verde linux/samba>  $branco" && read lsamba
		if [ $lsamba -eq 1 ]
		then
			msfconsole -x 'use exploit/linux/samba/chain_reply; options'
		elif [ $lsamba -eq 2 ]
		then
			msfconsole -x 'use exploit/linux/samba/trans2open; options'
		elif [ $lsamba -eq 3 ]
		then
			msfconsole -x 'use exploit/linux/samba/is_known_pipename; options'
		fi
	elif [ $ltarget -eq 3 ]
	then
		clear
       		echo
		echo "  $amarelo[1]$branco mercurial_ssh_exec"
	        echo
        	echo "  $amarelo[2]$branco quantum_vmpro_backdoor"
       		echo
		echo "  $amarelo[3]$branco symantec_smg_ssh"
		echo
		echo "  $amarelo[4]$branco solarwinds_lem_exec"
       		echo
  		echo "$amarelo Select a exploit:"
        	echo -n "$verde linux/samba>  $branco" && read lssh
		if [ $lssh -eq 1 ]
		then
			msfconsole -x 'use exploit/linux/ssh/mercurial_ssh_exec; options'
		elif [ $lssh -eq 2 ]
		then
			msfconsole -x 'use exploit/linux/ssh/quantum_vmpro_backdoor; options'
		elif [ $lssh -eq 3 ]
		then
			msfconsole -x 'use exploit/linux/ssh/symantec_smg_ssh; options'
		elif [ $lssh -eq 4 ]
		then
			msfconsole -x 'use exploit/linux/ssh/solarwinds_lem_exec; options'
		fi
	elif [ $ltarget -eq 4 ]
	then
		clear
       		echo
		echo "  $amarelo[1]$branco bpf_priv_esc"
	        echo
        	echo "  $amarelo[2]$branco desktop_privelege_escalation"
       		echo
		echo "  $amarelo[3]$branco pkexec"
       		echo
  		echo "$amarelo Select a exploit:"
        	echo -n "$verde linux/local>  $branco" && read llocal
		if [ $llocal -eq 1 ]
		then
			msfconsole -x 'use exploit/linux/local/bpf_priv_esc; options'
		elif [ $llocal -eq 2 ]
		then
			msfconsole -x 'use exploit/linux/local/desktop_privelege_escalation; options'
		elif [ $llocal -eq 3 ]
		then
			msfconsole -x 'use exploit/linux/local/pkexec; options'
		fi
	fi
elif [ $target -eq 3 ]
then
        clear
        echo
        echo "  $amarelo[1]$branco browser"
        echo
        echo "  $amarelo[2]$branco fileformat"
        echo
        echo "$amarelo Select a host:"
        echo -n "$verde android>  $branco" && read andtarget
	if [ $andtarget -eq 1 ]
	then
		clear
       		echo
		echo "  $amarelo[1]$branco stagefright_mp4_tx3g_64bit"
	        echo
        	echo "  $amarelo[2]$branco webview_addjavascriptinterface"
       		echo
		echo "  $amarelo[3]$branco samsung_knox_smdm_url"
       		echo
	        echo "$amarelo Select a exploit:"
        	echo -n "$verde android/browser>  $branco" && read andbrowser
		if [ $andbrowser -eq 1 ]
		then
			msfconsole -x 'use exploit/android/browser/stagefright_mp4_tx3g_64bit; options'
		elif [ $andbrowser -eq 2 ]
		then
			msfconsole -x 'use exploit/android/browser/webview_addjavascriptinterface; options'
		elif [ $andbrowser -eq 3 ]
		then
			msfconsole -x 'use exploit/android/browser/samsung_knox_smdm_url; options'
		fi
	elif [ $andtarget -eq 2 ]
	then
		clear
       		echo
		echo "  $amarelo[1]$branco adobe_reader_pdf_js_interface"
       		echo
	        echo "$amarelo Select a exploit:"
        	echo -n "$verde android/fileformat>  $branco" && read andfile
		if [ $andfile -eq 1 ]
		then
			msfconsole -x 'use exploit/android/fileformat/adobe_reader_pdf_js_interface; options'
		fi
	fi
fi
