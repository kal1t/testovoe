// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel? userModel) userDataSubscription,
    required TResult Function(String name) setUserName,
    required TResult Function(String surname) setUserSurname,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel? userModel)? userDataSubscription,
    TResult? Function(String name)? setUserName,
    TResult? Function(String surname)? setUserSurname,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel? userModel)? userDataSubscription,
    TResult Function(String name)? setUserName,
    TResult Function(String surname)? setUserSurname,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserDataSubscription value) userDataSubscription,
    required TResult Function(_SetUserName value) setUserName,
    required TResult Function(_SetUserSurname value) setUserSurname,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserDataSubscription value)? userDataSubscription,
    TResult? Function(_SetUserName value)? setUserName,
    TResult? Function(_SetUserSurname value)? setUserSurname,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserDataSubscription value)? userDataSubscription,
    TResult Function(_SetUserName value)? setUserName,
    TResult Function(_SetUserSurname value)? setUserSurname,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataEventCopyWith<$Res> {
  factory $UserDataEventCopyWith(
          UserDataEvent value, $Res Function(UserDataEvent) then) =
      _$UserDataEventCopyWithImpl<$Res, UserDataEvent>;
}

/// @nodoc
class _$UserDataEventCopyWithImpl<$Res, $Val extends UserDataEvent>
    implements $UserDataEventCopyWith<$Res> {
  _$UserDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserDataSubscriptionImplCopyWith<$Res> {
  factory _$$UserDataSubscriptionImplCopyWith(_$UserDataSubscriptionImpl value,
          $Res Function(_$UserDataSubscriptionImpl) then) =
      __$$UserDataSubscriptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel? userModel});

  $UserModelCopyWith<$Res>? get userModel;
}

/// @nodoc
class __$$UserDataSubscriptionImplCopyWithImpl<$Res>
    extends _$UserDataEventCopyWithImpl<$Res, _$UserDataSubscriptionImpl>
    implements _$$UserDataSubscriptionImplCopyWith<$Res> {
  __$$UserDataSubscriptionImplCopyWithImpl(_$UserDataSubscriptionImpl _value,
      $Res Function(_$UserDataSubscriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = freezed,
  }) {
    return _then(_$UserDataSubscriptionImpl(
      freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get userModel {
    if (_value.userModel == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.userModel!, (value) {
      return _then(_value.copyWith(userModel: value));
    });
  }
}

/// @nodoc

class _$UserDataSubscriptionImpl implements _UserDataSubscription {
  const _$UserDataSubscriptionImpl(this.userModel);

  @override
  final UserModel? userModel;

  @override
  String toString() {
    return 'UserDataEvent.userDataSubscription(userModel: $userModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataSubscriptionImpl &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataSubscriptionImplCopyWith<_$UserDataSubscriptionImpl>
      get copyWith =>
          __$$UserDataSubscriptionImplCopyWithImpl<_$UserDataSubscriptionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel? userModel) userDataSubscription,
    required TResult Function(String name) setUserName,
    required TResult Function(String surname) setUserSurname,
  }) {
    return userDataSubscription(userModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel? userModel)? userDataSubscription,
    TResult? Function(String name)? setUserName,
    TResult? Function(String surname)? setUserSurname,
  }) {
    return userDataSubscription?.call(userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel? userModel)? userDataSubscription,
    TResult Function(String name)? setUserName,
    TResult Function(String surname)? setUserSurname,
    required TResult orElse(),
  }) {
    if (userDataSubscription != null) {
      return userDataSubscription(userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserDataSubscription value) userDataSubscription,
    required TResult Function(_SetUserName value) setUserName,
    required TResult Function(_SetUserSurname value) setUserSurname,
  }) {
    return userDataSubscription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserDataSubscription value)? userDataSubscription,
    TResult? Function(_SetUserName value)? setUserName,
    TResult? Function(_SetUserSurname value)? setUserSurname,
  }) {
    return userDataSubscription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserDataSubscription value)? userDataSubscription,
    TResult Function(_SetUserName value)? setUserName,
    TResult Function(_SetUserSurname value)? setUserSurname,
    required TResult orElse(),
  }) {
    if (userDataSubscription != null) {
      return userDataSubscription(this);
    }
    return orElse();
  }
}

