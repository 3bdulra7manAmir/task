import 'package:bloc/bloc.dart';
import '../../../../core/utils/app_logger.dart';
import '../../../../core/utils/color_generator.dart';
import 'color_state.dart';


class ColorCubit extends Cubit<ColorState> {

  ColorCubit(this._generator) : super(const ColorInitial());
  final ColorGenerator _generator;

  Future changeColor() async {
    try {
      emit(const ColorLoading());
      await Future.delayed(const Duration(milliseconds: 200));
      final newColor = _generator.generate();
      emit(ColorChanged(newColor));
    } 
    catch (error, stack) {
      AppLogger.error('Failed to generate color', error: error, stackTrace: stack);
      emit(const ColorFailure('Failed to generate color'));
    }
  }
}


