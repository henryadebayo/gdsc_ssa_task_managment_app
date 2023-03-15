
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_ssa_task_managment_app/auth/sign_up.dart';
import 'package:gdsc_ssa_task_managment_app/onboarding/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text("Login"),

      ),
      body:  Padding( padding: const EdgeInsets.only(top:8.0, left: 8.0, right: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
          const Padding(padding: EdgeInsets.only(
            top: 16,
          bottom: 70,
          left: 8),
            child:  Text("Hi 👋 there Welcome back ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),)
          ),
          const Center(
            child: Text("Login", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),

          ),
            const SizedBox(height: 25,),
            Form(
              key: _formKey,
                child: Column(children: [
              TextFormField(
                validator: (value){
                  if(value == null || value.isEmpty ){
                    return "Alaye Enter your email address ";
                  }else {
                    return null ;
                  }
                },
                decoration: InputDecoration(
                  hintText: "Enter email",
                  filled: true,
                  fillColor:  Colors.blue.shade50,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),

                ),

              ),
              const SizedBox(height: 20,),
              TextFormField(
                validator: (value){
                  if(value == null || value.isEmpty ){
                    return "Alaye Enter your password";
                  }else {
                    return null ;
                  }
                },
                decoration: InputDecoration(
                  hintText: "Enter password",
                  filled: true,
                  fillColor:  Colors.blue.shade50,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),

                ),

              ),
            ],)),

            const SizedBox(height: 90,),

            CustomButton(buttonLabel: "Register",
                btnColor: Colors.orange,
                summit: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const Placeholder(color: Colors.white, child: Center(
                        child:  CircularProgressIndicator(),
                      ),);
                    }));
                  } else {
                    print("OBIIIIIIIIIIIIIIIII");
                  }
                }
            ),
            const SizedBox(height:16),

            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const RegisterPage()));
              },
              child: const Center(child: Text("Don't have an account? Register ", style: TextStyle(
              ),)),
            ),

        ],),
      ),
    );
  }
}
