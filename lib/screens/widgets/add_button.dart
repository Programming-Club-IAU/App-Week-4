import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 50,
        alignment: Alignment.bottomCenter,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            color: Colors.purple,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  offset: Offset(1, 1),
                  blurRadius: 12,
                  blurStyle: BlurStyle.outer),
            ]),
        child: const Icon(Icons.add));
  }
}
