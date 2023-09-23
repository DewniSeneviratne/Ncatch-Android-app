import 'package:cloud_firestore/cloud_firestore.dart'; // Import Firestore
import 'package:firebase_auth/firebase_auth.dart'; // Import FirebaseAuth
import 'package:flutter/material.dart';
import 'package:flutter_application_9/home.dart';
import 'package:flutter_application_9/rate_us.dart';

class MyNavigationDrawer extends StatelessWidget {
  const MyNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [buildHeader(context), buildMenuItems(context)],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser; // Get the current user

    return Material(
      color: const Color.fromRGBO(0, 193, 84, 1.0),
      child: InkWell(
        onTap: () {
          // Close navigation drawer before
          Navigator.pop(context);

          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const Home(),
          ));
        },
        child: Container(
          padding: EdgeInsets.only(
            top: 12 + MediaQuery.of(context).padding.top,
            bottom: 12,
          ),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 52,
                backgroundImage: NetworkImage(
                    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fgirl&psig=AOvVaw3DsGpQEJPqvzjaVut-MuK4&ust=1694379566012000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCNjbgfS1noEDFQAAAAAdAAAAABAE"),
              ),
              const SizedBox(height: 8),
              FutureBuilder<DocumentSnapshot>(
                // Fetch the user's data from Firestore
                future: FirebaseFirestore.instance
                    .collection('users')
                    .doc(user?.uid) // Use the null-aware operator
                    .get(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator(); // Display a loading indicator while fetching data.
                  }
                  if (snapshot.hasError) {
                    return const Text(
                      "Error fetching email", // Handle the error as needed
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    );
                  }
                  if (snapshot.data == null || !snapshot.data!.exists) {
                    return const Text(
                      "Email not found", // Handle the case where email is not found.
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    );
                  }
                  final email =
                      snapshot.data!['email']; // Extract email from Firestore
                  return Text(
                    email,
                    style: const TextStyle(fontSize: 12, color: Colors.black),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(8),
        child: Wrap(
          runSpacing: 8,
          children: [
            ListTile(
              title: const Text('Profile'),
              onTap: () =>
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const Home(),
              )),
            ),
            ListTile(
              title: const Text('FOC Contacts'),
              onTap: () {
                //close navigation drawer before
                Navigator.pop(context);

                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Home(),
                ));
              },
            ),
            ListTile(
              title: const Text('Invite Friends'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Terms & Conditions'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Privacy Policy'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Rate Us'),
              onTap: () =>
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const RatingScreen(),
              )),
            ),
            ListTile(
              title: const Text('Help'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Log out'),
              onTap: () {},
            ),
          ],
        ),
      );
}
