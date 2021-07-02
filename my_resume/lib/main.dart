// Libraries
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_resume/ui/resume_screen.dart';
import 'package:my_resume/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


// Main Function
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Multiple Language
    AppLocalizations.of(context);

    return ChangeNotifierProvider(
      create: (BuildContext context) {},
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Yunus Emre Alpu',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(color: Colors.white, elevation: 0),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        // Localization
        supportedLocales: [Locale("en"), Locale("tr")],
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        home: ResumeScreen(),
      ),
    );
  }
}
