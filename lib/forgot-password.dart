import 'package:flutter/material.dart';
import 'package:flutter_application_9/login.dart';
import 'package:flutter_application_9/password-reset.dart';
import 'package:hexcolor/hexcolor.dart';

class Fpassword extends StatelessWidget {
  const Fpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  icon: const Icon(Icons.arrow_back_ios_new_rounded)),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  'Forgot your password',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const Center(
                child: Text(
                  '''   Don't worry enter your registered 
email id to recieve password rest link ''',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              Image.asset(
                'assets/forgot.png',
                width: double.infinity,
                //height: 400,
              ),
              const TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  prefixIcon: Icon(
                    Icons.mail_outline_outlined,
                    color: Colors.grey,
                  ),
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Resetpassword()));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 18, horizontal: 140),
                      backgroundColor: HexColor('00C154'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      textStyle: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    child: const Text(
                      'Send',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                      ),
                    )),
              ),
            ],
          ),
        ),
        backgroundColor: HexColor('#ffffff'),
      ),
    );
  }
}
