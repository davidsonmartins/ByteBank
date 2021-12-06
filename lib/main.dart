import 'package:bankbyyte/screens/contact_form.dart';
import 'package:bankbyyte/screens/Dashboard.dart';
import 'package:bankbyyte/screens/contacts_list.dart';
import 'package:flutter/material.dart';

import 'database/app_database.dart';
import 'models/contact.dart';

void main() {
  runApp(ByteBankApp());
  save(Contact(0,'Davidson',1000)).then((id){
    findAll().then((contacts) =>debugPrint(contacts.toString()));
  });
}

class ByteBankApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green.shade900,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.green.shade900,
          secondary: Colors.blueAccent[700],
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(backgroundColor: Colors.blueAccent[700]),
        ),
      ),
      home: Dashboard(),
    );
  }
}


