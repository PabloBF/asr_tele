# Avaliação 9 – Dockerfile e Docker CLI

Responda as seguintes questões:

1. **O que é um Dockerfile?**

   > O Dockerfile é um arquivo de configuração utilizado para definir as instruções necessárias para criar uma imagem Docker. Ele contém uma série de comandos que são executados sequencialmente para configurar o ambiente e criar a imagem que será usada para instanciar contêineres.

2. **Qual comando é usado para iniciar um Dockerfile?**

   > No início de um Dockerfile, deve-se usar o comando `FROM`.
   
   > Para executar um Dockerfile, construindo uma imagem Docker, usa-se o comando `docker build -t nomedaimagem:tag .`.

3. **Qual comando é usado para definir a imagem base no Dockerfile?**

   > O comando `FROM`.

4. **Como você adiciona arquivos locais ao sistema de arquivos do contêiner no Dockerfile?**

   > Com o comando `COPY arquivo_local.txt /caminho/no/contêiner/`.

5. **Como você especifica o diretório de trabalho no Dockerfile?**

   > Com o comando `WORKDIR`.

6. **Qual comando é usado para executar comandos durante a criação da imagem Docker no Dockerfile?**

   > O comando `RUN`.

7. **Como você expõe portas no Dockerfile?**

   > Com o comando `EXPOSE`.

8. **Qual comando é usado para definir variáveis de ambiente no Dockerfile?**

    > O comando `ENV`.

9. **Como você comenta linhas no Dockerfile?**

    > Com o caractere `#`.

10. **Qual comando é usado para executar a aplicação principal quando um contêiner é iniciado no Dockerfile?**

    > O comando `CMD`.

11. **Responda: O Docker usa uma interface CLI para gerenciar os seus vários objetos através de comandos. O que fazem os comandos abaixo:**  
    1. **`docker run`:**
   
       > Cria e executa um contêiner.

    2. **`docker build`:**
   
       > Constrói uma imagem.

    3. **`docker pull`:**
   
       > Descarrega uma imagem a partir de um registro no Docker hub.

    4. **`docker push`:**
   
       > Envia uma imagem para o Docker hub.

    5. **`docker ps`:**
   
       > Lista os contêineres ativos.

    6. **`docker images`:**
   
       > Lista as imagens.

    7. **`docker stop`:**
   
       > Finaliza a execução de um contêiner.

    8. **`docker start`:**
   
        > Executa um contêiner que já existe.

    9. **`docker rm`:**
   
        > Remove um contêiner.

    10. **`docker rmi`:**
   
        > Remove uma imagem.

    11. **`docker exec`:**
   
        > Executa um novo comando em um contêiner que está em execução.

    12. **`docker logs`:**
   
        > Busca os *logs* de um contêiner.

    13. **`docker network`:**
   
        > Gerencia redes.

    14. **`docker volume`:**
   
        > Gerencia volumes.

Registre as respostas a esse questionário do seu GitHub e poste o *link* da atividade no Classroom.
