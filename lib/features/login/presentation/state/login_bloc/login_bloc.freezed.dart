// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) enterNubmer,
    required TResult Function() sendNubmer,
    required TResult Function(String? passcode) enterCode,
    required TResult Function() sendCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phoneNumber)? enterNubmer,
    TResult? Function()? sendNubmer,
    TResult? Function(String? passcode)? enterCode,
    TResult? Function()? sendCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? enterNubmer,
    TResult Function()? sendNubmer,
    TResult Function(String? passcode)? enterCode,
    TResult Function()? sendCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnterNubmer value) enterNubmer,
    required TResult Function(_SendNubmer value) sendNubmer,
    required TResult Function(_EnterCode value) enterCode,
    required TResult Function(_SendCode value) sendCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnterNubmer value)? enterNubmer,
    TResult? Function(_SendNubmer value)? sendNubmer,
    TResult? Function(_EnterCode value)? enterCode,
    TResult? Function(_SendCode value)? sendCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnterNubmer value)? enterNubmer,
    TResult Function(_SendNubmer value)? sendNubmer,
    TResult Function(_EnterCode value)? enterCode,
    TResult Function(_SendCode value)? sendCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EnterNubmerImplCopyWith<$Res> {
  factory _$$EnterNubmerImplCopyWith(
          _$EnterNubmerImpl value, $Res Function(_$EnterNubmerImpl) then) =
      __$$EnterNubmerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? phoneNumber});
}

/// @nodoc
class __$$EnterNubmerImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$EnterNubmerImpl>
    implements _$$EnterNubmerImplCopyWith<$Res> {
  __$$EnterNubmerImplCopyWithImpl(
      _$EnterNubmerImpl _value, $Res Function(_$EnterNubmerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_$EnterNubmerImpl(
      freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EnterNubmerImpl implements _EnterNubmer {
  const _$EnterNubmerImpl(this.phoneNumber);

  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'LoginEvent.enterNubmer(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnterNubmerImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnterNubmerImplCopyWith<_$EnterNubmerImpl> get copyWith =>
      __$$EnterNubmerImplCopyWithImpl<_$EnterNubmerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) enterNubmer,
    required TResult Function() sendNubmer,
    required TResult Function(String? passcode) enterCode,
    required TResult Function() sendCode,
  }) {
    return enterNubmer(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phoneNumber)? enterNubmer,
    TResult? Function()? sendNubmer,
    TResult? Function(String? passcode)? enterCode,
    TResult? Function()? sendCode,
  }) {
    return enterNubmer?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? enterNubmer,
    TResult Function()? sendNubmer,
    TResult Function(String? passcode)? enterCode,
    TResult Function()? sendCode,
    required TResult orElse(),
  }) {
    if (enterNubmer != null) {
      return enterNubmer(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnterNubmer value) enterNubmer,
    required TResult Function(_SendNubmer value) sendNubmer,
    required TResult Function(_EnterCode value) enterCode,
    required TResult Function(_SendCode value) sendCode,
  }) {
    return enterNubmer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnterNubmer value)? enterNubmer,
    TResult? Function(_SendNubmer value)? sendNubmer,
    TResult? Function(_EnterCode value)? enterCode,
    TResult? Function(_SendCode value)? sendCode,
  }) {
    return enterNubmer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnterNubmer value)? enterNubmer,
    TResult Function(_SendNubmer value)? sendNubmer,
    TResult Function(_EnterCode value)? enterCode,
    TResult Function(_SendCode value)? sendCode,
    required TResult orElse(),
  }) {
    if (enterNubmer != null) {
      return enterNubmer(this);
    }
    return orElse();
  }
}

abstract class _EnterNubmer implements LoginEvent {
  const factory _EnterNubmer(final String? phoneNumber) = _$EnterNubmerImpl;

