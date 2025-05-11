import 'package:flutter/material.dart';
import 'package:testingmyproject/screens/homescreen.dart';

void main() {
  runApp(MYTestingFYP_Project());
}

class MYTestingFYP_Project extends StatefulWidget {
  const MYTestingFYP_Project({super.key});

  @override
  State<MYTestingFYP_Project> createState() => _MYTestingFYP_ProjectState();
}

class _MYTestingFYP_ProjectState extends State<MYTestingFYP_Project> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Homescreen());
  }
}
