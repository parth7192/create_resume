import 'package:flutter/material.dart';
import '../../utils/route_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Create Resume"),
        backgroundColor: const Color(0xFF2D2F41),
        foregroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pushNamed(MyRoutes.buildOptionPage);
        },
        icon: const Icon(Icons.add),
        label: const Text(""),
      ),
    );
  }
}
