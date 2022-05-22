// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();

  late String _email;
  late String _password;
  late String _confirmpassword;
  bool showLogin = true;

  @override
  Widget build(BuildContext context) {
    Widget _login() {
      return Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Container(
          child: const Align(
            child: Text(
              'FAR_YSUP',
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      );
    }

    Widget _input(Icon icon, String hint, TextEditingController controller,
        bool obscure) {
      return Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: TextField(
          controller: controller,
          obscureText: obscure,
          style: const TextStyle(fontSize: 20, color: Colors.white),
          decoration: InputDecoration(
            hintStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white30),
            hintText: hint,
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white54, width: 3)),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white54, width: 1)),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: IconTheme(
                  data: const IconThemeData(color: Colors.white), child: icon),
            ),
          ),
        ),
      );
    }

    Widget _button(String text, void Function() func) {
      return RaisedButton(
        splashColor: Theme.of(context).primaryColor,
        highlightColor: Theme.of(context).primaryColor,
        color: Colors.white,
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
              fontSize: 20),
        ),
        onPressed: () {
          func();
        },
      );
    }

    Widget _form(String label, void Function() func) {
      return Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 10),
              child: _input(
                  const Icon(Icons.email), 'USERNAME', _emailController, false),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 10),
              child: _input(const Icon(Icons.lock), 'PASSWORD',
                  _passwordController, true),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 10),
              child: _input(const Icon(Icons.lock), 'CONFIRM PASSWORD',
                  _confirmpasswordController, true),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: _button(label, func),
              ),
            ),
          ],
        ),
      );
    }

    void _buttonAction() {
      _email = _emailController.text;
      _password = _passwordController.text;
      _confirmpassword = _confirmpasswordController.text;

      _emailController.clear();
      _passwordController.clear();
      _confirmpasswordController.clear();
    }

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _login(),
            const SizedBox(
              height: 100,
            ),
            Column(
              children: <Widget>[
                _form('REGISTERED', _buttonAction),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: GestureDetector(
                      child: const Text('Registered? Login!',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                      onTap: () {
                        setState(() {
                          Navigator.pushNamed(context, 'home');
                        });
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
