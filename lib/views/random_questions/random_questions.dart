import 'package:flutter/material.dart';
import 'package:trivia_app/config/app_theme/app_color.dart';

class RandomQuestionsScreen extends StatelessWidget {
  const RandomQuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Questions"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LanguageWidget(
              icon: Icons.language,
              ontap: () {},
              title: "English",
            ),
            const SizedBox(height: 20),
            LanguageWidget(
              icon: Icons.mosque_sharp,
              ontap: () {
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return Material(
                      color: AppColor.mainColor,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              side: const BorderSide(
                                color: AppColor.textColor,
                              )
                            ),
                            label: const Text(
                              "Change a question",
                              style: TextStyle(
                                color: AppColor.textColor,
                                fontSize: 20,
                              ),
                            ),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.restart_alt_outlined,
                              size: 30,
                              color: AppColor.textColor,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "sss",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColor.textColor,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              title: "باللغة العربية",
            ),
          ],
        ),
      ),
    );
  }
}

class LanguageWidget extends StatelessWidget {
  const LanguageWidget({
    Key? key,
    required this.icon,
    required this.ontap,
    required this.title,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Card(
        color: Colors.black38,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Icon(
                icon,
                size: 50,
                color: AppColor.textColor,
              ),
              const SizedBox(height: 20),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColor.textColor,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
