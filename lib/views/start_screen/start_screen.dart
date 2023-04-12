import 'package:flutter/material.dart';
import 'package:trivia_app/config/app_routes/app_routes.dart';
import 'package:trivia_app/config/app_setting/app_setting.dart';
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
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppSetting.logo),
                  ),
                ),
              ),

              const SizedBox(height: 50),

              //* start game
              CustomButton(
                title: "Start",
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.teamScreen);
                },
                btnColor: AppColor.secondColor,
              ),

              const SizedBox(height: 40),

              //* Random qouestion
              CustomButton(
                title: "Random Questions",
                onTap: () {
                  Navigator.of(context).pushNamed(
                    AppRoutes.randomQuestionScreen,
                  );
                },
                btnColor: AppColor.secondColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
