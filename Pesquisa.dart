import 'dart:ffi';
import 'dart:io';


void main(){
print('Informe seu nome completo: ');
String? name = stdin.readLineSync();

stdout.write('Informe sua data de nascimento! \n');

print('Informe o dia:');
String? day = stdin.readLineSync();
int dayInt = ConvertNumber(day);

print('Informe o mês:');
String? month = stdin.readLineSync();
int monthInt = ConvertNumber(month);

print('Informe o ano no formato 0000:');
String? year = stdin.readLineSync();
int yearInt = ConvertNumber(year);


if(MoreEighteen(yearInt) == true){
  print(' Você é maior de idade!');
  print('Olá $name, para onde deseja viajar?');
  print('1-Estados Unidos \n 2-Portual \n 3-Argentia \n 4-Inglaterra');
  print('Escolha uma opção:');
  
  String? option = stdin.readLineSync();
  int optionInt = ConvertNumber(option);
  Travels(optionInt);  
}

else
  print('Só é possível a compra de passagens acima de 18 anos!');

}

void Travels(int optionNumber){
  switch(optionNumber)
  {
    case (1):
      print('Boa viagem a américa');
    case (2):
      print('Boa viagem a Europa!');
    case (3):
      print('Boa viagem aos hermanos!');
    case (4):
      print('Boa viagem aos ingleses');

  }

}


bool MoreEighteen(int year){
 int age = 2025 - year;
 
 if(age >= 18 ){
    return true;
  }
  else{
    return false;
  }
}


ConvertNumber(String? numberString){
  try{
   var number = int.parse(numberString!);
    return number;
  }
  catch(e)
  {
    throw new Exception('Error');
  }
}