abstract class _UserDataSubscription implements UserDataEvent {
  const factory _UserDataSubscription(final UserModel? userModel) =
      _$UserDataSubscriptionImpl;

  UserModel? get userModel;
  @JsonKey(ignore: true)
  _$$UserDataSubscriptionImplCopyWith<_$UserDataSubscriptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetUserNameImplCopyWith<$Res> {
  factory _$$SetUserNameImplCopyWith(
          _$SetUserNameImpl value, $Res Function(_$SetUserNameImpl) then) =
      __$$SetUserNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$SetUserNameImplCopyWithImpl<$Res>
    extends _$UserDataEventCopyWithImpl<$Res, _$SetUserNameImpl>
    implements _$$SetUserNameImplCopyWith<$Res> {
  __$$SetUserNameImplCopyWithImpl(
      _$SetUserNameImpl _value, $Res Function(_$SetUserNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$SetUserNameImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetUserNameImpl implements _SetUserName {
  const _$SetUserNameImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'UserDataEvent.setUserName(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetUserNameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetUserNameImplCopyWith<_$SetUserNameImpl> get copyWith =>
      __$$SetUserNameImplCopyWithImpl<_$SetUserNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel? userModel) userDataSubscription,
    required TResult Function(String name) setUserName,
    required TResult Function(String surname) setUserSurname,
  }) {
    return setUserName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel? userModel)? userDataSubscription,
    TResult? Function(String name)? setUserName,
    TResult? Function(String surname)? setUserSurname,
  }) {
    return setUserName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel? userModel)? userDataSubscription,
    TResult Function(String name)? setUserName,
    TResult Function(String surname)? setUserSurname,
    required TResult orElse(),
  }) {
    if (setUserName != null) {
      return setUserName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserDataSubscription value) userDataSubscription,
    required TResult Function(_SetUserName value) setUserName,
    required TResult Function(_SetUserSurname value) setUserSurname,
  }) {
    return setUserName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserDataSubscription value)? userDataSubscription,
    TResult? Function(_SetUserName value)? setUserName,
    TResult? Function(_SetUserSurname value)? setUserSurname,
  }) {
    return setUserName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserDataSubscription value)? userDataSubscription,
    TResult Function(_SetUserName value)? setUserName,
    TResult Function(_SetUserSurname value)? setUserSurname,
    required TResult orElse(),
  }) {
    if (setUserName != null) {
      return setUserName(this);
    }
    return orElse();
  }
}

abstract class _SetUserName implements UserDataEvent {
  const factory _SetUserName(final String name) = _$SetUserNameImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$SetUserNameImplCopyWith<_$SetUserNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetUserSurnameImplCopyWith<$Res> {
  factory _$$SetUserSurnameImplCopyWith(_$SetUserSurnameImpl value,
          $Res Function(_$SetUserSurnameImpl) then) =
      __$$SetUserSurnameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String surname});
}

