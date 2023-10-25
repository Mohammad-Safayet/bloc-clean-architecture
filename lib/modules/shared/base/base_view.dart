/// Author: Safayet Latif
/// Date: October 25, 2023
/// Description: This abstract class, `BaseView`, defines the structure for creating views that interact with BLoCs (Business Logic Components) and handle various states, including initial, success, and error states. It provides a consistent structure for building widget-based views.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/core/utils/error_handling/error_handling.dart';
import 'package:weather_app/modules/shared/base/base_state.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';
import 'package:weather_app/modules/shared/widgets/loading.dart';

/// An abstract class representing a base view in the Weather App.
abstract class BaseView<B extends StateStreamable<BaseState>, T extends Object>
    extends StatelessWidget with BaseWidgetMixin {
  BaseView({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return BlocConsumer<B, BaseState>(
      listener: (context, state) {
        if (state is Error) {
          error(context, state.error);
        }
      },
      builder: (context, state) {
        final bloc = context.read<B>();
        logger.d(state);

        if (state is Initial) {
          return initial(context, bloc);
        } else if (state is Success) {
          return success(context, bloc, state.data);
        } else {
          return const Padding(
            padding: EdgeInsets.all(
              AppValues.paddingXLarge,
            ),
            child: LoadingWidget(),
          );
        }
      },
    );
  }

  /// Returns the initial state of the view.
  Widget initial(
      BuildContext context,
      B bloc,
      );

  /// Returns the view when the state is a success.
  Widget success(
      BuildContext context,
      B bloc,
      T data,
      );

  /// Handles errors and provides a way to display error messages.
  ///
  /// - [context]: The `BuildContext` for the view.
  /// - [entity]: The `FailureEntity` representing the error.
  void error(
      BuildContext context,
      FailureEntity entity,
      );
}
