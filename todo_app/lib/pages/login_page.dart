import 'package:flutter/material.dart';
import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;
  String pass = "enstazao";
  final _formKey = GlobalKey <FormState>();
  var pass_textField = TextEditingController();


  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
    setState(() {
      changeButton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changeButton = false;
    });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assets/images/login_page.jpg",
              fit: BoxFit.cover,),  
              SizedBox(height: 20.0,),
              Text("Welcome",style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              ),
               SizedBox(height: 20.0,),
              SizedBox(height: 20.0,),
              
               Padding(padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
               child: Column(
                 children: [
                   TextFormField(
                     controller: pass_textField,
                     obscureText: true,
                 decoration: InputDecoration(
                   hintText: "Enter password",
                   labelText: "Password",
                 ),   
                 validator: (value) {
                   if (value == "") {
                     return "Please Enter the Password!";
                   }
                  //  Check Password is correct or Not
                   else if (value != pass){
                     pass_textField.clear();
                     return "Wrong Password";
                   }
                   pass_textField.clear();
                   return null;
                 },
               ),
               
                SizedBox(height: 40.0,),
                Material(
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                  color: Colors.deepPurple,
                  child: InkWell(
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ?50 :150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton ? Icon(Icons.done, color: Colors.white) : Text("Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),),
                    ),
                  ),
                )
                 ],
                 
               )
               )
            ],
          ),
        ),
      )
    );
  }
}