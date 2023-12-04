import 'package:flutter/material.dart';
import 'package:smartfutsal/playerScreen/forgot%20password.dart';
//import 'package:smartfutsal/homePage.dart';
import 'package:smartfutsal/playerScreen/myHomePage.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:quickalert/quickalert.dart';
import 'package:smartfutsal/services/auth_services.dart';
//import 'splashscreen.dart';
import '../playerScreen/constants.dart';
import 'signup.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final AuthService _authService = AuthService();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String? _email;
  String? _password;
  bool passtoggle = true;

  void loginUser() async {
    try {
      final Map<String, String> headers = {
        'Content-Type': 'application/json', // Set the content type
      };
      final Map<String, dynamic> data = {
        "email": _email,
        "password": _password,
      };

      final response = await http.post(
        Uri.parse('http://localhost:7000/api/login'),
        headers: headers,
        body: jsonEncode(data),
      );

      if (response.statusCode == 200) {
        print('Login successfully');
        print(response.body);
        final Map<String, dynamic> responseBody = json.decode(response.body);
        final String token = responseBody['data']['token'];
        final String role = responseBody['data']['role'];
        final String email = responseBody['data']['email'];
        await _authService.saveToken(token);
        await _authService.saveRole(role);
        await _authService.saveEmail(email);

        LoginConfirm();
        if (role == "player") {
          Future.delayed(const Duration(seconds: 1), () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/userHome', (route) => false);
          });
        } else {
          print("Invalid username password");
        }
      } else {
        print('Failed to send POST request ${response.statusCode}');
        LoginError();
      }
    } catch (er) {
      print(er);
    }
  }

  void LoginConfirm() {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.success,
      title: "Login",
      text: 'Successfull!',
      confirmBtnText: 'Continue',
      confirmBtnColor: Color.fromARGB(255, 101, 145, 103),
      onConfirmBtnTap: () async {
        Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
      },
    );
  }

  void LoginError() {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.error,
      title: "Oops!",
      text: 'Incorrect username or password!',
      confirmBtnText: 'Try again',
      confirmBtnColor: Color.fromARGB(255, 67, 78, 68),
    );
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery.of(context).size.width;
    double hi = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Image.asset(
              "assets/f1.png",
              width: 350,
              height: 350,
            ),
          ),
        ),
        //resizeToAvoidBottomInset: true,
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Container(
                  width: wi,
                  height: hi,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/cr7ff 1.png"),
                        fit: BoxFit.cover),
                  ),
                  // child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          log,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 40),

                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "          $em",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            )),
                        const SizedBox(height: 10),
                        // Username TextField with customized border
                        SizedBox(
                          height: 70,
                          width: 300,
                          child: TextFormField(
                            // controller: emailController,
                            style: const TextStyle(color: Colors.white),
                            onSaved: (value) {
                              _email = value!;
                            },
                            validator: (email) {
                              if (email == null || email.isEmpty) {
                                return "Please Enter Email";
                              } else if (!RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(email))
                                return "Its not a valid Email";
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              //prefixIcon: Icon(Icons.email, color: Colors.white), this is code for used icon(gmail)
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.zero),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),

                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "         $pas",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            height: 70,
                            width: 300,
                            child: TextFormField(
                              controller: passwordController,
                              style: const TextStyle(color: Colors.white),
                              obscureText: passtoggle,
                              onSaved: (value) {
                                _password = value!;
                              },
                              validator: (password) {
                                if (password == null || password.isEmpty) {
                                  return "Please Enter password";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.all(Radius.zero),
                                  ),
                                  suffixIcon: InkWell(
                                    onTap: () {
                                      setState(() {
                                        passtoggle = !passtoggle;
                                      });
                                    },
                                    child: Icon(passtoggle
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                  )),
                            )),
                        Container(
                          padding: EdgeInsets.fromLTRB(80, 5, 0, 0),
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Forgotpassword(),
                                ),
                              );
                            },
                            child: Text(
                              "Forget password",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            )),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            if (formkey.currentState!.validate()) {
                              print('valid form');
                              formkey.currentState!.save();
                              loginUser();
                            } else {
                              print('not valid form');
                              return;
                            }
                            // }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(
                                255, 218, 216, 216), // Button background color
                            // foregroundColor: Colors.black, // Text color
                            minimumSize: const Size(200, 50), // Button size
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.zero), // Button border radius
                            ),
                          ),
                          child: const Text(log,
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        //  SizedBox(height: ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text("Don't you have an account already?",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SignUp(),
                                    ),
                                  );
                                },
                                child: const Text("Sign Up",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.bold,
                                    )),
                              )
                            ])
                      ])
                  //)
                  ),
            ),
          ),
        ));
  }
}
