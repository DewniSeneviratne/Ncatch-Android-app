import 'package:flutter/material.dart';
import 'package:flutter_application_9/forgot-password.dart';
import 'package:flutter_application_9/login.dart';
import 'package:hexcolor/hexcolor.dart';

class Resetpassword extends StatelessWidget {
  const Resetpassword({super.key});

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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Fpassword()));
                  },
                  icon: const Icon(Icons.arrow_back_ios_new_rounded)),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  'Email has been sent!',
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
                  'please check your inbox and click in the recieved link to reset the password ',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              Image.asset(
                'assets/email.png',
                width: double.infinity,
                //height: 400,
              ),
              const SizedBox(height: 15),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
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
                      'Login',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                      ),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('''Didn't receive the link ?'''),
                  TextButton(
                    onPressed: () {},
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'Resend',
                        style: TextStyle(
                          color: HexColor('00C154'),
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        backgroundColor: HexColor('#ffffff'),
      ),
    );
  }
}
