import 'package:flutter/material.dart';

import 'package:weather_app/modules/home/presentation/views/home_screen.dart';
import 'package:weather_app/modules/shared/base/base_screen.dart';


class HomePage extends BaseScreen {
  HomePage({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return HomeScreenView();
  }
}
