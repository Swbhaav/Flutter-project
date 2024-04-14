import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vadhyantram/login/login_page.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _emailAddressController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();
  final _streetAddressController = TextEditingController();
  final _emailRegexPattern =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Text('Create Your Account',
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 10),
              //Form
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _fullNameController,
                      keyboardType: TextInputType.text,
                      maxLength: 20,
                      decoration: InputDecoration(
                          labelText: 'Name', prefixIcon: Icon(Iconsax.user)),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please Enter Full Name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),

                    ///Email
                    TextFormField(
                      controller: _emailAddressController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Email',
                          prefixIcon: Icon(Iconsax.direct_right)),
                      validator: (emailValue){
                        if(emailValue == null || emailValue.trim().isEmpty){
                          return'Please Enter Your Email';
                        }
                        final regex = RegExp(_emailRegexPattern);
                        if(!regex.hasMatch(emailValue)){
                          return 'Please Enter a Valid Email';
                        }
                        return null;
                      },
                    ),

                    ///Password
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: _passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(Iconsax.eye_slash)),
                      validator: (value){
                        if(value == null || value.trim().isEmpty){
                          return 'Please Enter Your Password';
                        }
                        return null;
                      },
                    ),

                    ///Phone Number
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: _phoneNumberController,
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      decoration: InputDecoration(
                          labelText: 'Phone Number',
                          prefixIcon: Icon(Iconsax.call)),
                      validator: (value){
                        if(value == null || value.trim().isEmpty){
                          return 'Please Enter Your Phone Number';
                        }
                        return null;
                      },
                    ),

                    ///Address
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: _streetAddressController,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Address',
                          prefixIcon: Icon(Iconsax.location)),
                      validator: (value){
                        if(value == null || value.trim().isEmpty){
                          return 'Please Enter Your Address';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
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
