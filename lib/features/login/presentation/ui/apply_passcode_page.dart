import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pinput/pinput.dart';
import 'package:testovoe/features/login/presentation/state/login_bloc/login_bloc.dart';
import 'package:testovoe/features/login/presentation/ui/widgets/_widgets.dart';
import 'package:testovoe/shared/router/main_navigator.dart';

class ApplyPasscode extends HookWidget {
  const ApplyPasscode({super.key});

  @override
  Widget build(BuildContext context) {
    final focus = useFocusNode()..requestFocus();
    final pinThm = PinTheme(
      textStyle: const TextStyle(fontSize: 28),
      width: MediaQuery.sizeOf(context).width / 5,
      height: 42,
      decoration: const BoxDecoration(
        color: Color(0xFFF6F6F6),
        border: BorderDirectional(
          bottom: BorderSide(width: 2, color: Colors.grey),
        ),
      ),
    );

    return Column(
      children: [
        const Text(
          "Подтверждение",
          style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 25),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.2,
          ),
          child: Text(
            "Введите код, который мы отправили в SMS на ${context.read<LoginBloc>().state.phoneNumber}",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(height: 40),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.2,
          ),
          child: Material(
            // У этой библиотеки так же есть sms-autofill
            child: BlocConsumer<LoginBloc, LoginState>(
              listenWhen: (_, curr) => curr.pageState == PageState.codeApplied,
              listener: (context, state) {
                Navigator.of(context).pushReplacement(CupertinoPageRoute(
                  builder: (context) => const MainNavigator(),
                ));
              },
              builder: (context, state) => Pinput(
                validator: (_) => state.error,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                length: 5,
                focusNode: focus,
                onChanged: (value) {
                  context.read<LoginBloc>().add(LoginEvent.enterCode(value));
                  if (value.length == 5) {
                    focus.unfocus();
                    context.read<LoginBloc>().add(const LoginEvent.sendCode());
                  }
                },
                animationDuration: Duration.zero,
                defaultPinTheme: pinThm,
                focusedPinTheme: pinThm.copyDecorationWith(
                  border: const BorderDirectional(
                    bottom: BorderSide(width: 2, color: Colors.amber),
                  ),
                ),
                errorPinTheme: pinThm.copyDecorationWith(
                  border: const BorderDirectional(
                    bottom: BorderSide(width: 2, color: Colors.red),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 40),
        OtpTimer(
          onResend: () {
            context.read<LoginBloc>().add(const LoginEvent.sendNubmer());
          },
        )
      ],
    );
  }
}
