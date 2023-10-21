import 'package:flutter/material.dart';
import 'package:projectd2/View/home/view/homescreen.dart';
import 'package:projectd2/View/login/controller/square_tile.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _isobscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF5F5F5),
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Container(
        color: const Color(0xffF5F5F5),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.07,
                ),
                child: Image.asset('images/focalx.png'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.width * 0.08,
                  horizontal: MediaQuery.of(context).size.width * 0.08,
                ),
                child: TextField(
                  controller: _email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'name@gmail.com',
                    labelText: 'Email Address',
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                    ),
                    hintStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.width * 0.005,
                  horizontal: MediaQuery.of(context).size.width * 0.08,
                ),
                child: TextField(
                  controller: _password,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: _isobscure,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: '***********',
                    labelText: 'Password',
                    prefixIcon: const Icon(
                      Icons.key,
                    ),
                    hintStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isobscure
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                      ),
                      onPressed: () {
                        setState(() {
                          _isobscure = !_isobscure;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.03,
                  left: MediaQuery.of(context).size.width * 0.58,
                ),
                child: InkWell(
                  onTap: () {
                    // Navigate to the forgot password page.
                  },
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.08,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF8500),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    minimumSize: Size(
                      MediaQuery.of(context).size.width * 0.85,
                      MediaQuery.of(context).size.width * 0.15,
                    ),
                  ),
                  onPressed: () {
                    // Navigate to the home screen.
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  child: const Text('Login'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.height * 0.05,
                  vertical: MediaQuery.of(context).size.height * 0.05,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                      ),
                      child: Text(
                        'Or continue with ',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(
                    imagePath: 'images/google.png',
                    onTap: () {
                      // Handle Google sign-in.
                    },
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  SquareTile(
                    imagePath: 'images/apple.png',
                    onTap: () {
                      // Handle Apple sign-in.
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
