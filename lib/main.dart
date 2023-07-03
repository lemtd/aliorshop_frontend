import 'package:flutter/material.dart';
import 'package:pockectcheff/screens/home.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inovação em Saúde',
      theme: ThemeData(
        backgroundColor: Color(0XFFEDEDED),
        appBarTheme: AppBarTheme(color:Color(0XFFEDEDED), elevation: 0),
        
      ),
        home: HomeScreen(),
        debugShowCheckedModeBanner: false
    );
  }
}

class PerfilScreen {
}

