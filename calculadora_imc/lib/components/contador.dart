import '../constants.dart';
import 'package:flutter/material.dart';

int valor = 80;
class Contador extends StatelessWidget {
  final String informacaoMedicao;
  const Contador({super.key, required this.informacaoMedicao});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          informacaoMedicao,
          style: labelTextStyle,
        ),
        Text(
          '$valor',
          style: numberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                valor++;
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: activeCardColor,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
              ),
              child: const Icon(Icons.remove),
            ),
            const SizedBox(
              width: 10.0,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: activeCardColor,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
              ),
              child: const Icon(Icons.add),
            )
          ],
        )
      ],
    );
  }
}
