import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:testovoe/features/login/data/models/user_model.dart';
import 'package:testovoe/features/login/data/repositories/some_auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authenticationRepository) : super(const AuthInitialState()) {
    on<AuthStatusChangedEvent>(_onAuthenticationStatusChanged);

    _userDataSubscription = _authenticationRepository.userDataStream.listen(
      (UserModel? response) {
        add(AuthStatusChangedEvent(response));
      },
    );
  }

  final ISomeAuthRepository _authenticationRepository;
  late final StreamSubscription<UserModel?> _userDataSubscription;

  Future<void> _onAuthenticationStatusChanged(
    AuthStatusChangedEvent event,
    Emitter<AuthState?> emit,
  ) async {
    if (event.userModel == null) {
      return emit(const AuthUnauthenticatedState());
    } else {
      return emit(const AuthAuthenticatedState());
    }
  }

  @override
  Future<void> close() {
    _userDataSubscription.cancel();
    return super.close();
  }
}
