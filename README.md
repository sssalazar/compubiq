# Computação Ubíqua
## Atividade

Desenvolver um projeto com Arduino, medir temperatura e luminosidade. Coletar através da interface serial (Usando o Javino) os valores e plotar um gráfico dos dados.

O que deve ser entregue:
Um relatório descrevendo os procedimentos e tecnologias utilizadas para a realização do experimento, no padrão de tutorial. O código deve ser colocado em um repositório público no github, e o relatório pode ser postado como arquivo README.md na raiz do repositório.

## Requisitos
Esse projeto foi desenvolvido e testado em um abiente composto por JavaEE 7 + Tomcat 8 + Python 3.4 e Arduino UNO.

Para servir como interface do Java com o Python, foi usado a biblioteca JAVAINO.

## Executando

1. Instalar os drivers e IDE do Arduino;

2. Conectar o Arduino no PC;

3. Compilar e enviar o programa para o Arduino, anotando a porta em que ele está conectado;

4. Ligar o serviço do Tomcat 7;

5. Fazer o upload do arquivo WAR;

6. Ao abir o endereço será questionado em qual porta o Arduino se encontra (uma porta COM no caso do Windows);

7. Por padrão o Arduino captura dados de 5 em 5 minutos;

8. Verificar nas páginas dos sensores os dados atualizados;
