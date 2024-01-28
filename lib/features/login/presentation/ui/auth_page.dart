import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';
import 'package:testovoe/features/login/data/repositories/some_auth_repository.dart';
import 'package:testovoe/features/login/presentation/state/login_bloc/login_bloc.dart';
import 'package:testovoe/features/login/presentation/ui/apply_passcode_page.dart';
import 'package:testovoe/features/login/presentation/ui/enter_number_page.dart';
import 'package:testovoe/features/login/presentation/ui/widgets/_widgets.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(GetIt.I<ISomeAuthRepository>()),
      child: const AuthView(),
    );
  }
}

class AuthView extends HookWidget {
  const AuthView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final state = useState(pageController.initialPage.toDouble());
    useEffect(() {
      pageController.addListener(() {
        state.value = pageController.page!;
      });
      return null;
    });

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        border: null,
        leading: IconButton(
          onPressed: Navigator.of(context).pop,
          icon: Image.asset('assets/icons/auth_back_icon.png'),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.5,
              child: AuthPageIndicatorWidget(
                currentIndex: state.value,
                pageCount: 3,
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              child: BlocListener<LoginBloc, LoginState>(
                listenWhen: (prev, curr) {
                  return curr.pageState == PageState.userPhoneSended;
                },
                listener: (context, state) {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 750),
                    curve: Curves.ease,
                  );
                },
                child: PageView(
                  controller: pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    EnterNubmerPage(),
                    ApplyPasscode(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
