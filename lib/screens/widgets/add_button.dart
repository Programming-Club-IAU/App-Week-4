import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/providers/tasks_provider.dart';
import 'package:todo_list/screens/home_screen.dart';

class AddButton extends State<HomeScreen> {
  late TextEditingController controller;
  String title = '';
  final void Function()? addTaskOnPressed;

  AddButton({required this.addTaskOnPressed});

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TasksProvider>(
      builder: (context, providerInfo, child) {
        return FutureBuilder<String?>(
          future: constopenDialog(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return AlertDialog(
                title: const Icon(Icons.add),
                content: TextField(
                  autofocus: true,
                  decoration:
                      const InputDecoration(hintText: 'Enter Task Title'),
                  controller: controller,
                ),
                actions: [
                  TextButton(
                    onPressed: addTaskOnPressed,
                    child: const Text('Add New Task'),
                  ),
                ],
              );
            } else {
              return Container();
            }
          },
        );
      },
    );
  }

  Future<String?> constopenDialog() async {
    final result = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Icon(Icons.add),
        content: TextField(
          autofocus: true,
          decoration: const InputDecoration(hintText: 'Enter Task Title'),
          controller: controller,
        ),
        actions: [
          TextButton(
            onPressed: addTaskOnPressed,
            child: const Text('Add New Task'),
          ),
        ],
      ),
    );

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
        icon: const Icon(
          Icons.add,
        ),
        onPressed: () async {
          final title = await constopenDialog();
          if (title == null || title.isEmpty) return;

          setState(() => this.title = title);
        },
      ),
    );
  }
}
