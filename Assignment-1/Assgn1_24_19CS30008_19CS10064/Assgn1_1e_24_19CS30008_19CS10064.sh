V=0;(($#>1))&&(($2==1))&&V=1;REQ_HEADERS=$1;curl https://www.example.com/>example.html;(($?==0))&&msg="Fetched-example.com"||msg="Error-fetching-example.com";(($V==1))&&echo $msg;curl -i http://ip.jsontest.com/;(($?==0))&&msg="Fetched-IP"||msg="Error-fetching-IP";(($V==1))&&echo $msg;arr=(${REQ_HEADERS//,/ });s=$(printf ".\"%s\", " "${arr[@]}");s=${s::-2};curl http://headers.jsontest.com/|jq "$s";(($?==0))&&msg="Fetched-headers"||msg="Error-fetching-headers";(($V==1))&&echo $msg;f=(JSONData/*);>valid.txt;>invalid.txt;for((i=0;i<${#f[@]};i++));do s=" ";ln="val=\$(curl${s}-d${s}\"json=\`cat${s}${f[i]}${s}\`\"${s}http://validate.jsontest.com/|jq${s}.validate)";eval $ln;((${#val}==4))&&msg="${i}-valid"||msg="${i}-invalid";(($V==1))&&echo $msg;((${#val}==4))&&file="valid.txt"||file="invalid.txt";echo ${f[i]##*/}>>$file;done