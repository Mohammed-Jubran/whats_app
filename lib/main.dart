import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:whats_app/login_screen.dart';
import 'package:whats_app/tab_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
 main()  async {
   WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences _prefs =await SharedPreferences.getInstance();
  var email = _prefs.getString("email");
  var password = _prefs.getString("password");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('ar', ''), // Spanish, no country code
      ],

      debugShowCheckedModeBanner: false,
      home: MyLogin(),
      );
  }
}

