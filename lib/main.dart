import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nexo/core/di/injection.dart';
import 'package:nexo/core/theme/theme_notifier.dart';
import 'package:nexo/presentation/bloc/links/link_bloc.dart';
import 'package:nexo/presentation/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: const MyApp(),
    ),
  );
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, theme, child) {
        return BlocProvider(
          create: (context) => getIt<LinkBloc>(),
          child: MaterialApp.router(
            title: 'Nexo',
            theme: theme.getTheme,
            routerConfig: _router,
          ),
        );
      },
    );
  }
}
