import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/providers/tasks_provider.dart';
import 'package:todo_list/screens/widgets/add_button.dart';
import 'package:todo_list/screens/widgets/header.dart';
import 'package:todo_list/screens/widgets/tasks_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String get title => title;

  String get description => description;

  bool get isDone => false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.menu,
                color: Colors.black87,
                size: 30,
              ),
              SizedBox(
                height: 50,
                width: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: const Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.V5rKg1rvLoZB626lfCMqJgAAAA?pid=ImgDet&rs=1'),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          color: const Color.fromARGB(241, 241, 241, 241),
          child: Column(
            children: [
              Header(),
              Consumer<TasksProvider>(
                builder: (context, providerInfo, child) {
                  return Expanded(
                    child: ListView.builder(
                        padding: const EdgeInsets.only(top: 80),
                        scrollDirection: Axis.vertical,
                        itemCount: providerInfo.allTasks.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: TasksCard(
                              givenTask: providerInfo.allTasks[index],
                              onPressed: () => providerInfo.removeTask(index),
                              checkBoxOnPressed: () =>
                                  providerInfo.handleToDoChange(index),
                            ),
                          );
                        }),
                  );
                },
              ),
              Consumer<TasksProvider>(builder: (context, providerInfo, child) {
                return AddButton(
                    addTaskOnPressed: () =>
                        providerInfo.createTask(title, description, isDone));
              }),
              const SizedBox(height: 10),
            ],
          ),
        ));
  }
}
