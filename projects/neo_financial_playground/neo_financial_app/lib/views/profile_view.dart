import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/data/local/shared_preferences.dart';
import 'package:neo_financial_app/core/provider/onboarding_load_widget_state.dart';
import 'package:provider/provider.dart';

import '../widgets/custom_appbar_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    Size dynamicSize = MediaQuery.of(context).size;
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: CustomAppbarWidget(
            titleWidget: const Text(
              'Profile',
              style: TextStyle(color: Colors.black),
            ),
            preferredSizeHeight: dynamicSize.height / 15,
            leftWidget: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.close,
                color: Colors.black,
              ),
            ),
            rightWidgetList: null,
          ),
          body: Center(
              child: ElevatedButton(
            onPressed: () {
              UserSharedPreferences.setUserID('');
              Provider.of<OnboardingLoadWidgetState>(context, listen: false)
                  .changePageIndex(0);
              Navigator.pushNamed(
                context,
                '/Onboarding',
              );
            },
            child: const Text('Sign out'),
          )),
        ));
  }
}