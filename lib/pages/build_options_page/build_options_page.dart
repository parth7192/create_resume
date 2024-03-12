import 'package:flutter/material.dart';
import '../../utils/route_utils.dart';

class BuildOptionPage extends StatefulWidget {
  const BuildOptionPage({super.key});

  @override
  State<BuildOptionPage> createState() => _BuildOptionPageState();
}

class _BuildOptionPageState extends State<BuildOptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Build Option"),
        backgroundColor: const Color(0xFF2D2F41),
        foregroundColor: Colors.white,
      ),
      backgroundColor: const Color(0xFFF5E8DD),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: MyRoutes.buildOptions
                .map(
                  (e) => Card(
                    shadowColor: const Color(0xFF265073),
                    elevation: 3,
                    margin: const EdgeInsets.all(10),
                    shape: OutlineInputBorder(
                      gapPadding: 10,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        e['icon'],
                        height: 42,
                      ),
                      title: Text(
                        e['title'],
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, e['route']);
                        },
                        icon: const Icon(Icons.add_box),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
