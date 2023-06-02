import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController userNameController_controller = TextEditingController();

  TextEditingController passward_controller = TextEditingController();
  String user = "mrsatheesh2705@gmail.com";
  String pass = "123456789";
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign In Continue',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic,
                      ),
                    )),
                Center(
                  child: Image.asset(
                    'images/ggl.png',
                    height: 100,
                    width: 100,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        controller: userNameController_controller,
                        validator: (value) {
                          // if (value!.isEmpty) {
                          //   return 'please enter the user Email';
                          // } else if (value.length > 10) {
                          //   return 'enter the valid email';
                          // }
                          if (value != user) {
                            return "Enter valid name";
                          }
                        },
                        decoration: InputDecoration(
                            hintText: 'Enter Email ID',
                            labelText: "Email ID",
                            icon: Icon(Icons.account_circle),
                            labelStyle: TextStyle(
                                fontSize: 15, color: Colors.grey.shade400),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: passward_controller,
                        obscureText: true,
                        validator: (value) {
                          if (value != pass) {
                            return "Enter corret PassWord";
                          }
                          // if (value == null || value.isEmpty) {
                          //   return 'please enter the valid password';
                          // } else if (value.length >= 8) {
                          //   return 'enter the valid password';
                          // }
                          // if (value != "") {}
                        },
                        decoration: InputDecoration(
                            hintText: 'Enter a Password',
                            labelText: "Password",
                            icon: Icon(Icons.lock),
                            labelStyle: TextStyle(
                                fontSize: 15, color: Colors.grey.shade400),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                      child: const Text(
                        'Forget Password',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      onPressed: () {
                        print('pressed');
                      }),
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SecondPage(),
                      ));
                    }

                    // if (userNameController_controller.text ==
                    //     "maitheen@gmail.com") {
                    //   if (passward_controller.text == "123456789") {
                    //     Navigator.of(context).push(MaterialPageRoute(
                    //       builder: (context) => const SecondPage(),
                    //     ));
                    //   }
                    // }

                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: const Text('successfully login'),
                      backgroundColor: Colors.blueGrey,
                      elevation: 20.0,
                      action: SnackBarAction(
                        label: 'OK',
                        textColor: Colors.white,
                        onPressed: () {
                          print('success button tapped');
                        },
                      ),
                    ));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: size.height / 14,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "Login ",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "I m new Users ?",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.blue,
                        ),
                      ),
                      onPressed: () {
                        print('Pressed');
                      },
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Image.asset(
                        'images/fcb.png',
                        width: 66,
                        height: 66,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Center(
                      child: Image.asset(
                        'images/twi.png',
                        width: 70,
                        height: 70,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Text('HELLO'),
      ),
    );
  }
}
