import 'package:calculadora_imc/components/custom_card.dart';
import 'package:calculadora_imc/components/gender_card.dart';
import 'package:flutter/material.dart';

class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage({super.key});

  @override
  State<CalculadoraPage> createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
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
                child: CustomCard(
                  //esse child é o parâmetro que pedimos no customCard
                  child: GenderCard(
                    gender: 'Masculino', 
                    icon: Icons.male
                    ),
                ),
              ),
              Expanded(
                child: CustomCard(
                  child: CustomCard(
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
            child: CustomCard(),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: CustomCard(),
              ),
              Expanded(
                child: CustomCard(),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
