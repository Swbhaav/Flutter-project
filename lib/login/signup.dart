import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vadhyantram/login/login_page.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              Text('Create Your Account',
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 10),
              //Form
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Name', prefixIcon: Icon(Iconsax.user)),
                  ),
                  const SizedBox(height: 10),
                  ///Email
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Email', prefixIcon: Icon(Iconsax.direct_right)),
                  ),
                  ///Password
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Password', prefixIcon: Icon(Iconsax.eye_slash)),
                  ),

                  ///Phone Number
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Phone Number', prefixIcon: Icon(Iconsax.call)),
                  ),
                  ///Address
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Address', prefixIcon: Icon(Iconsax.location)),
                  ),
                ],
              ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return LoginPage();
                    }));
                  },
                  child: Text(
                    'Sign Up',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
