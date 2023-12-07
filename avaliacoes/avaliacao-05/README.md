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

<p align="center">3 de outubro de 2023</p>

# Avaliação 5 – *Proxy* reverso
1. Instalar o NGINX e configurar um *proxy* reverso como apresentado nos tutoriais.

   > ![1](https://github.com/PabloBF/asr_tele/assets/55034604/a9bd23c5-c0b7-4ecb-80c2-20cecf9f1cd3)
     ***Figura 1**. Endereço `localhost/dashboard` não é localizado quando o NGINX ainda não foi configurado como proxy reverso.*

   > ---

   > ![2](https://github.com/PabloBF/asr_tele/assets/55034604/b8ddf178-219d-48c4-a5ad-bde792416670)
     ***Figura 2**. Configuração para o NGINX funcionar como *proxy* reverso, redirecionando do endereço `localhost:8080/dashboard` para `localhost/dashboard`.*

   > ---

   > ![3](https://github.com/PabloBF/asr_tele/assets/55034604/f56446ee-515d-4301-9878-df3961b8e2fd)
     ***Figura 3**. Com o NGINX ativo e configurado como *proxy* reverso, o endereço `localhost/dashboard` redireciona para `localhost:8080/dashboard`.*
