import 'package:flutter/material.dart';
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
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'UserName',
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      print('Clicked');
                    },
                    style: TextButton.styleFrom(foregroundColor: VColors.white),
                    child: Text('Forgot Password'),
                  ),
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
                          image: AssetImage('assets/images/024-facebook.png'),
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
                          image: AssetImage('assets/images/OIP (1).jpg'),
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
                        onPressed: () {},
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
