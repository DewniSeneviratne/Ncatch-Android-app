// import 'package:awesome_notifications/awesome_notifications.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';

// import 'main.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   Firebase.initializeApp();
//   FirebaseMessaging.onBackgroundMessage(
//       _firebasePushHandler); //push notification

//   WidgetsFlutterBinding.ensureInitialized(); //local notification
//   AwesomeNotifications().initialize(null, [
//     NotificationChannel(
//       channelKey: 'key1',
//       channelName: 'NCatch Notification',
//       channelDescription: "notification",
//       defaultColor: Colors.green,
//       ledColor: Colors.white,
//       playSound: true,
//       enableLights: true,
//       enableVibration: true,
//     ),
//   ]);
//   runApp(const MyApp());
// }

// // ignore: must_be_immutable
// class notification extends StatelessWidget {
//   var height, width;

//   notification({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.centerRight,
//           colors: [
//             Color(0xFFB2D6FF),
//             Color(0xFFC7E8FF),
//             Color(0xFFB0F57F),
//           ],
//         ),
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         body: Column(
//           children: [
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage('images/Back0.png'),
//                       alignment: Alignment.bottomRight,
//                     ),
//                   ),
//                   height: MediaQuery.of(context).size.height * 0.9,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Center(
//                         child: SizedBox(
//                           height: MediaQuery.of(context).size.height * 0.33,
//                           width: MediaQuery.of(context).size.width * 0.85,
//                           child: Align(
//                             alignment: Alignment.bottomLeft,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 const Text(
//                                   "Notifications",
//                                   style: TextStyle(
//                                     fontFamily: "Poppins",
//                                     fontWeight: FontWeight.w600,
//                                     fontSize: 34,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height:
//                                       MediaQuery.of(context).size.height * 0.02,
//                                 ),
//                                 Row(
//                                   children: [
//                                     Container(
//                                       decoration: BoxDecoration(
//                                         color: const Color.fromARGB(
//                                             255, 18, 4, 47),
//                                         borderRadius: BorderRadius.circular(10),
//                                       ),
//                                       child: IconButton(
//                                         onPressed: () {},
//                                         icon: Image.asset("images/1.png"),
//                                         iconSize: 20,
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       width: MediaQuery.of(context).size.width *
//                                           0.02,
//                                     ),
//                                     Container(
//                                       decoration: BoxDecoration(
//                                         color: const Color(0xFF00C154),
//                                         borderRadius: BorderRadius.circular(10),
//                                       ),
//                                       child: IconButton(
//                                         onPressed: () {},
//                                         icon: Image.asset("images/2.png"),
//                                         iconSize: 20,
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       width: MediaQuery.of(context).size.width *
//                                           0.02,
//                                     ),
//                                     Container(
//                                       decoration: BoxDecoration(
//                                         color: const Color(0xFF00C154),
//                                         borderRadius: BorderRadius.circular(10),
//                                       ),
//                                       child: IconButton(
//                                         onPressed: () {},
//                                         icon: Image.asset("images/3.png"),
//                                         iconSize: 20,
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       width: MediaQuery.of(context).size.width *
//                                           0.02,
//                                     ),
//                                     Container(
//                                       decoration: BoxDecoration(
//                                         color: const Color(0xFF00C154),
//                                         borderRadius: BorderRadius.circular(10),
//                                       ),
//                                       child: IconButton(
//                                         onPressed: () {},
//                                         icon: Image.asset("images/4.png"),
//                                         iconSize: 20,
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       width: MediaQuery.of(context).size.width *
//                                           0.02,
//                                     ),
//                                     Container(
//                                       decoration: BoxDecoration(
//                                         color: const Color(0xFF00C154),
//                                         borderRadius: BorderRadius.circular(10),
//                                       ),
//                                       child: IconButton(
//                                         onPressed: () {
//                                           Notify(); //link button to the local notification
//                                         },
//                                         icon: Image.asset("images/5.png"),
//                                         iconSize: 20,
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       width: MediaQuery.of(context).size.width *
//                                           0.02,
//                                     ),
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 20,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               height: MediaQuery.of(context).size.height * 0.7,
//               width: double.infinity,
//               decoration: const BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(42.0),
//                   topRight: Radius.circular(42.0),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void Notify() {
//   AwesomeNotifications().createNotification(
//     content: NotificationContent(
//       id: 20511,
//       channelKey: 'key1',
//       title: 'This is Notification title',
//       body: 'This is body of notification', //local notification
//     ),
//   );
// }

// Future<void> _firebasePushHandler(RemoteMessage message) async {
//   print("Message from push notification is ${message.data}");

//   AwesomeNotifications().createNotificationFromJsonData(
//       message.data); //firebase push notification
// }
