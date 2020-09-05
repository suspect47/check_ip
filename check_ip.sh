until [[ -n "$VALID_IP" ]]
do
echo "Введите адрес Платформы Нейросс:"
read IP_ADDRESS
echo "вот айпи: $IP_ADDRESS"
VALID_IP=$(echo "$IP_ADDRESS" | egrep -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | awk -F'.' '$1 <=255 && $2 <= 255 && $3 <= 255 && $4 <= 255')
echo "вот валид айпи: $VALID_IP"
done
echo "Будет использован следующий IP-адрес: $VALID_IP"
