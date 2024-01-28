import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:testovoe/core/_core.dart';
import 'package:testovoe/features/home/presentation/ui/home_page.dart';
import 'package:testovoe/features/login/data/repositories/some_auth_repository.dart';
import 'package:testovoe/features/login/presentation/state/auth_bloc/auth_bloc.dart';
import 'package:testovoe/features/login/presentation/ui/auth_page.dart';
import 'package:testovoe/features/profile/presentation/ui/pages/change_user_name_page.dart';
import 'package:testovoe/features/profile/presentation/ui/pages/profile_page.dart';
import 'package:testovoe/shared/router/main_navigator.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(GetIt.I<ISomeAuthRepository>()),
      child: const MyAppView(),
    );
  }
}

class MyAppView extends StatelessWidget {
  const MyAppView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeDatas.light,
      supportedLocales: const [Locale('ru')],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      initialRoute: '/',
      routes: {
        '/': (context) => const MainNavigator(),
        '/home': (_) => const HomePage(),
        '/profile': (_) => const ProfilePage(),
        '/auth': (_) => const AuthPage(),
        '/change_user_data': (_) => const ChangeUserNamePage(),
      },
    );
  }
}
