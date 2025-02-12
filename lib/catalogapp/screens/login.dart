import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:state_management_second/catalogapp/method/catalog_method.dart';
import 'package:state_management_second/main.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
  final myCont1 = TextEditingController();
  final myCont2 = TextEditingController();
  @override
  void dispose() {
    myCont1.dispose();
    myCont2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 249, 249, 249),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(35),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            SizedBox(height: maxHeight * 0.32),
            Text(
              'WELCOME',
              style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: maxHeight * 0.03,
            ),
            TextField(
              controller: myCont1,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                focusedBorder: const UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 247, 224, 19))),
                hintText: 'Username',
                hintStyle: TextStyle(color: Colors.grey[600]),
              ),
            ),
            SizedBox(
              height: maxHeight * 0.01,
            ),
            TextField(
              controller: myCont2,
              obscureText: true,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  focusedBorder: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 247, 224, 19))),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey[600])),
            ),
            SizedBox(
              height: maxHeight * 0.02,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                  minimumSize: WidgetStatePropertyAll(Size(120, 35)),
                  backgroundColor: WidgetStatePropertyAll(Colors.yellow)),
              onPressed: () {
                Navigator.pushNamed(context, catalog);
                {
                  CatalogMethod();
                }
              },
              child: Text(
                'Log in',
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(color: Colors.black)),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
