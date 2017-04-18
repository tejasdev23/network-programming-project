sudo ufw status numbered


echo "enter the rule number to be the deleted ,the rule number is the serial no present in the left hand side of a rule"


read response


#echo "are you sure u want to delete rule no:$response"

#read confirmation


#iif confirmation==y || confirmation==yes

#then

#sudo ufw delete $response

#else 

#echo "aapka hukum sar aakhon par"

#fi

sudo ufw delete $response

