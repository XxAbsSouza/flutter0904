import 'package:calculadora_imc/components/bottom_button.dart';
import 'package:calculadora_imc/components/contador.dart';
import 'package:calculadora_imc/components/custom_card.dart';
import 'package:calculadora_imc/components/gender_card.dart';
import 'package:calculadora_imc/components/slider_altura.dart';
import 'package:flutter/material.dart';
enum Genero{masculino, feminino} // enum --> faz com que os valores etados sejam os unicos possiveis
class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage({super.key});


  @override
  State<CalculadoraPage> createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  // //Masc - 1 fem - 2
  // int generoSelecionado = 0;
  Genero? generoSelecionado;
  int altura = 120;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              //expanded ocupa todo o espaçco disponível, colocar um Placeholder()-->Expanded(child: Placeholder()), no child ajuda só na visualização rápidad e como o layout ficaria
              child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                    generoSelecionado = Genero.masculino;
        
                    });
                  },
                  child: CustomCard(
                    active: generoSelecionado == Genero.masculino,
                    //esse child é o parâmetro que pedimos no customCard
                    child: GenderCard(
                      gender: 'Masculino', 
                      icon: Icons.male
                      ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                    generoSelecionado = Genero.feminino;
        
                    });
                  },
                  child: CustomCard(
                    active: generoSelecionado == Genero.feminino,
                    child: GenderCard(
                      gender: 'Feminino', 
                      icon: Icons.female
                      ),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: CustomCard(
              child: SliderAltura(
                novaAltura: altura,
                onChanged: (double novaAltura){ //aqui tem uma função passada como parâmetro
                  setState(() {
                    altura = novaAltura.toInt();
                  });
                },
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: CustomCard(
                  child: Contador(
                    informacaoMedicao: 'Peso',
                  ),
                ),
              ),
              Expanded(
                child: CustomCard(
                  child: Contador(
                    informacaoMedicao: 'Altura',
                  ),
                ),
              ),
            ],
          ),
          ),
          BottomButton(buttonTitle: 'Calcular IMC')
        ],
      ),
    );
  }
}
