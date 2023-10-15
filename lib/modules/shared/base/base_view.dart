import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/utils/error_handling/error_handling.dart';
import 'package:weather_app/modules/shared/base/base_state.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';
import 'package:weather_app/modules/shared/widgets/loading.dart';

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

        if (state is Initial) {
          return initial(context, bloc);
        } else if (state is Success) {
          return success(context, bloc, state.data);
        } else {
          return const LoadingWidget();
        }
      },
    );
  }

  Widget initial(
    BuildContext context,
    B bloc,
  );

  Widget success(
    BuildContext context,
    B bloc,
    T data,
  );

  void error(
    BuildContext context,
    FailureEntity entity,
  );
}
