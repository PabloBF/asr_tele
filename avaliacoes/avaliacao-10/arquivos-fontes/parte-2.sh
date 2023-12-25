# Nesta parte é criado o arquivo passwd contendo os dados de acesso ao mosquitto. Após a versão 1.6.x do eclipse-mosquitto, a configuração padrão passou a ser a de não permitir acesso anônimo (ou seja, sem um usuário e senha). Poderia ser alterada incluindo-se a seguinte linha ao arquivo de configuração (sem o símbolo de comentário '#' no início da linha):
# allow_anonymous true

# Entretanto, decidimos seguir a configuração de segurança recomendada e criar um usuário e senha conforme descrito abaixo. Mais detalhes sobre este assunto podem ser encontrados na página https://mosquitto.org/man/mosquitto-conf-5.html

# o comando abaixo é o seguinte:
# mosquitto_passwd -H hash -c passwordfile username
# senha_escolhida
# confirmacao_da_senha_escolhida

mosquitto_passwd -H sha512-pbkdf2 -c /mosquitto/config/passwd gabriel-marcia-pablo
gabriel-marcia-pablo
gabriel-marcia-pablo

# Saída do contêiner
exit
