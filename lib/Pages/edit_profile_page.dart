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
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              filled: true,
              fillColor: Colors.white.withOpacity(0.5),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'LastName',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              filled: true,
              fillColor: Colors.white.withOpacity(0.5),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'PhoneNumber',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              filled: true,
              fillColor: Colors.white.withOpacity(0.5),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Location',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              filled: true,
              fillColor: Colors.white.withOpacity(0.5),
            ),
          ),

        ],
      ),
    );
  }
}
