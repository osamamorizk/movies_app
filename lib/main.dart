import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/core/helpers/cashe_helper.dart';
import 'package:movies/core/routing/app_router.dart';
import 'package:movies/core/themes/app_themes.dart';
import 'package:movies/feature/bottom_bar/presentation/manger/theme/theme_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CasheHelper.casheIntialization();
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit()..loadTheme(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouter.router,
            themeMode: state.isDark ? ThemeMode.dark : ThemeMode.light,
            darkTheme: CustomAppThemes.darkTheme,
            theme: CustomAppThemes.lightTheme,
          );
        },
      ),
    );
  }
}
