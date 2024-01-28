import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testovoe/core/constants.dart';
import 'package:testovoe/features/login/presentation/state/login_bloc/login_bloc.dart';
import 'package:testovoe/shared/services/mask_phone_number.dart';

class EnterNubmerPage extends StatelessWidget {
  const EnterNubmerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Регистрация",
          style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 25),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.2,
          ),
          child: const Text(
            "Введите номер телефона для регистрации",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15),
          ),
        ),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kPageHorizontalPadding,
          ),
          child: Material(
            child: TextField(
              keyboardType: TextInputType.phone,
              cursorColor: Colors.grey,
              cursorWidth: 1.5,
              inputFormatters: [maskPhoneNumber],
              decoration: const InputDecoration(
                hintText: '+7',
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              onChanged: (value) {
                context.read<LoginBloc>().add(LoginEvent.enterNubmer(value));
              },
            ),
          ),
        ),
        const Spacer(),
        BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return CupertinoButton(
              color: Colors.amber,
              onPressed: (state.phoneNumber?.isEmpty ?? true)
                  ? null
                  : () {
                      context.read<LoginBloc>().add(const LoginEvent.sendNubmer());
                    },
              child: state.pageState == PageState.loading
                  ? const CupertinoActivityIndicator()
                  : const Text("Отправить смс-код"),
            );
          },
        ),
        const SizedBox(height: 8),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.2,
          ),
          child: Text.rich(
            TextSpan(
              text: 'Нажимая на данную кнопку, вы даете согласие на обработку ',
              children: [
                TextSpan(
                  style: const TextStyle(color: Colors.amber),
                  text: 'персональных данных',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      // await launchUrl(Uri.parse(link));
                    },
                ),
              ],
            ),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
