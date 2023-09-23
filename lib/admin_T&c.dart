import 'package:flutter/material.dart';
import 'package:flutter_application_9/adminSignUp.dart';

class AdminTC extends StatelessWidget {
  const AdminTC({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0), // Add padding for spacing
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align text to the left
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Admin()));
                  },
                  icon: const Icon(Icons.arrow_back_ios_new_rounded)),
              const SizedBox(
                height: 100,
                child: Center(
                  child: Text(
                    'Terms & Conditions',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              // Add your terms and conditions text here
              const Text(
                '''
               Last Updated: 2023/09/21

1. Admin Eligibility

1.1. To become an administrator ("Admin") for the "Ncatch" mobile application ("App"), you must be a registered lecturer or admin at NSBM Green University.

1.2. By assuming the role of an Admin, you confirm that you meet the eligibility criteria outlined in clause 1.1.

2. Admin Responsibilities

2.1. Admins are entrusted with the responsibility of maintaining the integrity and functionality of the App within their designated areas of authority.

2.2. Admins may include faculty members, department heads, or other university staff members who have been granted administrative privileges.

3. Account Access

3.1. Admins will be provided with unique account credentials and permissions to access and manage specific sections or features of the App.

3.2. Admins are responsible for maintaining the confidentiality of their account credentials and must not share them with unauthorized individuals.

4. Data Accuracy

4.1. Admins are expected to provide accurate, up-to-date information when updating lecture schedules, event details, or making announcements through the App.

4.2. Admins must ensure that any information they publish or modify within the App is free from errors or inaccuracies to the best of their knowledge.

5. App Usage

5.1. Admins are expected to use their administrative privileges solely for the purpose of enhancing the user experience and functionality of the App.

5.2. Admins must refrain from engaging in any activities that could harm the App, its users, or the university community, including but not limited to uploading malicious content, spamming, or harassment.

6. Notifications

6.1. Admins may send notifications, updates, and announcements to users within their designated administrative areas using the App's notification system.

6.2. Notifications sent by Admins should be relevant to the university community and aligned with the App's intended purpose.

7. Compliance with App Policies

7.1. Admins must comply with the App's terms and conditions, privacy policy, and any other relevant policies or guidelines set forth by the App's administrators.

8. Termination of Admin Privileges

8.1. The App reserves the right to revoke or suspend Admin privileges at any time if Admins violate these terms and conditions, engage in misconduct, or misuse their authority.

9. Changes to Admin Terms

9.1. The App may update these Admin Terms and Conditions without prior notice.

9.2. Admins are responsible for reviewing these terms periodically to stay informed about any changes.

10. Contact Information

10.1. For questions, concerns, or inquiries related to Admin Terms and Conditions, please contact us at helpdesk.Ncatch@gmail.com.

By accepting these Admin Terms and Conditions and assuming the role of an Admin on the Ncatch mobile application, you agree to comply with and be bound by these terms. Failure to adhere to these terms may result in the termination of your Admin privileges.
                ''',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