  String? get phoneNumber;
  @JsonKey(ignore: true)
  _$$EnterNubmerImplCopyWith<_$EnterNubmerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendNubmerImplCopyWith<$Res> {
  factory _$$SendNubmerImplCopyWith(
          _$SendNubmerImpl value, $Res Function(_$SendNubmerImpl) then) =
      __$$SendNubmerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendNubmerImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$SendNubmerImpl>
    implements _$$SendNubmerImplCopyWith<$Res> {
  __$$SendNubmerImplCopyWithImpl(
      _$SendNubmerImpl _value, $Res Function(_$SendNubmerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendNubmerImpl implements _SendNubmer {
  const _$SendNubmerImpl();

  @override
  String toString() {
    return 'LoginEvent.sendNubmer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendNubmerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) enterNubmer,
    required TResult Function() sendNubmer,
    required TResult Function(String? passcode) enterCode,
    required TResult Function() sendCode,
  }) {
    return sendNubmer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phoneNumber)? enterNubmer,
    TResult? Function()? sendNubmer,
    TResult? Function(String? passcode)? enterCode,
    TResult? Function()? sendCode,
  }) {
    return sendNubmer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? enterNubmer,
    TResult Function()? sendNubmer,
    TResult Function(String? passcode)? enterCode,
    TResult Function()? sendCode,
    required TResult orElse(),
  }) {
    if (sendNubmer != null) {
      return sendNubmer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnterNubmer value) enterNubmer,
    required TResult Function(_SendNubmer value) sendNubmer,
    required TResult Function(_EnterCode value) enterCode,
    required TResult Function(_SendCode value) sendCode,
  }) {
    return sendNubmer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnterNubmer value)? enterNubmer,
    TResult? Function(_SendNubmer value)? sendNubmer,
    TResult? Function(_EnterCode value)? enterCode,
    TResult? Function(_SendCode value)? sendCode,
  }) {
    return sendNubmer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnterNubmer value)? enterNubmer,
    TResult Function(_SendNubmer value)? sendNubmer,
    TResult Function(_EnterCode value)? enterCode,
    TResult Function(_SendCode value)? sendCode,
    required TResult orElse(),
  }) {
    if (sendNubmer != null) {
      return sendNubmer(this);
    }
    return orElse();
  }
}

abstract class _SendNubmer implements LoginEvent {
  const factory _SendNubmer() = _$SendNubmerImpl;
}

/// @nodoc
abstract class _$$EnterCodeImplCopyWith<$Res> {
  factory _$$EnterCodeImplCopyWith(
          _$EnterCodeImpl value, $Res Function(_$EnterCodeImpl) then) =
      __$$EnterCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? passcode});
}

/// @nodoc
class __$$EnterCodeImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$EnterCodeImpl>
    implements _$$EnterCodeImplCopyWith<$Res> {
  __$$EnterCodeImplCopyWithImpl(
      _$EnterCodeImpl _value, $Res Function(_$EnterCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passcode = freezed,
  }) {
    return _then(_$EnterCodeImpl(
      freezed == passcode
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EnterCodeImpl implements _EnterCode {
  const _$EnterCodeImpl(this.passcode);

  @override
  final String? passcode;

  @override
  String toString() {
    return 'LoginEvent.enterCode(passcode: $passcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnterCodeImpl &&
            (identical(other.passcode, passcode) ||
                other.passcode == passcode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passcode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnterCodeImplCopyWith<_$EnterCodeImpl> get copyWith =>
      __$$EnterCodeImplCopyWithImpl<_$EnterCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) enterNubmer,
    required TResult Function() sendNubmer,
    required TResult Function(String? passcode) enterCode,
    required TResult Function() sendCode,
  }) {
    return enterCode(passcode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phoneNumber)? enterNubmer,
    TResult? Function()? sendNubmer,
    TResult? Function(String? passcode)? enterCode,
    TResult? Function()? sendCode,
  }) {
    return enterCode?.call(passcode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? enterNubmer,
    TResult Function()? sendNubmer,
    TResult Function(String? passcode)? enterCode,
    TResult Function()? sendCode,
    required TResult orElse(),
  }) {
    if (enterCode != null) {
      return enterCode(passcode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnterNubmer value) enterNubmer,
    required TResult Function(_SendNubmer value) sendNubmer,
    required TResult Function(_EnterCode value) enterCode,
    required TResult Function(_SendCode value) sendCode,
  }) {
    return enterCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnterNubmer value)? enterNubmer,
    TResult? Function(_SendNubmer value)? sendNubmer,
    TResult? Function(_EnterCode value)? enterCode,
    TResult? Function(_SendCode value)? sendCode,
  }) {
    return enterCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnterNubmer value)? enterNubmer,
    TResult Function(_SendNubmer value)? sendNubmer,
    TResult Function(_EnterCode value)? enterCode,
    TResult Function(_SendCode value)? sendCode,
    required TResult orElse(),
  }) {
    if (enterCode != null) {
      return enterCode(this);
    }
    return orElse();
  }
}

