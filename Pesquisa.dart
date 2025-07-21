import 'dart:io';

import 'User.dart';

void main(){
print('Informe seu nome: ');
String? name = stdin.readLineSync();

print('Informe seu segundo nome: ');
String? lastName = stdin.readLineSync();

stdout.write('Informe seu cpf:');
String? cpf = stdin.readLineSync();
int cpfInt = ConvertNumber(cpf);

print('Informe data do seu nascimento no formato dd/mm/aaaa');
stdout.write('Informe o dia de seu nascimento:');
String? day = stdin.readLineSync();
int dayInt = ConvertNumber(day);

stdout.write('Informe o mês:');
String? month = stdin.readLineSync();
int monthInt = ConvertNumber(month);

int yearInt;
bool loop = false;
String n = '0000';

do {
stdout.write('Informe o ano no formato quatro dígitos **** :');
String? year = stdin.readLineSync();
yearInt = ConvertNumber(year);  

if(year != null && year.length < n.length ){
  print('ERROr $year: O ano deve estar no formato aaaa!!');
  loop = true;
}

else {
  print('$dayInt/$monthInt/$yearInt');
  loop = false;
}

} while (loop);

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
    throw new Exception('Error o número não pode ser nulo');
  }
}

void exemple(){
  Map<String, String?> usuario1 = {
    'nome' : 'Alice',
    'email' : 'Alice@gmail.com',
    'telefone' : null,
    'endereco' : null,// não informado
  };

  print('Cadastro de Usuários:\n');
  print('Usuário1');
  String nome = usuario1 ['nome'] ?? 'nome não informado';
  String email = usuario1 ['email'] ?? 'email não informado';
  String telefone = usuario1 ['telefone'] ?? 'telefone não informado';
  String endereco = usuario1 ['endereco'] ?? 'endereco não informado';

print('Nome :$nome');

}