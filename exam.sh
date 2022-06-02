echo "-------------------------------------------"
echo "-------WELCOME TO MY RECON PROJECT---------"
echo "-------------------------------------------"
echo "---------ENTER VALID DOMAIN NAME-----------"
echo "-------------------------------------------"
read url
echo "---------DOMAIN IP RESOLUTION-------------"
nslookup $url
echo "--------------TOOL WHOIS------------------"
whois $url
echo "--------------TOOL DIG--------------------"
dig $url
echo "-------------TOOL SUBLIST3R---------------"
sublist3r -d $url -o ww.txt
echo "-----TOOL FOR PUBLIC EMAIL ADDRESS--------"
theHarvester -d $url -l 500 -b all
echo "-----------TOOL OPS AND OS RECON-----------"
nmap $url
