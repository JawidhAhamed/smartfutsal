import 'package:flutter/material.dart';
import 'dart:convert';
import 'constants.dart';
import 'birthdatescreen.dart';
import 'signin.dart';
import 'package:http/http.dart' as http;
import 'package:quickalert/quickalert.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool passtoggle = true;
  String? name;
  String? email;
  String? password;
  String? repassword;
  String? mobile;

  void sendUser() async {
    try {
      final Map<String, String> headers = {
        'Content-Type': 'application/json', // Set the content type
      };
      final Map<String, dynamic> data = {
        "name": name,
        "email": email,
        "mobile": mobile,
        "password": password,
        "profile_pic": ""
      };

      final response = await http.post(
        Uri.parse('http://localhost:7000/api/registerUser'),
        headers: headers,
        body: jsonEncode(data),
      );

      if (response.statusCode == 200) {
        print('Registerred successfully');
        print(response.body);
        RegistrationConfirm();
      } else {
        print('Failed to send POST request ${response.statusCode}');
        RegistrationError();
      }
    } catch (er) {
      print(er);
    }
  }

  void RegistrationConfirm() {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.success,
      title: "Registration",
      text: 'Successfull!',
      confirmBtnText: 'Continue',
      confirmBtnColor: Color.fromARGB(255, 101, 145, 103),
      onConfirmBtnTap: () async {
        Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
      },
    );
  }

  void RegistrationError() {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.error,
      title: "Oops!",
      text: 'Sorry, Email & Mobile should be unique!',
      confirmBtnText: 'Try again',
      confirmBtnColor: Color.fromARGB(255, 67, 78, 68),
    );
  }

  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery.of(context).size.width;
    double he = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Image.asset(
                f1,
              )),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: wi,
            height: he,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(suImage), fit: BoxFit.cover),
            ),
            child: Center(
              child: Column(children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: const Text(
                    sup,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                      child: const Text(
                        "Have you an account already?",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Signin(),
                            ),
                          );
                        },
                        child: const Text(
                          "Sign in",
                          style: TextStyle(color: Colors.blue, fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                // Form starting
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 40, 200, 0),
                          child: const Text(
                            "NAME",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(60, 5, 60, 0),
                          height: 30, // Adjust the height as needed
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            validator: (text) {
                              if (text!.isEmpty) {
                                return "Name can't be empty";
                              }
                              return null;
                            },
                            onSaved: (text) {
                              name = text;
                            },
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.zero),
                              ),
                              //contentPadding: EdgeInsets.symmetric(vertical: 5), // Adjust the vertical padding
                            ),
                          ),
                        ),
                        // Container(
                        //   margin: const EdgeInsets.fromLTRB(40, 15, 200, 0),
                        //   child: const Text(
                        //     "USERNAME",
                        //     style: TextStyle(
                        //         color: Colors.white,
                        //         fontSize: 15,
                        //         fontWeight: FontWeight.bold),
                        //   ),
                        // ),
                        // Container(
                        //   margin: const EdgeInsets.fromLTRB(60, 5, 60, 0),
                        //   height: 30, // Adjust the height as needed
                        //   child:  TextFormField(
                        //     validator: (text) {
                        //       if (text!.isEmpty) {
                        //         return "Name can't be empty";
                        //       }
                        //       return null;
                        //     },
                        //     onSaved: (text) {
                        //       name = text;
                        //     },
                        //     decoration: InputDecoration(
                        //       enabledBorder: OutlineInputBorder(
                        //         borderSide: BorderSide(color: Colors.grey),
                        //         borderRadius: BorderRadius.all(Radius.zero),
                        //       ),
                        //       //contentPadding: EdgeInsets.symmetric(vertical: 5), // Adjust the vertical padding
                        //     ),
                        //   ),
                        // ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 15, 200, 0),
                          child: const Text(
                            "EMAIL",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(60, 5, 60, 0),
                          height: 30, // Adjust the height as needed
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            validator: (text) {
                              if (text!.isEmpty) {
                                return "Email can't be empty";
                              }
                              return null;
                            },
                            onSaved: (text) {
                              email = text;
                            },
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.zero),
                              ),
                              //contentPadding: EdgeInsets.symmetric(vertical: 5), // Adjust the vertical padding
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 5, 200, 0),
                          child: const Text(
                            "Mobile",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(60, 5, 60, 0),
                          height: 30, // Adjust the height as needed
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            validator: (text) {
                              if (text!.isEmpty) {
                                return "Mobile number can't be empty";
                              }
                              return null;
                            },
                            onSaved: (text) {
                              mobile = text;
                            },
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.zero),
                              ),
                              //contentPadding: EdgeInsets.symmetric(vertical: 5), // Adjust the vertical padding
                            ),
                          ),
                        ),
                        // Container(
                        //   margin: const EdgeInsets.fromLTRB(10, 15, 150, 0),
                        //   child: const Text(
                        //     "DATE OF BIRTH",
                        //     style: TextStyle(
                        //         color: Colors.white,
                        //         fontSize: 15,
                        //         fontWeight: FontWeight.bold),
                        //   ),
                        // ),
                        // ElevatedButton(
                        //   onPressed: () {
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) => const BirthDateScreen(),
                        //       ),
                        //     );
                        //   },
                        //   style: ElevatedButton.styleFrom(
                        //     backgroundColor: const Color.fromARGB(255, 218, 216, 216),
                        //     minimumSize: const Size(200, 30), // Button size
                        //     shape: const RoundedRectangleBorder(
                        //       borderRadius:
                        //           BorderRadius.all(Radius.zero), // Button border radius
                        //     ),
                        //   ),
                        //   child: const Text(
                        //     'Select Birthdate',
                        //     style: TextStyle(
                        //         color: Colors.black, fontWeight: FontWeight.bold),
                        //   ),
                        // ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 160, 0),
                          child: const Text(
                            pas,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(60, 5, 60, 0),
                          height: 30, // Adjust the height as needed
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            validator: (text) {
                              if (text!.isEmpty) {
                                return "Password can't be empty";
                              }
                              return null;
                            },
                            onSaved: (text) {
                              password = text;
                            },
                            onChanged: (text) {
                              password = text;
                            },
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.all(Radius.zero),
                                ),
                                // suffixIcon: InkWell(
                                //   onTap: () {
                                //     setState(() {
                                //       passtoggle = !passtoggle;
                                //     });
                                //   },
                                //   child: Icon(passtoggle
                                //       ? Icons.visibility
                                //       : Icons.visibility_off),
                                // )
                                ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(60, 15, 150, 0),
                          child: const Text(
                            "CONFIRM PASSWORD",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(60, 5, 60, 20),
                          height: 30, // Adjust the height as needed
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            validator: (text) {
                              if (text!.isEmpty) {
                                return "Password can't be empty";
                              } else if (text != password) {
                                return "Password is not matching";
                              }
                              return null;
                            },
                            onSaved: (text) {
                              repassword = text;
                            },
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.all(Radius.zero),
                                ),
                                // suffixIcon: InkWell(
                                //   onTap: () {
                                //     setState(() {
                                //       passtoggle = !passtoggle;
                                //     });
                                //   },
                                //   child: Icon(passtoggle
                                //       ? Icons.visibility
                                //       : Icons.visibility_off),
                                // )
                                ),
                          ),
                        ),
                        // Row(
                        //   children: <Widget>[
                        //     Container(
                        //         margin: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                        //         child: Checkbox(
                        //           value: false,
                        //           onChanged: (val) {},
                        //         )),
                        //     Container(
                        //       margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        //       child: const Text(
                        //         "TERMS & CONDITION",
                        //         style: TextStyle(color: Colors.white, fontSize: 12),
                        //       ),
                        //     )
                        //   ],
                        // ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                          //width: 10,
                          height: 30,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                print('valid form');
                                _formKey.currentState!.save();

                                sendUser();
                              } else {
                                print('not valid form');
                                return;
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 218, 216, 216),
                              minimumSize: const Size(200, 50), // Button size
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.zero), // Button border radius
                              ),
                            ),
                            child: const Text("CREATE ACCOUNT",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                      ],
                    ))
              ]),
            ),
          ),
        ));
  }
}
