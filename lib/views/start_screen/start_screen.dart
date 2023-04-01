import 'package:flutter/material.dart';
import 'package:trivia_app/config/app_theme/app_color.dart';
import 'package:trivia_app/views/widgets/custom_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //* logo
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Party \n Game",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.textColor,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 50),

              //* start game
              CustomButton(
                title: "Start",
                onTap: () {},
                btnColor: AppColor.secondColor,
              ),

              const SizedBox(height: 40),

              //* Random qouestion
              CustomButton(
                title: "Random Questions",
                onTap: () {},
                btnColor: AppColor.secondColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
