import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_logger.dart';
import '../../../../core/utils/color_generator.dart';
import '../controller/color_cubit.dart';
import '../controller/color_state.dart';
import '../widgets/hello_text.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColorCubit(ColorGenerator()),
      child: BlocBuilder<ColorCubit, ColorState>(
        builder: (context, state) {
          final backgroundColor = state is ColorChanged
            ? state.color : Colors.white;
          
          return Scaffold(
            body: GestureDetector(
              onTap: () {
                AppLogger.info('Color Change...');
                context.read<ColorCubit>().changeColor();
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                color: backgroundColor,
                alignment: Alignment.center,
                child: const HelloText(),
              ),
            ),
          );
        },
      ),
    );
  }
}
