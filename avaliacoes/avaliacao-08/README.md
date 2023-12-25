<p align="center">
    <picture>
        <source media="(prefers-color-scheme: dark)" srcset="/img/ifce/logo-vertical-branca_media.png">
        <source media="(prefers-color-scheme: light)" srcset="/img/ifce/logo-vertical-colorida_media.png">
        <img alt="IFCE" width="100" src="/img/ifce/logo-vertical-colorida_media.png">
    </picture>
</p>

<p align="center"><b>INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO CEARÁ</b><br>
<b><i>CAMPUS</i> FORTALEZA</b><br>
<b>TECNOLOGIA EM TELEMÁTICA</b></p>

<p align="center">PABLO BUSATTO</p>

<p align="center">17 de novembro de 2023</p>

# Avaliação 8 – Docker Compose
1. Crie uma configuração usando o Docker Compose. Use no mínimo dois serviços. Evidencie o arquivo `docker-compose` e o *print* da execução dos contêineres.

   > Conteúdo do arquivo compose.yml:
   > ```yaml
   > version: "3.8"
   > services:
   >   app:
   >     image: node:18-alpine
   >     command: sh -c "yarn install && yarn run dev"
   >     ports:
   >       - target: 3000
   >         host_ip: 127.0.0.1
   >         published: "3000"
   >         protocol: tcp
   >         mode: host
   >    working_dir: /app
   >    volumes:
   >      - type: bind
   >        source: ./
   >        target: /app
   >    environment:
   >      MYSQ_HOST: mysql
   >      MYSQL_USER: root
   >      MYSQL_PASSWORD: secret
   >      MYSQL_DB: todos
   > 
   >   mysql:
   >     image: mysql:8.0
   >     volumes:
   >       - type: volume
   >         source: todo-mysql-data
   >         target: /var/lib/mysql
   >     environment:
   >       MYSQL_ROOT_PASSWORD: secret
   >       MYSQL_DATABASE: todos
   > volumes:
   >   todo-mysql-data:
   > ```

   > ![1](https://github.com/PabloBF/asr_tele/assets/55034604/566fb183-64b8-477e-ba9e-a1219214a607)
