import 'dart:io';
import 'package:create_resume/pages/build_options_page/build_options/personal_info_page/components/form_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../utils/globals.dart';

class PersonalInfoPage extends StatefulWidget {
  const PersonalInfoPage({super.key});

  @override
  State<PersonalInfoPage> createState() => _PersonalInfoPageState();
}

bool? abc = true;

class _PersonalInfoPageState extends State<PersonalInfoPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF77DDFF),
        foregroundColor: Colors.black,
        title: const Text(
          "Personal information",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(2),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      abc = true;
                      setState(() {});
                    },
                    child: Container(
                      margin:
                          const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      height: size.height * 0.07,
                      width: size.width * 0.47,
                      decoration: BoxDecoration(
                        color: (abc == false)
                            ? Colors.white10
                            : Colors.blue.shade400,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Contact",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      abc = false;
                      setState(() {});
                    },
                    child: Container(
                      margin:
                          const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                      height: size.height * 0.07,
                      width: size.width * 0.47,
                      decoration: BoxDecoration(
                        color: (abc == true)
                            ? Colors.white12
                            : Colors.blue.shade400,

                        // color: Colors.blue.shade400,
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Photo",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              (abc == true)
                  ? formWidget(context: context)
                  : Container(
                      margin: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      height: size.height * 0.25,
                      width: size.width,
                      color: Colors.grey,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          SizedBox(
                            height: size.height * 0.5,
                            child: CircleAvatar(
                              radius: size.height * 0.1,
                              foregroundImage: Globals.globals.image != null
                                  ? FileImage(Globals.globals.image!)
                                  : null,
                            ),
                          ),
                          FloatingActionButton.small(
                            onPressed: () async {
                              ImagePicker picker = ImagePicker();
                              XFile? file = await picker.pickImage(
                                source: ImageSource.gallery,
                              );

                              if (file != null) {
                                Globals.globals.image = File(file.path);
                                setState(() {});
                              }
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Icon(
                              Icons.camera_alt_outlined,
                            ),
                          )
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
