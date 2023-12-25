# Criação dos diretórios
mkdir --parents mosquitto/config mosquitto/log


# Criação do arquivo mosquitto.conf
cat > mosquitto/config/mosquitto.conf << EOL
listener 1883
persistence true
persistence_location /mosquitto/data/
log_dest file /mosquitto/log/mosquitto.log
EOL


# Criação do arquivo compose.yml
cat > compose.yml << EOL
version: "3.8"
services:
  mosquitto:
    container_name: mosquitto
    image: eclipse-mosquitto
    volumes:
      - type: bind
        source: ./mosquitto/config
        target: /mosquitto/config
      - type: bind
        source: ./mosquitto/log
        target: /mosquitto/log
      - type: volume
        source: mosquitto_data
        target: /mosquitto/data
    ports:
      - target: 1883
        published: 1883
        protocol: tcp
        mode: host
      - target: 9001
        published: 9001
        protocol: tcp
        mode: host
  homeassistant:
    container_name: homeassistant
    image: homeassistant/home-assistant:latest
    restart: always
    privileged: true
    environment:
      TZ: America/Fortaleza
    ports:
      - target: 8123
        published: "8123"
        protocol: tcp
        mode: host
    volumes:
      - type: volume
        source: homeassistant_data
        target: /config

volumes:
  mosquitto_data:
    name: "mosquitto-data"
  homeassistant_data:
    name: "homeassistant-data"
EOL


# Criação dos contêiners a partir do compose.yml
docker compose up --detach


# Execução do contêiner `mosquitto`
docker exec --interactive --tty mosquitto /bin/sh # acessa o terminal no contêiner
