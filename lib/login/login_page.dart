import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vadhyantram/login/signup.dart';
import '../utils/constants/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Spacer(),
                Text(
                  'HelloWelcome',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(
                  height: 11,
                ),
                Text(
                  'Login To Continue',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const Spacer(),
                const Form(
                  child: Column(
                    children: [
                      ///Email
                      TextField(
                        decoration: InputDecoration(
                          iconColor: VColors.dark,
                          prefixIcon: Icon(Iconsax.direct_right),
                          hintText: 'Email',
                        ),
                      ),
                      SizedBox(height: 10),
                      ///Password
                      TextField(
                        decoration: InputDecoration(
                          iconColor: VColors.dark,
                          prefixIcon: Icon(Iconsax.password_check),
                          hintText: 'Password',
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),

                    ]
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (value){}),
                        const Text('Remember me'),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        print('Clicked');
                      },
                      style: TextButton.styleFrom(foregroundColor: VColors.buttonPrimary),
                      child: Text('Forgot Password'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Login To Continue',
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text('Sign In With'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: VColors.grey),
                          borderRadius: BorderRadius.circular(100)),
                      child: IconButton(
                        onPressed: () {
                          print('Facebook clicked');
                        },
                        icon: const Image(
                          width: 24,
                          height: 24,
                          image: AssetImage('assets/images/facebook.png'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: VColors.grey),
                          borderRadius: BorderRadius.circular(100)),
                      child: IconButton(
                        onPressed: () {
                          print('Facebook clicked');
                        },
                        icon: Image(
                          width: 24,
                          height: 24,
                          image: AssetImage('assets/images/google.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Don't Have Account",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextButton(
                        onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context){
                          return Signup();
                        }));},
                        style: TextButton.styleFrom(
                            foregroundColor: VColors.buttonPrimary),
                        child: Text('Signup'))
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
