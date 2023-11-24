import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task_model.dart';
import 'package:todo_list/providers/tasks_provider.dart';

class TasksCard extends StatelessWidget {
  final Tasks givenTask;
  const TasksCard({super.key, required this.givenTask});

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
        const Icon(Icons.check_box_outline_blank),
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
            onPressed: () => Provider.of<TasksProvider>(context, listen: false)
                .removeTask(index),
          ),
        ),
        Container(
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
          child: IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
        ),
      ]),
    );
  }
}
