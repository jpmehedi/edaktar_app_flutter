import 'package:e_daktar/constraints.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../screens/doctor_prescribe.dart';
import '../src/pages/index.dart';

class ChatScreen extends StatefulWidget {
  static String id = 'ChatScreen';
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.popAndPushNamed(
                              context, DoctorPrescribe.id);
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
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          child: Center(
                            child: Image.asset(
                              'images/app_logo1.png',
                              width: 200,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Icon(
                        Icons.notifications_active,
                        size: 28,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(3),
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: Color(0xff002060),
                            borderRadius: BorderRadius.circular(50)),
                        child: ClipOval(
                          child: Image.asset(
                            'images/doctor_profile.png',
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, DoctorPrescribe.id);
                        },
                        child: Text(
                          'Prescription',
                          style: TextStyle(
                            color: Color(0xff00B140),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      GestureDetector(

                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => IndexPage()));
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            FontAwesomeIcons.video,
                            size: 18,
                          ),
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          FontAwesomeIcons.phone,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 4,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            decoration: kChatRightRowStyle,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Hi ! Doctor",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            decoration: kChatLeftRowStyle,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Hey , Habib, How are you?",
                                style: TextStyle(color: Color(0xff002060)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            decoration: kChatRightRowStyle,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "The quick brown fox jumps over the",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            decoration: kChatLeftRowStyle,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Hey , Habib, How are you?",
                                style: TextStyle(color: Color(0xff002060)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            decoration: kChatRightRowStyle,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Hi ! Doctor",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            decoration: kChatLeftRowStyle,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Hey , Habib, How are you?",
                                style: TextStyle(color: Color(0xff002060)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 240,
                ),
                Divider(
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.image,
                          color: Color(0xff002060),
                          size: 28,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                  fillColor: Colors.indigo,
                                  hintText: 'Start Typing...',
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(Icons.arrow_forward_ios,
                            color: Color(0xff002060), size: 28),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
