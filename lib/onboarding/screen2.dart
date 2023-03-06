import 'package:flutter/material.dart';
import 'package:gdsc_ssa_task_managment_app/onboarding/screen3.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400,
              width: 500,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    image:  AssetImage("assets/images/hospital2.jpeg"),
                    fit: BoxFit.cover,
                  ),

                  borderRadius: BorderRadius.circular(20)
              ),
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text("Welcome to GDSC TMA", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.blue.shade500),),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text("This app allows you to organise your tasks for the day his app allows you to organise your tasks for the dayhis app allows you to organise your tasks for the day his app allows you to organise your tasks for the dayhis app allows you to organise your tasks for the day ", style: TextStyle( color: Colors.black),),
            ),
            const SizedBox(height: 120,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                  style:TextButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Onboarding3()));
                  },
                  child: const Text("Next", style: TextStyle(color: Colors.white),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
