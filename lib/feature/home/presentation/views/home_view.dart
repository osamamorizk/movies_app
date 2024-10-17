import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/feature/bottom_bar/presentation/manger/theme/theme_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Hi, Osama',
                style: Theme.of(context).textTheme.titleLarge),
            actions: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  Icons.notifications_on_outlined,
                  color: Color(0xffE82626),
                  size: 26,
                ),
              )
            ],
          ),
          body: Column(
            children: [],
          ),
        );
      },
    );
  }
}
