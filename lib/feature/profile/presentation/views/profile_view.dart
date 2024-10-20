import 'package:flutter/material.dart';
import 'package:movies/feature/profile/presentation/views/widgets/theme_toggel.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            leading: Text(
              'Dark Mode',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            trailing: const ThemeToggel(),
          ),
        ],
      ),
    );
  }
}