/// @nodoc
class __$$SetUserSurnameImplCopyWithImpl<$Res>
    extends _$UserDataEventCopyWithImpl<$Res, _$SetUserSurnameImpl>
    implements _$$SetUserSurnameImplCopyWith<$Res> {
  __$$SetUserSurnameImplCopyWithImpl(
      _$SetUserSurnameImpl _value, $Res Function(_$SetUserSurnameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surname = null,
  }) {
    return _then(_$SetUserSurnameImpl(
      null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetUserSurnameImpl implements _SetUserSurname {
  const _$SetUserSurnameImpl(this.surname);

  @override
  final String surname;

  @override
  String toString() {
    return 'UserDataEvent.setUserSurname(surname: $surname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetUserSurnameImpl &&
            (identical(other.surname, surname) || other.surname == surname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, surname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetUserSurnameImplCopyWith<_$SetUserSurnameImpl> get copyWith =>
      __$$SetUserSurnameImplCopyWithImpl<_$SetUserSurnameImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel? userModel) userDataSubscription,
    required TResult Function(String name) setUserName,
    required TResult Function(String surname) setUserSurname,
  }) {
    return setUserSurname(surname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel? userModel)? userDataSubscription,
    TResult? Function(String name)? setUserName,
    TResult? Function(String surname)? setUserSurname,
  }) {
    return setUserSurname?.call(surname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel? userModel)? userDataSubscription,
    TResult Function(String name)? setUserName,
    TResult Function(String surname)? setUserSurname,
    required TResult orElse(),
  }) {
    if (setUserSurname != null) {
      return setUserSurname(surname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserDataSubscription value) userDataSubscription,
    required TResult Function(_SetUserName value) setUserName,
    required TResult Function(_SetUserSurname value) setUserSurname,
  }) {
    return setUserSurname(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserDataSubscription value)? userDataSubscription,
    TResult? Function(_SetUserName value)? setUserName,
    TResult? Function(_SetUserSurname value)? setUserSurname,
  }) {
    return setUserSurname?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserDataSubscription value)? userDataSubscription,
    TResult Function(_SetUserName value)? setUserName,
    TResult Function(_SetUserSurname value)? setUserSurname,
    required TResult orElse(),
  }) {
    if (setUserSurname != null) {
      return setUserSurname(this);
    }
    return orElse();
  }
}

abstract class _SetUserSurname implements UserDataEvent {
  const factory _SetUserSurname(final String surname) = _$SetUserSurnameImpl;

  String get surname;
  @JsonKey(ignore: true)
  _$$SetUserSurnameImplCopyWith<_$SetUserSurnameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserDataState {
  UserModel? get userModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDataStateCopyWith<UserDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataStateCopyWith<$Res> {
  factory $UserDataStateCopyWith(
          UserDataState value, $Res Function(UserDataState) then) =
      _$UserDataStateCopyWithImpl<$Res, UserDataState>;
  @useResult
  $Res call({UserModel? userModel});

  $UserModelCopyWith<$Res>? get userModel;
}

/// @nodoc
class _$UserDataStateCopyWithImpl<$Res, $Val extends UserDataState>
    implements $UserDataStateCopyWith<$Res> {
  _$UserDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = freezed,
  }) {
    return _then(_value.copyWith(
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get userModel {
    if (_value.userModel == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.userModel!, (value) {
      return _then(_value.copyWith(userModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserDataStateImplCopyWith<$Res>
    implements $UserDataStateCopyWith<$Res> {
  factory _$$UserDataStateImplCopyWith(
          _$UserDataStateImpl value, $Res Function(_$UserDataStateImpl) then) =
      __$$UserDataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel? userModel});

  @override
  $UserModelCopyWith<$Res>? get userModel;
}

/// @nodoc
class __$$UserDataStateImplCopyWithImpl<$Res>
    extends _$UserDataStateCopyWithImpl<$Res, _$UserDataStateImpl>
    implements _$$UserDataStateImplCopyWith<$Res> {
  __$$UserDataStateImplCopyWithImpl(
      _$UserDataStateImpl _value, $Res Function(_$UserDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = freezed,
  }) {
    return _then(_$UserDataStateImpl(
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$UserDataStateImpl implements _UserDataState {
  const _$UserDataStateImpl({this.userModel});

  @override
  final UserModel? userModel;

  @override
  String toString() {
    return 'UserDataState(userModel: $userModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataStateImpl &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataStateImplCopyWith<_$UserDataStateImpl> get copyWith =>
      __$$UserDataStateImplCopyWithImpl<_$UserDataStateImpl>(this, _$identity);
}

abstract class _UserDataState implements UserDataState {
  const factory _UserDataState({final UserModel? userModel}) =
      _$UserDataStateImpl;

  @override
  UserModel? get userModel;
  @override
  @JsonKey(ignore: true)
  _$$UserDataStateImplCopyWith<_$UserDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
