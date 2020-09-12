until [[ -n "$IP_ADDRESS" ]]
do
echo "Введите адрес Платформы Нейросс:"
read IP
IP_ADDRESS=$(echo "$IP" | egrep -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | awk -F'.' '$1>
 if [[ -z "$IP_ADDRESS" ]]
   then
   echo "Введен некорректный IP-адрес. Попробуйте еще раз!"
   else
   :
 fi
done
echo "Будет использован следующий IP-адрес: $IP_ADDRESS"
