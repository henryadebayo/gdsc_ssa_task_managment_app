import 'package:flutter/material.dart';

import '../copleted_task_page/completed_task_view.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
              const Text("Welcome 🏡", style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),),
              CircleAvatar(backgroundColor: Colors.grey.shade300,child: IconButton(icon: Icon(Icons.task_alt), color: Colors.green, onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx){
                  return const CompletedTaskPage();
                }));
              },),),
            ],),
              const Text("Here are your task for the day. ", style: TextStyle(
                fontSize: 16,
              ),),
              const SizedBox(height: 30,),
              Expanded(
                child:
                ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index){
                  return   Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      decoration:  BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child:  Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Compelete Daily Excercise 🚀", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 8.0,),
                            Text("To complete this task you must be a member of the balabu foundation and you must have been active for 2 months plus, To complete this task you must be a member of the balabu foundation and you must have been active for 2 months plus To complete this task you must be a member of the balabu foundation s", style: TextStyle(color: Colors.white, fontSize: 16,),)
                          ],),
                      ),
                    ),
                  );
                }),
              )
          ]
          ),
        ),
      ),
    );
  }
}
