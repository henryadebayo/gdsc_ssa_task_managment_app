import 'package:flutter/material.dart';
import 'package:gdsc_ssa_task_managment_app/home_page/task_page.dart';


class CompletedTaskPage extends StatefulWidget {
  const CompletedTaskPage({Key? key}) : super(key: key);

  @override
  State<CompletedTaskPage> createState() => _CompletedTaskPageState();
}

class _CompletedTaskPageState extends State<CompletedTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    const Text("Completed ✅", style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),),
                    CircleAvatar(backgroundColor: Colors.grey.shade300,child: IconButton(icon: Icon(Icons.cancel), color: Colors.red,
                      onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx){
                        return const TaskPage(
                        );
                      }));
                    },),),
                  ],),
                const Text("Here are all of the completed tasks", style: TextStyle(
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
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child:  Padding(
                              padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Bulalaba Recruitment 🤡", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                                  SizedBox(height: 8.0,),
                                  Text("pressure ti wa pressure ti wa pressure ti wa pressure ti wa pressure ti wa pressure ti wa pressure ti wa pressure ti wa pressure ti wa pressure ti wa  ", style: TextStyle(color: Colors.white, fontSize: 16,),)
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
