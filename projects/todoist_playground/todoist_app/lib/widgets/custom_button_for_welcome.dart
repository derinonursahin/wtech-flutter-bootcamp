import 'package:flutter/material.dart';
import 'package:todoist_app/constants/custom_constants.dart';
import 'package:todoist_app/widgets/custom_methods.dart';

class CustomButtonWelcome extends StatefulWidget {
  const CustomButtonWelcome({Key? key, required this.widName}) : super(key: key);
  final Widget widName;

  @override
  State<CustomButtonWelcome> createState() => _CustomButtonWelcomeState();
}

class _CustomButtonWelcomeState extends State<CustomButtonWelcome> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 350,
      child: ElevatedButton(
        onPressed: () {
          CustomMethods.settingModalBottomSheet(context, widget.widName);
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.email),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                CustomTextConstants.buttonTextEmail,
                style: Theme.of(context).textTheme.caption?.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}