part of 'theme_cubit.dart';

@immutable
sealed class ThemeState {
  final bool isDark;

  const ThemeState({required this.isDark});
}

final class ChangeTheme extends ThemeState {
  const ChangeTheme({required super.isDark});
}
