import 'package:flutter/material.dart';
import 'package:patreon_app/widgets/customAppBar.dart';
import 'package:patreon_app/widgets/customBottomAppbar.dart';

import '../widgets/loadingWidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: LoadingWidget(),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
