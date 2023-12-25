# Interrompe o contêiner para indicar no arquivo de configuração mosquitto.conf o caminho para o arquivo passwd contendo os dados de usuário e senha para acesso criado na Parte 2 descrita acima.

docker stop mosquitto
echo "password_file /mosquitto/config/passwd" >> mosquitto/config/mosquitto.conf
docker start mosquitto
# Depois disso é só acessar o Home Assistant pela porta disponibilizada, no caso 8123, e fazer a integração e o restante da configuração por lá (como demonstrado no vídeo e nos prints).
