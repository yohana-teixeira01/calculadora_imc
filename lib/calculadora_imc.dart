import 'package:calculadora_imc/functions/calculo_imc_fuction.dart';

import 'models/pessoa.dart';
import 'utils/console.dart';

void execute() {
  print("\n------------------------------------------------\n");
  print('Calculadora de IMC!');
  var pessoa = Pessoa(ConsoleUtils.lerNomeComTexto("\nInforme seu nome: "));

  print('\n------------------------------------------------\n');
  print(' Seja Bem-vindo ${pessoa.getNome()}');

  pessoa.setPeso(ConsoleUtils.lerNumeroComTexto('Informe seu peso em KG: '));

  pessoa.setAltura(
      ConsoleUtils.lerNumeroComTexto('Informe  sua altura em metros: '));

  print('\n------------------------------------------------\n');

  var imc = CalculoIMC(pessoa.getPeso(), pessoa.getAltura());

  print('Resultado: ');
  print('IMC: ${imc.calculoIMC()}');
  print('Classificação: ${imc.classificacaoIMC()}');
  print('');
}