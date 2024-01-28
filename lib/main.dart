
import 'package:flutter/material.dart';
import 'package:quotes_app/pages/nextquotes.dart';
import 'Home.dart';
import 'auth/Signup.dart';
import 'loadingscreen.dart';
import 'tabs/memes.dart';
import 'tabs/settings.dart';
import 'tabs/profile.dart';
import 'tabs/quotespage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: HomePage(),
    initialRoute: '/',
    routes: {
      '/': (context) => const Loading(),
      '/home': (context) => const HomePage(),
      '/first-quotes': (context) => const QuoteList(),
      '/second-quotes': (context) => const NextQuoteList(),
      '/memes-page': (context) => const MemesLol(),
      '/settings-page': (context) => const Settings(),
      '/profile-page': (context) =>  const ProfileSettingsPage(),
      '/register-page': (context) => const SignupPageUI(),
    },
  ));
}
