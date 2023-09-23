import 'package:flutter/material.dart';
import 'package:flutter_application_9/custom-nav.dart';
import 'package:flutter_application_9/home.dart';
import 'package:flutter_application_9/hope.dart';
import 'package:flutter_application_9/paper_bank.dart';
import 'package:flutter_application_9/user.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  int selectedTabIndex = 0;
  final PageController _pageController = PageController();
  // bool showPw = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFB2D6FF),
            Color(0xFFC7E8FF),
            Color(0xFFB9F0AF),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                    left: 30.0,
                  ),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Hi ",
                              style: TextStyle(
                                fontSize: 33,
                              ),
                            ),
                            Text(
                              "Asela ,",
                              style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.65,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(42),
                      topRight: Radius.circular(42),
                    ),
                  ),
                  child: GestureDetector(
                    //provides a gesture recognition framework
                    onTap: () {
                      FocusScope.of(context).unfocus();
                    },
                    child: SizedBox(
                      height: double.infinity,
                      child: ListView(
                        children: [
                          // const Padding(
                          //   padding: EdgeInsets.symmetric(horizontal: 32.0),
                          //   child: Row(
                          //     mainAxisAlignment:
                          //         MainAxisAlignment.spaceBetween,
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     children: <Widget>[
                          //       Text(
                          //         "edit profile",
                          //         style: TextStyle(
                          //           fontSize: 22.0,
                          //           color: Colors.transparent,
                          //         ),
                          //       ),
                          //       // ClipOval(
                          //       //   child: Image.asset(
                          //       //     'assets/propsic.jpg', // Replace with your image URL
                          //       //     width:
                          //       //         100, // Adjust the width and height as needed
                          //       //     height: 100,
                          //       //     fit: BoxFit
                          //       //         .cover, // You can use different BoxFit values depending on how you want to fit the image
                          //       //   ),
                          //       // ),
                          //     ],
                          //   ),
                          // ),

                          const SizedBox(
                            height: 30.0,
                          ),

                          //SizedBox is to add spacing (vertical space) between the "edit profile"
                          Center(
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  width: 120,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    // border: Border.all(
                                    //     width: 4,
                                    //     color: Theme.of(context)
                                    //         .scaffoldBackgroundColor),
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 3,
                                          blurRadius: 11,
                                          color: Colors.black.withOpacity(0.1),
                                          offset: const Offset(0.10, 0.1))
                                    ],
                                    shape: BoxShape.circle,
                                    image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        'assets/propic.jpg',
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),

                          textFieldMethod("Name", "Asela"),

                          textFieldMethod(
                              "Email", "ashendavitharana@students.nsbm.ac.lk"),
                          textFieldMethod("Phone", "0777798765"),
                          textFieldMethod(
                              "Degree", "Management Information Systems"),
                          textFieldMethod("Batch", "21.1"),
                          textFieldMethod("Year", "Three"),
                          textFieldMethod("Semester", "One"),

                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 29),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "Cancel",
                                  style: TextStyle(
                                      fontSize: 14,
                                      letterSpacing: 1,
                                      color: Colors.black),
                                ),
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 29),
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                  child: const Text(
                                    "Save",
                                    style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing: 1,
                                        color: Colors.white),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                // const Positioned(
                //   child: Padding(
                //     padding: EdgeInsets.only(right: 47.0),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: <Widget>[
                //         Text(
                //           "edit profile",
                //           style: TextStyle(
                //             fontSize: 22.0,
                //             color: Colors.black,
                //           ),
                //         ),
                //         // ClipOval(
                //         //   child: Image.asset(
                //         //     'assets/propic.jpg', // Replace with your image URL
                //         //     width:
                //         //         100, // Adjust the width and height as needed
                //         //     height: 100,
                //         //     fit: BoxFit
                //         //         .cover, // You can use different BoxFit values depending on how you want to fit the image
                //         //   ),
                //         // ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: CustomNavBar(
          currentIndex: selectedTabIndex, // Pass the selectedTabIndex here
          onTap: (index) {
            setState(() {
              selectedTabIndex = index; // Update the selectedTabIndex
            });
            _navigateToPage(index);
            // Call a function to navigate based on index
          },
          pageController: _pageController,
        ),
      ),
    );
  }

  Widget textFieldMethod(String labelText, String placeholder) {
    //if we show/hide password
    //String labelText, String placeholder, bool isPasswordTextField

    return Padding(
      padding: const EdgeInsets.only(left: 38.0, right: 38.0, bottom: 12.0),
      child: TextField(
        // obscureText: isPasswordTextField ? showPw : false,
        decoration: InputDecoration(
          // suffixIcon: isPasswordTextField
          //     ? IconButton(
          //         onPressed: () {
          //           setState(() {
          //             showPw = !showPw;
          //           });
          //         },
          //         icon: const Icon(Icons.remove_red_eye, color: Colors.grey),
          //       )
          //     : null,
          contentPadding: const EdgeInsets.only(bottom: 3),
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder,
          hintStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  void _navigateToPage(int index) {
    final User currentUser =
        User(batch: "21.1", degree: "Management Information Systems");

    switch (index) {
      case 0:
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Home()),
        );
        break;
      case 1:
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (context) => LecturesScreen(currentUser: currentUser)),
        );
        break;
      case 2:
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const PaperBankScreen()),
        );
        break;

      case 3:
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const profile()),
        );
        break;
      case 4:
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const profile()),
        );
        break;
    }
  }
}
