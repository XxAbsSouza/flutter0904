import 'package:flutter/material.dart';

import '../constants.dart';

class CustomCard extends StatelessWidget {
  final Widget? child; //parâmetro que iremos passar, e para passar tem q passar pelo construtor
  const CustomCard({super.key, this.child});//passamos aqui

  @override
  Widget build(BuildContext context) {
    return Container(
                  margin: EdgeInsets.all(7), //configura a margem entre os filhos, os insets é: l,r,t,b, e o all é que o valor vale para todas as direções
                  decoration: BoxDecoration(//configurar o estilo
                    color: activeCardColor,
                    borderRadius: BorderRadius.circular(10),
                    ),
                    child: child,//aqui chamamos o widget que criamos como parâmetro
                  );
  }
}