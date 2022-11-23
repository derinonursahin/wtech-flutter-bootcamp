import 'package:flutter/material.dart';
import 'package:todoist_app/constants/router_name_constants.dart';
import '../../constants/icon_text_model.dart';
import '../../constants/text/settings_page_custom.dart';
import '../../widgets/preferred_app_bar_widgets.dart';
import '../../widgets/settings_card_widget.dart';

class SettingsApp extends StatefulWidget {
  const SettingsApp({Key? key}) : super(key: key);

  @override
  State<SettingsApp> createState() => _SettingsAppState();
}

class _SettingsAppState extends State<SettingsApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: const PreferredSize(
            preferredSize: Size(400, 50), child: AppBarWidget(appText: CustomSettingsText.settingsText)),
        body: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Center(
                      child: Padding(
                          padding: const EdgeInsetsDirectional.only(start: 20, end: 20, bottom: 30, top: 8),
                          child: Column(
                            children: [
                              const Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: CustomCardWidget(
                                      cardHeight: 60,
                                      listCard: CustomListWidget(
                                          iconsText: ["Todoist Pro"], icons: [Icons.star_border_outlined]))),
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                                child: CustomCardWidget(
                                    listCard: CustomListWidget(icons: icons4, iconsText: textIcon4), cardHeight: 220),
                              ),
                              const CustomCardWidget(
                                  cardHeight: 110,
                                  listCard: CustomListWidget(
                                      iconsText: ["Reminders", "Notification"],
                                      icons: [Icons.alarm_outlined, Icons.notifications_none])),
                              Padding(
                                padding: const EdgeInsets.only(top: 20, bottom: 23),
                                child: CustomCardWidget(
                                    cardHeight: 220, listCard: CustomListWidget(iconsText: textIcon3, icons: icons3)),
                              ),
                              const CustomLogOutCard(redText: CustomSettingsText.logOutText),
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Text(
                                  CustomSettingsText.loggedInAsText,
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                              )
                            ],
                          )));
                })));
  }
}

class CustomLogOutCard extends StatelessWidget {
  const CustomLogOutCard({
    Key? key,
    required this.redText,
  }) : super(key: key);
  final String redText;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: SizedBox(
          width: 400,
          height: 50,
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, welcomeRoute);
            },
            child: Text(redText,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 17, color: Colors.red)),
          )),
    );
  }
}