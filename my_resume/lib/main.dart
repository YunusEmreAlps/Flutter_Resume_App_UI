// Libraries
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_resume/ui/resume_screen.dart';

// Main Function
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        home: ResumeScreen(),
      ),
    );
  }
}
