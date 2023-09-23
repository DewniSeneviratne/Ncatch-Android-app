import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_9/admin-login.dart';
import 'package:flutter_application_9/admin_T&c.dart';
import 'package:flutter_application_9/login.dart';
import 'package:hexcolor/hexcolor.dart';

class Admin extends StatefulWidget {
  const Admin({super.key});

  @override
  State<Admin> createState() => _SignupState();
}

class _SignupState extends State<Admin> {
  bool _isPasswordVisible = false;
  bool _isConPassword = false;
  bool isChecked = false;

  TextEditingController employeeNumberController = TextEditingController();
  TextEditingController staffEmailController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor('#B2D6FF'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.arrow_back_ios_new_rounded),
                ),
                SizedBox(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'N',
                          style: TextStyle(
                            fontSize: 64,
                            color: HexColor('00C254'),
                            fontFamily: 'Omagle',
                          ),
                        ),
                      ),
                      const Center(
                        child: Text(
                          'catch',
                          style: TextStyle(
                            fontSize: 64,
                            color: Colors.white,
                            fontFamily: 'Omagle',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    // Employee Number Text Field
                    SizedBox(
                      width: 270,
                      child: Text(
                        'Employee number',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: HexColor('0A1E36'),
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    const SizedBox(height: 3),
                    SizedBox(
                      width: 300,
                      child: TextField(
                        controller: employeeNumberController,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15.0,
                            horizontal: 10.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Staff Email Text Field
                    SizedBox(
                      width: 270,
                      child: Text(
                        'Staff-Email',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: HexColor('0A1E36'),
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    const SizedBox(height: 3),
                    SizedBox(
                      width: 300,
                      child: TextField(
                        controller: staffEmailController,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15.0,
                            horizontal: 10.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Mobile Number Text Field
                    SizedBox(
                      width: 270,
                      child: Text(
                        'Mobile-number',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: HexColor('0A1E36'),
                          fontFamily: 'Poppins-Bold',
                        ),
                      ),
                    ),
                    const SizedBox(height: 3),
                    SizedBox(
                      width: 300,
                      child: TextField(
                        controller: mobileNumberController,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15.0,
                            horizontal: 10.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Password Text Field
                    SizedBox(
                      width: 270,
                      child: Text(
                        'Password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: HexColor('0A1E36'),
                          fontFamily: 'Poppins-Bold',
                        ),
                      ),
                    ),
                    const SizedBox(height: 3),
                    SizedBox(
                      width: 300,
                      child: TextField(
                        controller: passwordController,
                        obscureText: !_isPasswordVisible,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 15.0,
                            horizontal: 10.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Confirm Password Text Field
                    SizedBox(
                      width: 270,
                      child: Text(
                        'Confirm Password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: HexColor('0A1E36'),
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    const SizedBox(height: 3),
                    SizedBox(
                      width: 300,
                      child: TextField(
                        obscureText: !_isConPassword,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isConPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                _isConPassword = !_isConPassword;
                              });
                            },
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 15.0,
                            horizontal: 10.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Terms and Conditions Checkbox
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (newValue) {
                                setState(() {
                                  isChecked = newValue!;
                                });
                              },
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const AdminTC(),
                                  ),
                                );
                              },
                              child: Text(
                                'Agree to Terms and Conditions',
                                style: TextStyle(
                                  color: HexColor('0A1E36'),
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // Sign Up Button
                    ElevatedButton(
                      onPressed: isChecked
                          ? () {
                              _registerAdmin();
                            }
                          : null,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 100),
                        backgroundColor: HexColor('00C154'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      child: const Text(
                        'Sign up',
                        style: TextStyle(fontFamily: 'Poppins'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Function to register the admin
  Future<void> _registerAdmin() async {
    try {
      // Create a user in Firebase Authentication
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: staffEmailController.text.trim(),
        password: passwordController.text.trim(),
      );

      // Get the user's unique ID
      String userId = userCredential.user!.uid;

      // Add admin data to Firestore
      await FirebaseFirestore.instance.collection('admin').doc(userId).set({
        'employeeNumber': employeeNumberController.text.trim(),
        'staffEmail': staffEmailController.text.trim(),
        'mobileNumber': mobileNumberController.text.trim(),
      });

      // Navigate to another screen or perform other actions
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const AdminLogin(),
        ),
      );
    } catch (e) {
      // Handle registration errors
      print('Registration failed: $e');
    }
  }
}
