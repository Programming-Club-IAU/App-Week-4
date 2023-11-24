import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list/models/task_model.dart';

class TasksCard extends StatelessWidget {
  final Tasks givenTask;
  final void Function()? onPressed;
  final void Function()? checkBoxOnPressed;

  const TasksCard({
    super.key,
    required this.givenTask,
    required this.onPressed,
    required this.checkBoxOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                offset: Offset(1, 2),
                blurRadius: 15,
                blurStyle: BlurStyle.outer),
          ]),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
            icon: givenTask.isDone
                ? const Icon(Icons.check)
                : const Icon(Icons.check_box_outline_blank),
            onPressed: checkBoxOnPressed),
        Text(
          givenTask.title,
          style: GoogleFonts.abel(
              fontSize: 20,
              fontWeight: FontWeight.w800,
              decoration: givenTask.isDone ? TextDecoration.lineThrough : null),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 12),
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              color: const Color.fromARGB(240, 246, 246, 246),
              borderRadius: BorderRadius.circular(5)),
          child: IconButton(
            color: Colors.pink,
            iconSize: 20,
            icon: const Icon(Icons.delete),
            onPressed: onPressed,
          ),
        ),
      ]),
    );
  }
}
