import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies/core/helpers/cashe_helper.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ChangeTheme(isDark: false));
  bool isDark = false;
  void loadTheme() async {
    bool? casheDark = await CasheHelper.getData(key: 'dark');
    if (casheDark != null) {
      isDark = casheDark;
      emit(ChangeTheme(isDark: isDark));
    }
  }

  void changeTheme() async {
    isDark = !isDark;
    await CasheHelper.saveData(key: 'dark', value: isDark);
    emit(ChangeTheme(isDark: isDark));
  }
}
