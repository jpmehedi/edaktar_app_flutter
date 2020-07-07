import 'package:flutter/material.dart';
import '../components/long_rectangle_button.dart';
import '../screens/doctor_registration.dart';

class DoctorTermsAndConditions extends StatefulWidget {
  static String id = "DcotorTermsAndConditions";
  @override
  _DoctorTermsAndConditionsState createState() =>
      _DoctorTermsAndConditionsState();
}

class _DoctorTermsAndConditionsState extends State<DoctorTermsAndConditions> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.popAndPushNamed(
                            context, DoctorRegistration.id);
                      },
                      child: Text(
                        'BACK',
                        style: TextStyle(
                          color: Color(0xff00B140),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      child: Center(
                        child: Image.asset(
                          'images/app_logo1.png',
                          width: 200,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    'Terms & Conditions',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '''Terms and Conditions 
EDAKTAR USERS SERVICE – Terms and Conditions (“Terms”) updated April, 2020 PLEASE READ THESE TERMS AND CONDITIONS OF USE CAREFULLY BEFORE USING OUR MOBILE DEVICE SERVICE AND RELATED WEBSITE. Edaktar Project Ltd., an Israeli limited company with its principal offices in Haifa, Israel (“we” or “us”), provides you with the EDAKTAR mobile device Service (the “App”) and related website (including the mobile-optimized versions of such website, the “Site”) under these Terms and Conditions (this “Agreement”). The App and the Site are referred to together as the “Service.” As used in these Terms and Conditions, ‘you’ or ‘users’ refers to individuals using the Service, and “Medfriends” refers to individuals who may use the Service to supervise or support other users. By using the Service and/or by clicking the “I Agree” button, you unconditionally agree to follow and be bound by this Agreement and our Privacy Policy. If you do not agree to be bound by and comply with all of the terms of this Agreement, you may not use our Service. Intended Users The Service is available only to users who are at least 18 years old. Under no circumstances should the Service be used by children under 16 years of age, and we will not knowingly collect personal information from any person we know to be in this age group. If you are using the Service for the benefit of a child, please do not provide information relating to such child unless you have obtained the child’s parents’ or guardians’ consent, including their consent to our Privacy Policy. If you discover that your child has been using the Service without your consent, or that someone has been using the Service for or on behalf of your child without your consent, please contact us using the information below under “How to Contact Us,” and we will take reasonable steps to delete the child’s information from our active databases. You may not provide access to or use the Service or Content (as defined below) thereof for the benefit of third parties or make commercial use of the Service or related Content, but you may use the Service for your personal use subject to this Agreement. Use of and access to the Service is void where prohibited. By accessing and using the Service, you shall ensure that (a) any and all registration information you submit is truthful and accurate; (b) you will maintain the accuracy of such information; (c) your use of the Service will comply with and does not violate any applicable law, regulation, order or guideline and (d) you consent to receiving messages and promotional material offering in-Service purchases. Modifications of this Agreement We reserve the right to update or modify this Agreement at any time. By continuing to use the Service after any such changes, you agree to follow and be bound by this Agreement as changed. For these reasons, we encourage you to periodically review this Agreement. Disclaimers Your use of any aspect of the Service is at your own risk. You must consult with healthcare providers and make your medical decisions based on their advice. If you use and/or access the Service on or from an Android device which you or someone else rooted or on or from an iOS device which you or someone else jail broke, Edaktar shall not be responsible for the security of your data, including your personal information, and you shall bear all responsibility for any breach, illegal access, loss and/or corruption of such data. EDAKTAR IS NOT PROVIDING ANY MEDICAL ADVICE OF ANY KIND. WE MAKE NO REPRESENTATIONS OR WARRANTIES WHATSOEVER IN RESPECT OF THE SERVICE. INFORMATION REGARDING MEDICATIONS, HEALTH, MEDICAL ADVICE AND OTHERWISE MAY BE PROVIDED BY THIRD PARTIES, INCLUDING OTHER USERS OF THE SERVICE. WE CANNOT ACCEPT ANY LIABILITY WHATSOEVER IN RESPECT OF ANY SUCH CONTENT WHICH IS PROVIDED BY THIRD PARTIES AND/OR ANY OTHER USERS OF THE SERVICE. ANY ACTIONS YOU TAKE BASED ON CONTENT, NOTIFICATIONS A''',
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 20,
                ),
                LongRectangleButton(
                  onPressed: () {
                    Navigator.pushNamed(context, DoctorRegistration.id);
                  },
                  buttonText: 'Agree',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
