echo "enter the website name to block "


read website

echo "are you sure you want to block this website"

read conf


if conf==y||conf==yes

then 

nmap -sP --max-retries=1 --host-timeout=1500ms $website  > nmap_result.txt

echo $website

grep -oP -m 1 -w '\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b' nmap_result.txt > ip.txt


ip_address=$(cat ip.txt)

sudo ufw deny out to $ip_address port 80

else

echo "you are the god,cant deny you!"


fi
