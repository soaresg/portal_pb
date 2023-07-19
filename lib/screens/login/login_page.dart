import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portal_pb/constants.dart';
import 'package:portal_pb/screens/home/home_page.dart';

const users = {
  'gabriel@teste.com.br': 'senha123',
  'soares@teste.com.br': '123senha',
};

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  Duration get loginTime => const Duration(milliseconds: 2250);

  Future<String?> _authUser(LoginData data) {
    debugPrint('Name: ${data.name}, Password: ${data.password}');

    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'User not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }

  Future<String?> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'Screw Indústria Metalmecânica',
      logo: const AssetImage('assets/images/logo.png'),
      onLogin: _authUser,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      },
      onRecoverPassword: _recoverPassword,
      theme: LoginTheme(
        primaryColor: bgColor,
        accentColor: Colors.white,
        titleStyle: TextStyle(
          fontFamily: GoogleFonts.mukta().fontFamily,
          letterSpacing: 1,
        ),
        bodyStyle: const TextStyle(color: Colors.blueGrey),
        cardTheme: CardTheme(
          color: Colors.white,
          elevation: 5,
          margin: const EdgeInsets.only(top: 15),
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        inputTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.black.withOpacity(0.1),
          labelStyle: const TextStyle(
            color: Colors.blueGrey,
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red.withOpacity(0.5),
              width: 1,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black.withOpacity(0.5),
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
