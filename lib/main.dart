import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'HeadClipper.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final formGlobalKey = GlobalKey<FormState>();
  var passConteoller=TextEditingController();
  var confirmpassConteoller=TextEditingController();
  var obsec1=true;
  var obsec2=true;
  IconData icon=Icons.visibility_off;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home:Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child:SingleChildScrollView(
            child: Form(
              key: formGlobalKey,
              child: Column(
                children: [
                  ClipPath(
                    child: Container(
                      color: Colors.purple,
                      height: 300,
                      child: Center(
                        child: Text("Register",style: TextStyle(color: Colors.white,fontSize: 40,
                        fontWeight: FontWeight.bold
                        )),
                      ),
                    ),
                    clipper: HeadClipper(),
                  ),
                  Padding(padding: EdgeInsets.all(16.0),
                  child:
                    Column(
                      children: [
                        SizedBox(height: 10,),
                        TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color:Colors.purple
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder:  OutlineInputBorder(
                              borderSide: BorderSide(
                              width: 2,
                              color:Colors.purpleAccent
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                            errorBorder:   OutlineInputBorder(
                              borderSide: BorderSide(
                              width: 2,
                              color:Colors.red
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                            border:  OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color:Colors.purple
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            label: Text("Full Name"),
                            prefixIcon: Icon(Icons.person)
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Full Name is requiered';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    color:Colors.purple
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder:  OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    color:Colors.purpleAccent
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              errorBorder:   OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    color:Colors.red
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              border:  OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    color:Colors.purple
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              label: Text("Phone Number"),
                              prefixIcon: Icon(Icons.phone)
                          ),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Phone Number is requiered';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    color:Colors.purple
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder:  OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    color:Colors.purpleAccent
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              errorBorder:   OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    color:Colors.red
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              border:  OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    color:Colors.purple
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              label: Text("Email"),
                              prefixIcon: Icon(Icons.email)
                          ),
                          validator: (value) {
                            const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
                                r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
                                r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
                                r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
                                r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
                                r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
                                r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
                            final regex = RegExp(pattern);

                            if (value == null || value.isEmpty  ) {
                              return 'Email is requiered';
                            }else if( !regex.hasMatch(value)){
                              return "Email Not Valid";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          controller: passConteoller,
                          obscureText: obsec1,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    color:Colors.purple
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder:  OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    color:Colors.purpleAccent
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              errorBorder:   OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    color:Colors.red
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              border:  OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    color:Colors.purple
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              label: Text("Password"),
                              prefixIcon: Icon(Icons.password),
                            suffixIcon: IconButton(icon: Icon(obsec1?Icons.visibility_off:Icons.visibility),onPressed: (){
                              setState(() {
                                obsec1=!obsec1;
                              });

                            },)
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password is requiered';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          controller: confirmpassConteoller,
                          obscureText: obsec2,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    color:Colors.purple
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder:  OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    color:Colors.purpleAccent
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              errorBorder:   OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    color:Colors.red
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              border:  OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    color:Colors.purple
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              label: Text("Confirm Password"),
                              prefixIcon: Icon(Icons.password),
                              suffixIcon: IconButton(icon: Icon(obsec2?Icons.visibility_off:Icons.visibility),onPressed: (){
                                setState(() {
                                  obsec2=!obsec2;
                                });

                              },)
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password is requiered';
                            }else if(passConteoller.text!=confirmpassConteoller.text){
                              return 'Password and Confirm not matched';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10,),
                        ElevatedButton(onPressed: (){
                          if (formGlobalKey.currentState!.validate()) {
                            // use the information provided
                          }
                        }, child: Container(
                          width:double.infinity,
                          height: 70,
                          child: Center(child: Text("Register",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),)),
                        )),
                        SizedBox(height: 10,),
                        ElevatedButton(onPressed: (){},
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.purple),
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                        side: BorderSide(color: Colors.purple)
                                    )
                                )
                            ),

                          child:Container(
                            width: double.infinity,
                            height: 40,
                            child: Center(child: Text("Login",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.purple),)),
                          ))
                      ],
                    ),)
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}

