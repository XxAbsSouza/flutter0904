import 'package:flutter/material.dart';

import '../constants.dart';

class GenderCard extends StatelessWidget {
  final String gender;
  final IconData icon;
  const GenderCard({super.key, required this.gender, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
                    mainAxisAlignment: MainAxisAlignment
                        .center, //alinha a coluna no centro verticalmente
                    children: [
                      Icon(
                        icon,
                        size: 90,
                      ),
                      Text(
                        gender,
                        style: labelTextStyle,
                      ),
                    ],
                  );
  }
}