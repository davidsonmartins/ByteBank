import 'package:bankbyyte/models/contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _accontNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('New contact'),),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                      labelText: 'Full Name'
                  ),
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextField(
                  controller: _accontNumberController,
                  decoration: InputDecoration(
                      labelText: 'Account number'
                  ),
                  style: TextStyle(fontSize: 24.0,),
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {
                      final String name = _nameController.text;
                      final int? accountNumber = int.tryParse(_accontNumberController.text);
                      final Contact newContact = Contact(0,name,accountNumber!);
                      Navigator.pop(context, newContact);
                    },
                    child: Text('Create'),
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
