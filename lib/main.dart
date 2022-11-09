import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

    options: DefaultFirebaseOptions.currentPlatform,

);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           ElevatedButton(onPressed: () async {
                  try{
                      final credeintial = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: 'fidail2504@mail.ru', password: 'abcd1234',);
                      print('User creation: SUCCESS');
                      print(credeintial.user!.uid);
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'weak-password'){
                      print('The password provided is too weak.');
                    } else if (e.code == 'email-already-i-use') {
                      print('The account already exists for that email.');
                    }
                
               
                  } catch (e) {
                  print(e);
                  
           };
           },
           child: Text('Select'))
          ],
        ),
      ),
    );
  }
}
