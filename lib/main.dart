import 'package:flutter/material.dart';

import './screens/splash_screen.dart';
import './screens/home_screen.dart';
import './screens/patient_registration.dart';
import './screens/doctor_registration.dart';
import './screens/forget_password.dart';
import './screens/otp_verfication.dart';
import './screens/terms_condition.dart';
import './screens/doctor_list.dart';
import './screens/schedule_celender.dart';
import './screens/patient_payment.dart';
import './screens/new_pateint.dart';
import './screens/doctor_prescribe.dart';
import './screens/appoinments.dart';
import './screens/edit_profile.dart';
import './screens/patient_profile.dart';
import './screens/schedule_setup.dart';
import './screens/patient_review.dart';
import './screens/doctor_review.dart';
import './screens/doctor_payment.dart';
import './screens/doctor_details.dart';
import './screens/appoinments_doctor.dart';
import './screens/doctors_profile.dart';
import './screens/prescribe_doctors.dart';
import './screens/chat_screen.dart';
import './screens/home_doctor.dart';
import './screens/doctor_otp.dart';
import './screens/doctor_term_condition.dart';
import './screens/doctor_prescribe_for_patient.dart';
import './screens/doctor_schedule_setup.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        PaientRegistration.id: (context) => PaientRegistration(),
        DoctorRegistration.id: (context) => DoctorRegistration(),
        ForgetPassword.id: (context) => ForgetPassword(),
        OTPverification.id: (context) => OTPverification(),
        TermsAndConditions.id: (context) => TermsAndConditions(),
        DoctorList.id: (context) => DoctorList(),
        ScheduleCelender.id: (context) => ScheduleCelender(),
        PatientPayment.id: (context) => PatientPayment(),
        NewPateint.id: (context) => NewPateint(),
        DoctorPrescribe.id: (context) => DoctorPrescribe(),
        Appoinments.id: (context) => Appoinments(),
        EditProfile.id: (context) => EditProfile(),
        PatientProfile.id: (context) => PatientProfile(),
        ScheduleSetup.id: (context) => ScheduleSetup(),
        PatientReview.id: (context) => PatientReview(),
        DoctorReview.id: (context) => DoctorReview(),
        DoctorPayment.id: (context) => DoctorPayment(),
        DoctorDetails.id: (context) => DoctorDetails(),
        AppoinmentsDoctor.id: (context) => AppoinmentsDoctor(),
        DoctorsProfile.id: (context) => DoctorsProfile(),
        PrescribeDoctor.id: (context) => PrescribeDoctor(),
        ChatScreen.id: (context) => ChatScreen(),
        HomeDoctor.id: (context) => HomeDoctor(),
        DoctorOTP.id: (context) => DoctorOTP(),
        DoctorTermsAndConditions.id: (context) => DoctorTermsAndConditions(),
        DoctorPrescribeForPatient.id: (context) => DoctorPrescribeForPatient(),
        DoctorScheduleSetup.id:(context) =>DoctorScheduleSetup(),

      },
    );
  }
}
