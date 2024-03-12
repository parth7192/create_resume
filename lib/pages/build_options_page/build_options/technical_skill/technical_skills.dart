import 'package:flutter/material.dart';
import '../../../../utils/globals.dart';

class TechnicalPage extends StatefulWidget {
  const TechnicalPage({super.key});

  @override
  State<TechnicalPage> createState() => _TechnicalPageState();
}

class _TechnicalPageState extends State<TechnicalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: const Text("Enter your Skills"),
      ),
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ...List.generate(
                Globals.globals.skill.length,
                (index) => Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: Globals.globals.delete[index],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Globals.globals.skill.removeAt(index);
                        Globals.globals.delete.removeAt(index);

                        setState(() {});
                      },
                      icon: const Icon(Icons.delete),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    Globals.globals.skill.add("");
                    Globals.globals.delete.add(TextEditingController());
                  });
                },
                child: const Text("Add"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
