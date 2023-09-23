import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_9/firebase_options.dart';
import 'package:device_preview/device_preview.dart';
import 'package:intl/intl.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    DevicePreview(
      builder: (context) =>  MyApp(),
    ),
  );
}



class User {
  final String batch;
  final String degree;

  User({required this.batch, required this.degree});
}

class Schedule {
  final String location;
  final String batch;
  final String degree;
  final Timestamp date; // Keep date as Timestamp
  final String endTime;
  final String moduleCode;
  final String startTime;

  Schedule({
    required this.location,
    required this.batch,
    required this.degree,
    required this.date,
    required this.endTime,
    required this.moduleCode,
    required this.startTime,
  });
}

class MyApp extends StatelessWidget {
  final User currentUser = User(batch: "21.1", degree: "Management Information Systems");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LecturesScreen(currentUser: currentUser),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LecturesScreen extends StatefulWidget {
  final User currentUser;

  LecturesScreen({required this.currentUser});

  @override
  _LecturesScreenState createState() => _LecturesScreenState();
}

class _LecturesScreenState extends State<LecturesScreen> {
  DateTime selectedDate = DateTime.now();
  int selectedDayIndex = DateTime.now().weekday;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFFB2D6FF),
            Color(0xFFC7E8FF), // Hex color #B2D6FF
            Color(0xFFB0F57F), // Hex color #9EFF18
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/tt-background.png'),
                  alignment: Alignment.bottomRight,
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.36,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.33,
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Timetables",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                                fontSize: 34,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFF0A1E36),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      // Handle button press here
                                    },
                                    icon: Image.asset("assets/View Schedule.png"),
                                    iconSize: 34,
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.02,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFF00C154),
                                  ),
                                  child: IconButton(
                                    onPressed:() {

                                    },
                                    icon: Image.asset("assets/Planner.png"),
                                    iconSize: 34,
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.02,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFF00C154),
                                  ),
                                  child: IconButton(
                                    onPressed: (){
                                      // Handle button press here
                                    },
                                    icon: Image.asset("assets/lecturer.png"),
                                    iconSize: 34,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.64,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(42.0),
                  topRight: Radius.circular(42.0),
                ),
              ),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.55,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          for (int i = 1; i <= 7; i++) // Start from 1, not 0
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.07,
                              width: MediaQuery.of(context).size.width * 0.12,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    selectedDate =
                                        DateTime.now().subtract(Duration(days: DateTime.now().weekday - i));
                                    selectedDayIndex = i; // Update selected day
                                  });
                                },
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                        (Set<MaterialState> states) {
                                      if (states.contains(MaterialState.pressed)) {
                                        return Color(0xFF00C154); // Change to your desired color when pressed
                                      } else if (i == selectedDayIndex) {
                                        return Color(0xFF00C154); // Change to your desired color for selected day
                                      }
                                      return Color(0xFFC6E6FF); // Default color
                                    },
                                  ),
                                  overlayColor: MaterialStateProperty.all(Colors.blue.withOpacity(0.5)),
                                ),
                                child: Center(
                                  child: Text(
                                    _getDayOfWeek(i),
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xFF0A1E36),
                                      fontFamily: "poppins",
                                      fontWeight: FontWeight.w600,
                                      height: 2.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                      Expanded(
                        child: StreamBuilder<QuerySnapshot>(
                          stream: FirebaseFirestore.instance
                              .collection('schedules')
                              .where('batch', isEqualTo: widget.currentUser.batch)
                              .where('degree', isEqualTo: widget.currentUser.degree)
                              .orderBy('date')
                              .snapshots(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState == ConnectionState.waiting) {
                              return CircularProgressIndicator();
                            } else if (snapshot.hasError) {
                              return Text('Error: ${snapshot.error}');
                            } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                              return Center(
                                child: Text('No lectures for this day.'),
                              );
                            } else {
                              final lectures = snapshot.data!.docs
                                  .map((doc) => Schedule(
                                location: doc['Location'],
                                batch: doc['batch'],
                                degree: doc['degree'],
                                date: doc['date'] as Timestamp, // Keep date as Timestamp
                                endTime: doc['end-time'],
                                moduleCode: doc['module-code'],
                                startTime: doc['start-time'],
                              ))
                                  .where((lecture) => _isSameDay(lecture.date.toDate(), selectedDate))
                                  .toList();

                              if (lectures.isEmpty) {
                                return Center(
                                  child: Text('No lectures for this day.'),
                                );
                              }

                              return ListView.builder(
                                itemCount: lectures.length,
                                itemBuilder: (context, index) {
                                  final lecture = lectures[index];
                                  return ListTile(
                                    title: Text(
                                        '${lecture.moduleCode} - ${lecture.startTime} to ${lecture.endTime}'),
                                    subtitle: Text('Location: ${lecture.location}'),
                                  );
                                },
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getDayOfWeek(int day) {
    final today = DateTime.now();
    final daysUntilSelectedDay = day - today.weekday;
    final selectedDay = today.add(Duration(days: daysUntilSelectedDay));

    final formatter = DateFormat('MMM d, E');
    return formatter.format(selectedDay);
  }

  bool _isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year && date1.month == date2.month && date1.day == date2.day;
  }
}
