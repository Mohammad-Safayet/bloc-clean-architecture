import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:weather_app/core/config/config.dart';

abstract class BaseScreen extends StatelessWidget {
  BaseScreen({
    Key? key,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  final Logger logger = BuildConfig.instance.envConfig.logger;

  @override
  Widget build(BuildContext context) {
    return _annotatedRegion(
      context,
    );
  }

  PreferredSizeWidget? appBar(BuildContext context);

  Widget body(BuildContext context);

  Widget _annotatedRegion(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        //Status bar color for android
        statusBarColor: statusBarColor(context),
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Material(
        color: Colors.transparent,
        child: _pageScaffold(context),
      ),
    );
  }

  Widget _pageScaffold(BuildContext context) {
    return Scaffold(
      backgroundColor: pageBackgroundColor(context),
      key: globalKey,
      appBar: appBar(context),
      floatingActionButton: floatingActionButton(context),
      body: pageContent(context),
      bottomNavigationBar: bottomNavigationBar(),
      drawer: drawer(),
      bottomSheet: bottomSheet(),
    );
  }

  Widget pageContent(BuildContext context) {
    return SafeArea(
      child: body(context),
    );
  }

  Color pageBackgroundColor(BuildContext context) {
    return Theme.of(context).colorScheme.surfaceVariant;
  }

  Widget? floatingActionButton(BuildContext context) {
    return null;
  }

  Widget? bottomNavigationBar() {
    return null;
  }

  Widget? drawer() {
    return null;
  }

  Widget? bottomSheet() {
    return null;
  }

  Color statusBarColor(BuildContext context) {
    return Theme.of(context).colorScheme.onPrimary;
  }
}
