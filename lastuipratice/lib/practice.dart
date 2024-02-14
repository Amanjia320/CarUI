// ignore_for_file: unused_field, prefer_final_fields, avoid_print

import 'package:flutter/material.dart';

import 'Details.dart';

class Duseca extends StatefulWidget {
  const Duseca({super.key});

  @override
  State<Duseca> createState() => _DusecaState();
}

class _DusecaState extends State<Duseca> {
  bool isFormComplete = false;
  var _formkey = GlobalKey<FormState>();
  var _password = TextEditingController();
  var _confirmpassword = TextEditingController();
  bool _passwordVisible = false;
  bool value = false;

  bool isPasswordValid(String password) {
    return password.length >= 8 ||
        password.contains(RegExp(r'[A-Z]')) ||
        password.contains(RegExp(r'[a-z]')) ||
        password.contains(RegExp(r'[0-9]'));
  }

  bool rememberMe = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'SignUp today',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    'Provide us your credentials to start\nyour journey with us.',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 7),
                        child: Text(
                          'Your name',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        validator: (msg) {
                          if (msg!.isEmpty) {
                            return 'Please enter name';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(
                              color: Colors.green,
                            ),
                          ),
                          hintText: 'e.g john doe',
                          hintStyle: TextStyle(
                            color: Colors.grey.shade400,
                            fontStyle: FontStyle.italic,
                            fontSize: 16.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 7),
                        child: Text(
                          'Email',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (msg) {
                          if (msg!.isEmpty) {
                            return 'Enter email';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(
                              color: Colors.green,
                            ),
                          ),
                          hintText: 'youremail@gmail.com',
                          hintStyle: TextStyle(
                            color: Colors.grey.shade400,
                            fontStyle: FontStyle.italic,
                            fontSize: 16.0,
                          ),
                          suffixIcon: const Icon(
                            Icons.done,
                            color: Colors.green,
                          ),
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 7),
                        child: Text(
                          'Phone no*',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        validator: (msg) {
                          if (msg!.isEmpty || msg.length != 11) {
                            return 'Enter valid phone number';
                          }

                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(
                              color: Colors.green,
                            ),
                          ),
                          hintText: '3x-xxxxxxxxx',
                          hintStyle: TextStyle(
                            color: Colors.grey.shade400,
                            fontStyle: FontStyle.italic,
                            fontSize: 16.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 7),
                        child: Text(
                          'Password',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _password,
                        onChanged: (changed) {
                          setState(() {});
                        },
                        validator: (msg) {
                          if (msg!.isEmpty ||
                              msg.length < 8 ||
                              _password.text.isEmpty) {
                            return ('Enter Valid password');
                          } else {
                            return null;
                          }
                        },
                        obscureText: !_passwordVisible,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(
                              color: Colors.green,
                            ),
                          ),
                          hintText: '********',
                          hintStyle: TextStyle(
                            color: Colors.grey.shade400,
                            fontStyle: FontStyle.italic,
                            fontSize: 16.0,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              // Based on passwordVisible state choose the icon
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 7),
                        child: Text(
                          'Confirm password',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _confirmpassword,
                        validator: (msg) {
                          if (msg!.isEmpty || msg != _password.value.text) {
                            return 'Enter confirm password';
                          }

                          return null;
                        },
                        obscureText: !_passwordVisible,
                        onChanged: (changed) {
                          setState(() {});
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(
                              color: Colors.green,
                            ),
                          ),
                          hintText: '********',
                          hintStyle: TextStyle(
                            color: Colors.grey.shade400,
                            fontStyle: FontStyle.italic,
                            fontSize: 16.0,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              // Based on passwordVisible state choose the icon
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: 1.1,
                        child: Checkbox(
                          checkColor: Colors.white,
                          activeColor: Colors.red,
                          value: isPasswordValid(
                              _password.text), // Check the condition here
                          onChanged: null,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Password must be at least 8 characters. uppercase,\nlowercase and uniquecode?',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        setState(() {
                          isFormComplete = true;
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Details()),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please fill all the fields.'),
                            duration: Duration(seconds: 3),
                          ),
                        );
                      }
                    },
                    child: const Center(
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
