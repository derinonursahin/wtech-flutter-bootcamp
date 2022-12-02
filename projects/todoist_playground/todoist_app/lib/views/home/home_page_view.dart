import 'package:flutter/material.dart';
import 'package:todoist_app/views/auth/pick_theme_page_view.dart';
import 'package:todoist_app/views/home/todo_list_view.dart';
import 'package:todoist_app/views/settings/settings_app.dart';
import '../../constants/image/image_path_constants.dart';
import '../../constants/text/home_page_contants.dart';
import '../../widgets/custom_methods.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(CustomHomeText.todayText),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded)),
          IconButton(
              onPressed: () {
                CustomMethods.settingModalBottomSheet(context, const SettingsApp());
              },
              icon: const Icon(Icons.settings)),
        ],
      ),
      body: const TodoListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          CustomMethods.settingModalBottomSheet(context, const ThemeSwitcher());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    Key? key,
    required this.imagePath,
  }) : super(key: key);
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        color: Colors.white.withOpacity(0.6),
        height: 35,
        width: 250,
        child: OutlinedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                imagePath,
                width: 25,
                color: Colors.orange[400],
              ),
              Text(
                CustomHomeText.establishDailyText,
                style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }
}