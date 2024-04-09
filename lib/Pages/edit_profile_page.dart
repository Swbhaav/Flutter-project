import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit profile'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'FirstName',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'LastName',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'PhoneNumber',
            ),
          ),
           TextField(
            decoration: InputDecoration(
              hintText: 'Location',
            ),
          ),

        ],
      ),
    );
  }
}
