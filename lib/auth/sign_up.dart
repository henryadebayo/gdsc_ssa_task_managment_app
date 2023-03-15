
import 'package:flutter/material.dart';
import 'package:gdsc_ssa_task_managment_app/auth/sign_in.dart';
import 'package:gdsc_ssa_task_managment_app/onboarding/custom_button.dart';

import '../home_page/task_page.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Register"),
      ),

      body: Padding(
        padding: const EdgeInsets.only(top:8.0, left: 8.0, right: 8.0),
        child: Column(
          children: [

            const Padding(
              padding: EdgeInsets.only(top:30.0, bottom: 90),
              child: Center(child: Text("Welcome Create Your Task Managment account ", style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16
              ),)),
            ),


            Form(
              key: _formKey,
              child: Column(children: [
                TextFormField(
                  validator: (value){

                    if(value == null || value.isEmpty ){
                      return "Alaye Enter your name";
                    }else {
                      return null ;
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "Enter name",
                    filled: true,
                    fillColor:  Colors.blue.shade50,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),

                  ),
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: TextFormField(
                    validator: (value){
                      if(value == null || value.isEmpty ){
                        return "we need your email address ";
                      }else {
                        return null ;
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "Enter email address",
                      filled: true,
                      fillColor: Colors.blue.shade50,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),


                TextFormField(
                  keyboardType: TextInputType.phone,
                  validator: (value){
                    if(value == null || value.isEmpty ){
                      return "phone number is required ";
                    }else {
                      return null ;
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "Enter phone number",
                    filled: true,
                    fillColor:  Colors.blue.shade50,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),

                  ),
                ),
                const SizedBox(height: 90,),
              ],),
            ),

            CustomButton(buttonLabel: "Register",
                summit: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const TaskPage();
                    }));
                  }
                }
            ),
            const SizedBox(height:16),

            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
              },
              child: const Center(child: Text("Already have an account? login ", style: TextStyle(
              ),)),
            ),
          ],
        ),
      ),
    );
  }
}
