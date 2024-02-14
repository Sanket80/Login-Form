import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String storageBucketUrl = 'gs://login-547fe.appspot.com';
  Platform.isAndroid
      ? await Firebase.initializeApp(
    options:FirebaseOptions(
      apiKey: 'AIzaSyDcFd5_JqTwil-v2oSFYItrs4C2jJdqYQc',
      appId: '1:968616999596:android:35018156aa54ce526c7d09',
      messagingSenderId: '968616999596',
      projectId: 'login-547fe',
      storageBucket: storageBucketUrl,
    ),)
      : await Firebase.initializeApp();

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

