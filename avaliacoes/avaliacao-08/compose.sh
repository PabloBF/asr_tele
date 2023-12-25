git clone https://github.com/docker/getting-started-app.git
cd getting-started-app
cat > compose.yml << EOL
version: "3.8"
services:
  app:
    image: node:18-alpine
    command: sh -c "yarn install && yarn run dev"
    ports:
      - target: 3000
        host_ip: 127.0.0.1
        published: "3000"
        protocol: tcp
        mode: host
    working_dir: /app
    volumes:
      - type: bind
        source: ./
        target: /app
    environment:
      MYSQ_HOST: mysql
      MYSQL_USER: root
      MYSQL_PASSWORD: secret
      MYSQL_DB: todos
    
  mysql:
    image: mysql:8.0
    volumes:
      - type: volume
        source: todo-mysql-data
        target: /var/lib/mysql
    environment:
      MYSQL_ROOT_PASSWORD: secret
      MYSQL_DATABASE: todos

volumes:
  todo-mysql-data:
EOL
sudo docker compose up --detach
sudo docker compose ps
