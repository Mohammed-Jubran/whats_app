import 'package:flutter/material.dart';
import 'package:whats_app/sign_up_screen.dart';
import 'package:whats_app/tab_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {

  final TextEditingController _lpassword = TextEditingController();
  final TextEditingController _lemail = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 35, top: 130),
              child:  Text(
                AppLocalizations.of(context)!.logo,
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                            controller: _lemail,
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: AppLocalizations.of(context)!.email,
                                prefixIcon: const Icon(Icons.email_outlined),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextField(
                            controller: _lpassword,
                            style: const TextStyle(),
                            obscureText: true,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.password_outlined),
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: AppLocalizations.of(context)!.password,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          TextButton(
                            onPressed: () async {

                              SharedPreferences _prefs =await SharedPreferences.getInstance();
                              _prefs.setString("email", _lemail.text);
                              _prefs.setString("password", _lpassword.text);

                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => TabScreen(),));
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: const Color(0xff4c505b),
                              fixedSize: const Size(300, 50),
                            ),
                            child:  Text(
                              AppLocalizations.of(context)!.login,
                              style:
                                  TextStyle(fontSize: 25, color: Colors.grey),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                           Text(AppLocalizations.of(context)!.or),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MyRegister()),
                              );
                            },
                            style: const ButtonStyle(),
                            child:  Text(
                              AppLocalizations.of(context)!.sign_up,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xff4c505b),
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
