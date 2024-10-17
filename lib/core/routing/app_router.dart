import 'package:go_router/go_router.dart';
import 'package:movies/feature/bottom_bar/presentation/views/bottom_bar.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => BottomBar(),
      ),
    ],
  );
}