abstract class _EnterCode implements LoginEvent {
  const factory _EnterCode(final String? passcode) = _$EnterCodeImpl;

  String? get passcode;
  @JsonKey(ignore: true)
  _$$EnterCodeImplCopyWith<_$EnterCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendCodeImplCopyWith<$Res> {
  factory _$$SendCodeImplCopyWith(
          _$SendCodeImpl value, $Res Function(_$SendCodeImpl) then) =
      __$$SendCodeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendCodeImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$SendCodeImpl>
    implements _$$SendCodeImplCopyWith<$Res> {
  __$$SendCodeImplCopyWithImpl(
      _$SendCodeImpl _value, $Res Function(_$SendCodeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendCodeImpl implements _SendCode {
  const _$SendCodeImpl();

  @override
  String toString() {
    return 'LoginEvent.sendCode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendCodeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) enterNubmer,
    required TResult Function() sendNubmer,
    required TResult Function(String? passcode) enterCode,
    required TResult Function() sendCode,
  }) {
    return sendCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phoneNumber)? enterNubmer,
    TResult? Function()? sendNubmer,
    TResult? Function(String? passcode)? enterCode,
    TResult? Function()? sendCode,
  }) {
    return sendCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? enterNubmer,
    TResult Function()? sendNubmer,
    TResult Function(String? passcode)? enterCode,
    TResult Function()? sendCode,
    required TResult orElse(),
  }) {
    if (sendCode != null) {
      return sendCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnterNubmer value) enterNubmer,
    required TResult Function(_SendNubmer value) sendNubmer,
    required TResult Function(_EnterCode value) enterCode,
    required TResult Function(_SendCode value) sendCode,
  }) {
    return sendCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnterNubmer value)? enterNubmer,
    TResult? Function(_SendNubmer value)? sendNubmer,
    TResult? Function(_EnterCode value)? enterCode,
    TResult? Function(_SendCode value)? sendCode,
  }) {
    return sendCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnterNubmer value)? enterNubmer,
    TResult Function(_SendNubmer value)? sendNubmer,
    TResult Function(_EnterCode value)? enterCode,
    TResult Function(_SendCode value)? sendCode,
    required TResult orElse(),
  }) {
    if (sendCode != null) {
      return sendCode(this);
    }
    return orElse();
  }
}

abstract class _SendCode implements LoginEvent {
  const factory _SendCode() = _$SendCodeImpl;
}

/// @nodoc
mixin _$LoginState {
  PageState get pageState => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get passcode => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {PageState pageState,
      String? phoneNumber,
      String? passcode,
      String? error});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? phoneNumber = freezed,
    Object? passcode = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      passcode: freezed == passcode
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageState pageState,
      String? phoneNumber,
      String? passcode,
      String? error});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? phoneNumber = freezed,
    Object? passcode = freezed,
    Object? error = freezed,
  }) {
    return _then(_$LoginStateImpl(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      passcode: freezed == passcode
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {this.pageState = PageState.initial,
      this.phoneNumber,
      this.passcode,
      this.error});

  @override
  @JsonKey()
  final PageState pageState;
  @override
  final String? phoneNumber;
  @override
  final String? passcode;
  @override
  final String? error;

  @override
  String toString() {
    return 'LoginState(pageState: $pageState, phoneNumber: $phoneNumber, passcode: $passcode, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.passcode, passcode) ||
                other.passcode == passcode) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, pageState, phoneNumber, passcode, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final PageState pageState,
      final String? phoneNumber,
      final String? passcode,
      final String? error}) = _$LoginStateImpl;

  @override
  PageState get pageState;
  @override
  String? get phoneNumber;
  @override
  String? get passcode;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
