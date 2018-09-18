/*
  Desenvolver um projeto com Arduino, medir temperatura e luminosidade. Coletar através da interface serial (Usando o Javino) os valores e plotar um gráfico dos dados.

    O que deve ser entregue:
    Um relatório descrevendo os procedimentos e tecnologias utilizadas para a realização do experimento, no padrão de tutorial. O código deve ser colocado em um repositório público no github, e o relatório pode ser postado como arquivo README.md na raiz do repositório.

    As caixas com os equipamentos vão estar no armário no Labtempo (sala 403).
*/
#include <Javino.h>

#define LDR  A0
#define TEMP A1

Javino jav;

void setup()
{
  pinMode(TEMP, INPUT);
  pinMode(LDR,  INPUT);
  
  Serial.begin(9600);
}

void loop()
{
  if(jav.availablemsg()){
    answer(j.getmsg());    
  } 
  delay(200);
}

void answer(String request){
  if ( request == "temperatura" ){
    double read = (double)analogRead(TEMP);
    double temp = ((read * 0.004882814)- 0.5) * 100.0;
    jav.sendmsg(temp);
  }else if (request = "luminosidade"){
    double  ldr  = (100 * (double)analogRead(LDR) )/1024;
    jav.sendmsg(ldr);
  }
}
