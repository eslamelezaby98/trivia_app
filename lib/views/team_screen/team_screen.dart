import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivia_app/config/app_theme/app_color.dart';
import 'package:trivia_app/controller/team_controller.dart';
import 'package:trivia_app/views/widgets/build_text_button.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var teamController = Provider.of<TeamController>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create a Team"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              children: [
                ListTile(
                  title: const Text("Enter a name"),
                  subtitle: TextFormField(
                    controller: teamController.teamName,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: BuildTextButton(
                        onTap: () {
                          teamController.addToTeam();
                        },
                        btnColor: AppColor.secondColor,
                        text: "Add",
                      ),
                    ),
                    Expanded(
                      child: BuildTextButton(
                        onTap: () {
                          teamController.deleteAllMemebers();
                        },
                        btnColor: Colors.red,
                        text: "Delete All",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView.separated(
                    itemCount: teamController.teamList.length,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          teamController.teamList[index],
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            teamController.deleteMemeber(index);
                          },
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: AppColor.thereColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Start",
                      style: TextStyle(
                        color: AppColor.mainColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
