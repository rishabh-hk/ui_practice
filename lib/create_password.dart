import 'package:flutter/material.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({Key? key}) : super(key: key);

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  bool _switchValue = false;
  bool _password = false;
  final bool _confirmPassword = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(
          int.parse('0xff27314C'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.circle_outlined,
                color: Colors.white,
                size: 40,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Create Password',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 30.0, left: 25, right: 25, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'New Password (min 8 chars)',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: TextField(
                        obscureText: !_password,
                        cursorColor: Colors.white,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          disabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 0.0,
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 0.0,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 0.0,
                            ),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _password = !_password;
                              });
                            },
                            icon: Icon(
                              _password
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Confirm Password',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: TextField(
                        obscureText: !_confirmPassword,
                        cursorColor: Colors.white,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 0.0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 0.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 0.0,
                            ),
                          ),
                          // suffixIcon: IconButton(
                          //   onPressed: () {
                          //     setState(() {
                          //       _confirmPassword = !_confirmPassword;
                          //     });
                          //   },
                          //   icon: Icon(
                          //     _confirmPassword
                          //         ? Icons.visibility
                          //         : Icons.visibility_off,
                          //   ),
                          //   color: Colors.white,
                          // ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 25, right: 25, bottom: 10),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Enable Touch ID at login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      const Spacer(),
                      Switch(
                          value: _switchValue,
                          onChanged: (value) {
                            setState(() {
                              _switchValue = value;
                            });
                          }),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 40.0, left: 20, right: 20, bottom: 10),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      //TODO: verify data
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                    child: const Text(
                      'NEXT',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
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
