import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testovoe/features/login/data/models/user_model.dart';
import 'package:testovoe/features/login/data/repositories/some_auth_repository.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._someAuthRepository) : super(const LoginState()) {
    on<_EnterNubmer>(_onEnterNumber);
    on<_SendNubmer>(_onSendNumber);
    on<_EnterCode>(_onEnterCode);
    on<_SendCode>(_onSendCode);
  }
  final ISomeAuthRepository _someAuthRepository;

  FutureOr<void> _onEnterNumber(event, emit) {
    emit(state.copyWith(
      pageState: PageState.initial,
      phoneNumber: event.phoneNumber,
    ));
  }

  FutureOr<void> _onSendNumber(event, emit) async {
    emit(state.copyWith(pageState: PageState.loading));

    try {
      // можно предварительно поставитьо валидцию
      await _someAuthRepository.sendUserNumber(phoneNumber: state.phoneNumber);

      emit(state.copyWith(pageState: PageState.userPhoneSended));
    } catch (e) {
      emit(state.copyWith(pageState: PageState.initial));

      // тут обработка ошибок
      // я бы сделал в стейте поле для ошибки
      // и при возникновении эмиттил в стейт. Дальше в blocConsumber в listen кидал бы
    }
  }

  FutureOr<void> _onEnterCode(event, emit) {
    emit(state.copyWith(
      pageState: PageState.initial,
      passcode: event.passcode,
    ));
  }

  FutureOr<void> _onSendCode(event, emit) async {
    emit(state.copyWith(pageState: PageState.loading));
    try {
      // можно предварительно поставитьо валидцию
      if (state.passcode != '12345') {
        throw Exception('Неправильный код');
      }

      final result = await _someAuthRepository.sendPasscode(
        passCode: state.passcode,
      );

      if (result == 200) {
        _someAuthRepository.saveUserData(UserModel(phone: state.phoneNumber));
      }

      emit(state.copyWith(pageState: PageState.codeApplied));
    } catch (e) {
      emit(state.copyWith(error: e.toString(), pageState: PageState.initial));

      // тут обработка ошибок
      // я бы сделал в стейте поле для ошибки
      // и при возникновении эмиттил в стейт. Дальше в blocConsumber в listen кидал бы
    }
  }
}
