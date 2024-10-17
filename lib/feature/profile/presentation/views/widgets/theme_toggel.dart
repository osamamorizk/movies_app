import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/feature/bottom_bar/presentation/manger/theme/theme_cubit.dart';

class ThemeToggel extends StatelessWidget {
  const ThemeToggel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return SizedBox(
          width: 130,
          child: Row(
            children: [
              Icon(
                Icons.dark_mode,
                size: 30,
                color: state.isDark ? Colors.white : Colors.black,
              ),
              Switch(
                activeColor: const Color(0xffE82626),
                activeTrackColor: Colors.grey[300],
                value: !state.isDark,
                onChanged: (value) {
                  context.read<ThemeCubit>().changeTheme();
                },
              ),
              Icon(
                color: state.isDark ? Colors.white : Colors.black,
                Icons.light_mode,
                size: 30,
              ),
            ],
          ),
        );
      },
    );
  }
}
