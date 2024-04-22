// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function() cacheFailure,
    required TResult Function() lostConnectionFailure,
    required TResult Function() timeoutConnectionFailure,
    required TResult Function() dataParsingFailure,
    required TResult Function(String message) unAuthorizeFailure,
    required TResult Function(String message) unprocessableEntityFailure,
    required TResult Function(String message, int code) badRequestFailure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) forbiddenFailure,
    required TResult Function(String? message) otherFailure,
    required TResult Function(String message) dioFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? lostConnectionFailure,
    TResult? Function()? timeoutConnectionFailure,
    TResult? Function()? dataParsingFailure,
    TResult? Function(String message)? unAuthorizeFailure,
    TResult? Function(String message)? unprocessableEntityFailure,
    TResult? Function(String message, int code)? badRequestFailure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? forbiddenFailure,
    TResult? Function(String? message)? otherFailure,
    TResult? Function(String message)? dioFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function()? cacheFailure,
    TResult Function()? lostConnectionFailure,
    TResult Function()? timeoutConnectionFailure,
    TResult Function()? dataParsingFailure,
    TResult Function(String message)? unAuthorizeFailure,
    TResult Function(String message)? unprocessableEntityFailure,
    TResult Function(String message, int code)? badRequestFailure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? forbiddenFailure,
    TResult Function(String? message)? otherFailure,
    TResult Function(String message)? dioFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_LostConnectionFailure value)
        lostConnectionFailure,
    required TResult Function(_TimeoutConnectionFailure value)
        timeoutConnectionFailure,
    required TResult Function(_DataParsingFailure value) dataParsingFailure,
    required TResult Function(_UnAuthorizeFailure value) unAuthorizeFailure,
    required TResult Function(_UnprocessableEntityFailure value)
        unprocessableEntityFailure,
    required TResult Function(_BadRequestFailure value) badRequestFailure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ForbiddenFailure value) forbiddenFailure,
    required TResult Function(_OtherFailure value) otherFailure,
    required TResult Function(_DioFailure value) dioFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_CacheFailure value)? cacheFailure,
    TResult? Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult? Function(_TimeoutConnectionFailure value)?
        timeoutConnectionFailure,
    TResult? Function(_DataParsingFailure value)? dataParsingFailure,
    TResult? Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult? Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult? Function(_BadRequestFailure value)? badRequestFailure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult? Function(_OtherFailure value)? otherFailure,
    TResult? Function(_DioFailure value)? dioFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult Function(_TimeoutConnectionFailure value)? timeoutConnectionFailure,
    TResult Function(_DataParsingFailure value)? dataParsingFailure,
    TResult Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult Function(_BadRequestFailure value)? badRequestFailure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult Function(_OtherFailure value)? otherFailure,
    TResult Function(_DioFailure value)? dioFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ServerFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl implements _ServerFailure {
  const _$ServerFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.serverFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function() cacheFailure,
    required TResult Function() lostConnectionFailure,
    required TResult Function() timeoutConnectionFailure,
    required TResult Function() dataParsingFailure,
    required TResult Function(String message) unAuthorizeFailure,
    required TResult Function(String message) unprocessableEntityFailure,
    required TResult Function(String message, int code) badRequestFailure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) forbiddenFailure,
    required TResult Function(String? message) otherFailure,
    required TResult Function(String message) dioFailure,
  }) {
    return serverFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? lostConnectionFailure,
    TResult? Function()? timeoutConnectionFailure,
    TResult? Function()? dataParsingFailure,
    TResult? Function(String message)? unAuthorizeFailure,
    TResult? Function(String message)? unprocessableEntityFailure,
    TResult? Function(String message, int code)? badRequestFailure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? forbiddenFailure,
    TResult? Function(String? message)? otherFailure,
    TResult? Function(String message)? dioFailure,
  }) {
    return serverFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function()? cacheFailure,
    TResult Function()? lostConnectionFailure,
    TResult Function()? timeoutConnectionFailure,
    TResult Function()? dataParsingFailure,
    TResult Function(String message)? unAuthorizeFailure,
    TResult Function(String message)? unprocessableEntityFailure,
    TResult Function(String message, int code)? badRequestFailure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? forbiddenFailure,
    TResult Function(String? message)? otherFailure,
    TResult Function(String message)? dioFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_LostConnectionFailure value)
        lostConnectionFailure,
    required TResult Function(_TimeoutConnectionFailure value)
        timeoutConnectionFailure,
    required TResult Function(_DataParsingFailure value) dataParsingFailure,
    required TResult Function(_UnAuthorizeFailure value) unAuthorizeFailure,
    required TResult Function(_UnprocessableEntityFailure value)
        unprocessableEntityFailure,
    required TResult Function(_BadRequestFailure value) badRequestFailure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ForbiddenFailure value) forbiddenFailure,
    required TResult Function(_OtherFailure value) otherFailure,
    required TResult Function(_DioFailure value) dioFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_CacheFailure value)? cacheFailure,
    TResult? Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult? Function(_TimeoutConnectionFailure value)?
        timeoutConnectionFailure,
    TResult? Function(_DataParsingFailure value)? dataParsingFailure,
    TResult? Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult? Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult? Function(_BadRequestFailure value)? badRequestFailure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult? Function(_OtherFailure value)? otherFailure,
    TResult? Function(_DioFailure value)? dioFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult Function(_TimeoutConnectionFailure value)? timeoutConnectionFailure,
    TResult Function(_DataParsingFailure value)? dataParsingFailure,
    TResult Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult Function(_BadRequestFailure value)? badRequestFailure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult Function(_OtherFailure value)? otherFailure,
    TResult Function(_DioFailure value)? dioFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements Failure {
  const factory _ServerFailure(final String message) = _$ServerFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheFailureImplCopyWith<$Res> {
  factory _$$CacheFailureImplCopyWith(
          _$CacheFailureImpl value, $Res Function(_$CacheFailureImpl) then) =
      __$$CacheFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CacheFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CacheFailureImpl>
    implements _$$CacheFailureImplCopyWith<$Res> {
  __$$CacheFailureImplCopyWithImpl(
      _$CacheFailureImpl _value, $Res Function(_$CacheFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CacheFailureImpl implements _CacheFailure {
  const _$CacheFailureImpl();

  @override
  String toString() {
    return 'Failure.cacheFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CacheFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function() cacheFailure,
    required TResult Function() lostConnectionFailure,
    required TResult Function() timeoutConnectionFailure,
    required TResult Function() dataParsingFailure,
    required TResult Function(String message) unAuthorizeFailure,
    required TResult Function(String message) unprocessableEntityFailure,
    required TResult Function(String message, int code) badRequestFailure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) forbiddenFailure,
    required TResult Function(String? message) otherFailure,
    required TResult Function(String message) dioFailure,
  }) {
    return cacheFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? lostConnectionFailure,
    TResult? Function()? timeoutConnectionFailure,
    TResult? Function()? dataParsingFailure,
    TResult? Function(String message)? unAuthorizeFailure,
    TResult? Function(String message)? unprocessableEntityFailure,
    TResult? Function(String message, int code)? badRequestFailure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? forbiddenFailure,
    TResult? Function(String? message)? otherFailure,
    TResult? Function(String message)? dioFailure,
  }) {
    return cacheFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function()? cacheFailure,
    TResult Function()? lostConnectionFailure,
    TResult Function()? timeoutConnectionFailure,
    TResult Function()? dataParsingFailure,
    TResult Function(String message)? unAuthorizeFailure,
    TResult Function(String message)? unprocessableEntityFailure,
    TResult Function(String message, int code)? badRequestFailure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? forbiddenFailure,
    TResult Function(String? message)? otherFailure,
    TResult Function(String message)? dioFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_LostConnectionFailure value)
        lostConnectionFailure,
    required TResult Function(_TimeoutConnectionFailure value)
        timeoutConnectionFailure,
    required TResult Function(_DataParsingFailure value) dataParsingFailure,
    required TResult Function(_UnAuthorizeFailure value) unAuthorizeFailure,
    required TResult Function(_UnprocessableEntityFailure value)
        unprocessableEntityFailure,
    required TResult Function(_BadRequestFailure value) badRequestFailure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ForbiddenFailure value) forbiddenFailure,
    required TResult Function(_OtherFailure value) otherFailure,
    required TResult Function(_DioFailure value) dioFailure,
  }) {
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_CacheFailure value)? cacheFailure,
    TResult? Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult? Function(_TimeoutConnectionFailure value)?
        timeoutConnectionFailure,
    TResult? Function(_DataParsingFailure value)? dataParsingFailure,
    TResult? Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult? Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult? Function(_BadRequestFailure value)? badRequestFailure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult? Function(_OtherFailure value)? otherFailure,
    TResult? Function(_DioFailure value)? dioFailure,
  }) {
    return cacheFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult Function(_TimeoutConnectionFailure value)? timeoutConnectionFailure,
    TResult Function(_DataParsingFailure value)? dataParsingFailure,
    TResult Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult Function(_BadRequestFailure value)? badRequestFailure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult Function(_OtherFailure value)? otherFailure,
    TResult Function(_DioFailure value)? dioFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class _CacheFailure implements Failure {
  const factory _CacheFailure() = _$CacheFailureImpl;
}

/// @nodoc
abstract class _$$LostConnectionFailureImplCopyWith<$Res> {
  factory _$$LostConnectionFailureImplCopyWith(
          _$LostConnectionFailureImpl value,
          $Res Function(_$LostConnectionFailureImpl) then) =
      __$$LostConnectionFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LostConnectionFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$LostConnectionFailureImpl>
    implements _$$LostConnectionFailureImplCopyWith<$Res> {
  __$$LostConnectionFailureImplCopyWithImpl(_$LostConnectionFailureImpl _value,
      $Res Function(_$LostConnectionFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LostConnectionFailureImpl implements _LostConnectionFailure {
  const _$LostConnectionFailureImpl();

  @override
  String toString() {
    return 'Failure.lostConnectionFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LostConnectionFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function() cacheFailure,
    required TResult Function() lostConnectionFailure,
    required TResult Function() timeoutConnectionFailure,
    required TResult Function() dataParsingFailure,
    required TResult Function(String message) unAuthorizeFailure,
    required TResult Function(String message) unprocessableEntityFailure,
    required TResult Function(String message, int code) badRequestFailure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) forbiddenFailure,
    required TResult Function(String? message) otherFailure,
    required TResult Function(String message) dioFailure,
  }) {
    return lostConnectionFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? lostConnectionFailure,
    TResult? Function()? timeoutConnectionFailure,
    TResult? Function()? dataParsingFailure,
    TResult? Function(String message)? unAuthorizeFailure,
    TResult? Function(String message)? unprocessableEntityFailure,
    TResult? Function(String message, int code)? badRequestFailure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? forbiddenFailure,
    TResult? Function(String? message)? otherFailure,
    TResult? Function(String message)? dioFailure,
  }) {
    return lostConnectionFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function()? cacheFailure,
    TResult Function()? lostConnectionFailure,
    TResult Function()? timeoutConnectionFailure,
    TResult Function()? dataParsingFailure,
    TResult Function(String message)? unAuthorizeFailure,
    TResult Function(String message)? unprocessableEntityFailure,
    TResult Function(String message, int code)? badRequestFailure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? forbiddenFailure,
    TResult Function(String? message)? otherFailure,
    TResult Function(String message)? dioFailure,
    required TResult orElse(),
  }) {
    if (lostConnectionFailure != null) {
      return lostConnectionFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_LostConnectionFailure value)
        lostConnectionFailure,
    required TResult Function(_TimeoutConnectionFailure value)
        timeoutConnectionFailure,
    required TResult Function(_DataParsingFailure value) dataParsingFailure,
    required TResult Function(_UnAuthorizeFailure value) unAuthorizeFailure,
    required TResult Function(_UnprocessableEntityFailure value)
        unprocessableEntityFailure,
    required TResult Function(_BadRequestFailure value) badRequestFailure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ForbiddenFailure value) forbiddenFailure,
    required TResult Function(_OtherFailure value) otherFailure,
    required TResult Function(_DioFailure value) dioFailure,
  }) {
    return lostConnectionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_CacheFailure value)? cacheFailure,
    TResult? Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult? Function(_TimeoutConnectionFailure value)?
        timeoutConnectionFailure,
    TResult? Function(_DataParsingFailure value)? dataParsingFailure,
    TResult? Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult? Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult? Function(_BadRequestFailure value)? badRequestFailure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult? Function(_OtherFailure value)? otherFailure,
    TResult? Function(_DioFailure value)? dioFailure,
  }) {
    return lostConnectionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult Function(_TimeoutConnectionFailure value)? timeoutConnectionFailure,
    TResult Function(_DataParsingFailure value)? dataParsingFailure,
    TResult Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult Function(_BadRequestFailure value)? badRequestFailure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult Function(_OtherFailure value)? otherFailure,
    TResult Function(_DioFailure value)? dioFailure,
    required TResult orElse(),
  }) {
    if (lostConnectionFailure != null) {
      return lostConnectionFailure(this);
    }
    return orElse();
  }
}

abstract class _LostConnectionFailure implements Failure {
  const factory _LostConnectionFailure() = _$LostConnectionFailureImpl;
}

/// @nodoc
abstract class _$$TimeoutConnectionFailureImplCopyWith<$Res> {
  factory _$$TimeoutConnectionFailureImplCopyWith(
          _$TimeoutConnectionFailureImpl value,
          $Res Function(_$TimeoutConnectionFailureImpl) then) =
      __$$TimeoutConnectionFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimeoutConnectionFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$TimeoutConnectionFailureImpl>
    implements _$$TimeoutConnectionFailureImplCopyWith<$Res> {
  __$$TimeoutConnectionFailureImplCopyWithImpl(
      _$TimeoutConnectionFailureImpl _value,
      $Res Function(_$TimeoutConnectionFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimeoutConnectionFailureImpl implements _TimeoutConnectionFailure {
  const _$TimeoutConnectionFailureImpl();

  @override
  String toString() {
    return 'Failure.timeoutConnectionFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeoutConnectionFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function() cacheFailure,
    required TResult Function() lostConnectionFailure,
    required TResult Function() timeoutConnectionFailure,
    required TResult Function() dataParsingFailure,
    required TResult Function(String message) unAuthorizeFailure,
    required TResult Function(String message) unprocessableEntityFailure,
    required TResult Function(String message, int code) badRequestFailure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) forbiddenFailure,
    required TResult Function(String? message) otherFailure,
    required TResult Function(String message) dioFailure,
  }) {
    return timeoutConnectionFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? lostConnectionFailure,
    TResult? Function()? timeoutConnectionFailure,
    TResult? Function()? dataParsingFailure,
    TResult? Function(String message)? unAuthorizeFailure,
    TResult? Function(String message)? unprocessableEntityFailure,
    TResult? Function(String message, int code)? badRequestFailure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? forbiddenFailure,
    TResult? Function(String? message)? otherFailure,
    TResult? Function(String message)? dioFailure,
  }) {
    return timeoutConnectionFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function()? cacheFailure,
    TResult Function()? lostConnectionFailure,
    TResult Function()? timeoutConnectionFailure,
    TResult Function()? dataParsingFailure,
    TResult Function(String message)? unAuthorizeFailure,
    TResult Function(String message)? unprocessableEntityFailure,
    TResult Function(String message, int code)? badRequestFailure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? forbiddenFailure,
    TResult Function(String? message)? otherFailure,
    TResult Function(String message)? dioFailure,
    required TResult orElse(),
  }) {
    if (timeoutConnectionFailure != null) {
      return timeoutConnectionFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_LostConnectionFailure value)
        lostConnectionFailure,
    required TResult Function(_TimeoutConnectionFailure value)
        timeoutConnectionFailure,
    required TResult Function(_DataParsingFailure value) dataParsingFailure,
    required TResult Function(_UnAuthorizeFailure value) unAuthorizeFailure,
    required TResult Function(_UnprocessableEntityFailure value)
        unprocessableEntityFailure,
    required TResult Function(_BadRequestFailure value) badRequestFailure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ForbiddenFailure value) forbiddenFailure,
    required TResult Function(_OtherFailure value) otherFailure,
    required TResult Function(_DioFailure value) dioFailure,
  }) {
    return timeoutConnectionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_CacheFailure value)? cacheFailure,
    TResult? Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult? Function(_TimeoutConnectionFailure value)?
        timeoutConnectionFailure,
    TResult? Function(_DataParsingFailure value)? dataParsingFailure,
    TResult? Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult? Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult? Function(_BadRequestFailure value)? badRequestFailure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult? Function(_OtherFailure value)? otherFailure,
    TResult? Function(_DioFailure value)? dioFailure,
  }) {
    return timeoutConnectionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult Function(_TimeoutConnectionFailure value)? timeoutConnectionFailure,
    TResult Function(_DataParsingFailure value)? dataParsingFailure,
    TResult Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult Function(_BadRequestFailure value)? badRequestFailure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult Function(_OtherFailure value)? otherFailure,
    TResult Function(_DioFailure value)? dioFailure,
    required TResult orElse(),
  }) {
    if (timeoutConnectionFailure != null) {
      return timeoutConnectionFailure(this);
    }
    return orElse();
  }
}

abstract class _TimeoutConnectionFailure implements Failure {
  const factory _TimeoutConnectionFailure() = _$TimeoutConnectionFailureImpl;
}

/// @nodoc
abstract class _$$DataParsingFailureImplCopyWith<$Res> {
  factory _$$DataParsingFailureImplCopyWith(_$DataParsingFailureImpl value,
          $Res Function(_$DataParsingFailureImpl) then) =
      __$$DataParsingFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataParsingFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$DataParsingFailureImpl>
    implements _$$DataParsingFailureImplCopyWith<$Res> {
  __$$DataParsingFailureImplCopyWithImpl(_$DataParsingFailureImpl _value,
      $Res Function(_$DataParsingFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DataParsingFailureImpl implements _DataParsingFailure {
  const _$DataParsingFailureImpl();

  @override
  String toString() {
    return 'Failure.dataParsingFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DataParsingFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function() cacheFailure,
    required TResult Function() lostConnectionFailure,
    required TResult Function() timeoutConnectionFailure,
    required TResult Function() dataParsingFailure,
    required TResult Function(String message) unAuthorizeFailure,
    required TResult Function(String message) unprocessableEntityFailure,
    required TResult Function(String message, int code) badRequestFailure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) forbiddenFailure,
    required TResult Function(String? message) otherFailure,
    required TResult Function(String message) dioFailure,
  }) {
    return dataParsingFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? lostConnectionFailure,
    TResult? Function()? timeoutConnectionFailure,
    TResult? Function()? dataParsingFailure,
    TResult? Function(String message)? unAuthorizeFailure,
    TResult? Function(String message)? unprocessableEntityFailure,
    TResult? Function(String message, int code)? badRequestFailure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? forbiddenFailure,
    TResult? Function(String? message)? otherFailure,
    TResult? Function(String message)? dioFailure,
  }) {
    return dataParsingFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function()? cacheFailure,
    TResult Function()? lostConnectionFailure,
    TResult Function()? timeoutConnectionFailure,
    TResult Function()? dataParsingFailure,
    TResult Function(String message)? unAuthorizeFailure,
    TResult Function(String message)? unprocessableEntityFailure,
    TResult Function(String message, int code)? badRequestFailure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? forbiddenFailure,
    TResult Function(String? message)? otherFailure,
    TResult Function(String message)? dioFailure,
    required TResult orElse(),
  }) {
    if (dataParsingFailure != null) {
      return dataParsingFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_LostConnectionFailure value)
        lostConnectionFailure,
    required TResult Function(_TimeoutConnectionFailure value)
        timeoutConnectionFailure,
    required TResult Function(_DataParsingFailure value) dataParsingFailure,
    required TResult Function(_UnAuthorizeFailure value) unAuthorizeFailure,
    required TResult Function(_UnprocessableEntityFailure value)
        unprocessableEntityFailure,
    required TResult Function(_BadRequestFailure value) badRequestFailure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ForbiddenFailure value) forbiddenFailure,
    required TResult Function(_OtherFailure value) otherFailure,
    required TResult Function(_DioFailure value) dioFailure,
  }) {
    return dataParsingFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_CacheFailure value)? cacheFailure,
    TResult? Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult? Function(_TimeoutConnectionFailure value)?
        timeoutConnectionFailure,
    TResult? Function(_DataParsingFailure value)? dataParsingFailure,
    TResult? Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult? Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult? Function(_BadRequestFailure value)? badRequestFailure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult? Function(_OtherFailure value)? otherFailure,
    TResult? Function(_DioFailure value)? dioFailure,
  }) {
    return dataParsingFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult Function(_TimeoutConnectionFailure value)? timeoutConnectionFailure,
    TResult Function(_DataParsingFailure value)? dataParsingFailure,
    TResult Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult Function(_BadRequestFailure value)? badRequestFailure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult Function(_OtherFailure value)? otherFailure,
    TResult Function(_DioFailure value)? dioFailure,
    required TResult orElse(),
  }) {
    if (dataParsingFailure != null) {
      return dataParsingFailure(this);
    }
    return orElse();
  }
}

abstract class _DataParsingFailure implements Failure {
  const factory _DataParsingFailure() = _$DataParsingFailureImpl;
}

/// @nodoc
abstract class _$$UnAuthorizeFailureImplCopyWith<$Res> {
  factory _$$UnAuthorizeFailureImplCopyWith(_$UnAuthorizeFailureImpl value,
          $Res Function(_$UnAuthorizeFailureImpl) then) =
      __$$UnAuthorizeFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnAuthorizeFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnAuthorizeFailureImpl>
    implements _$$UnAuthorizeFailureImplCopyWith<$Res> {
  __$$UnAuthorizeFailureImplCopyWithImpl(_$UnAuthorizeFailureImpl _value,
      $Res Function(_$UnAuthorizeFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnAuthorizeFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnAuthorizeFailureImpl implements _UnAuthorizeFailure {
  const _$UnAuthorizeFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.unAuthorizeFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnAuthorizeFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnAuthorizeFailureImplCopyWith<_$UnAuthorizeFailureImpl> get copyWith =>
      __$$UnAuthorizeFailureImplCopyWithImpl<_$UnAuthorizeFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function() cacheFailure,
    required TResult Function() lostConnectionFailure,
    required TResult Function() timeoutConnectionFailure,
    required TResult Function() dataParsingFailure,
    required TResult Function(String message) unAuthorizeFailure,
    required TResult Function(String message) unprocessableEntityFailure,
    required TResult Function(String message, int code) badRequestFailure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) forbiddenFailure,
    required TResult Function(String? message) otherFailure,
    required TResult Function(String message) dioFailure,
  }) {
    return unAuthorizeFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? lostConnectionFailure,
    TResult? Function()? timeoutConnectionFailure,
    TResult? Function()? dataParsingFailure,
    TResult? Function(String message)? unAuthorizeFailure,
    TResult? Function(String message)? unprocessableEntityFailure,
    TResult? Function(String message, int code)? badRequestFailure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? forbiddenFailure,
    TResult? Function(String? message)? otherFailure,
    TResult? Function(String message)? dioFailure,
  }) {
    return unAuthorizeFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function()? cacheFailure,
    TResult Function()? lostConnectionFailure,
    TResult Function()? timeoutConnectionFailure,
    TResult Function()? dataParsingFailure,
    TResult Function(String message)? unAuthorizeFailure,
    TResult Function(String message)? unprocessableEntityFailure,
    TResult Function(String message, int code)? badRequestFailure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? forbiddenFailure,
    TResult Function(String? message)? otherFailure,
    TResult Function(String message)? dioFailure,
    required TResult orElse(),
  }) {
    if (unAuthorizeFailure != null) {
      return unAuthorizeFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_LostConnectionFailure value)
        lostConnectionFailure,
    required TResult Function(_TimeoutConnectionFailure value)
        timeoutConnectionFailure,
    required TResult Function(_DataParsingFailure value) dataParsingFailure,
    required TResult Function(_UnAuthorizeFailure value) unAuthorizeFailure,
    required TResult Function(_UnprocessableEntityFailure value)
        unprocessableEntityFailure,
    required TResult Function(_BadRequestFailure value) badRequestFailure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ForbiddenFailure value) forbiddenFailure,
    required TResult Function(_OtherFailure value) otherFailure,
    required TResult Function(_DioFailure value) dioFailure,
  }) {
    return unAuthorizeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_CacheFailure value)? cacheFailure,
    TResult? Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult? Function(_TimeoutConnectionFailure value)?
        timeoutConnectionFailure,
    TResult? Function(_DataParsingFailure value)? dataParsingFailure,
    TResult? Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult? Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult? Function(_BadRequestFailure value)? badRequestFailure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult? Function(_OtherFailure value)? otherFailure,
    TResult? Function(_DioFailure value)? dioFailure,
  }) {
    return unAuthorizeFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult Function(_TimeoutConnectionFailure value)? timeoutConnectionFailure,
    TResult Function(_DataParsingFailure value)? dataParsingFailure,
    TResult Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult Function(_BadRequestFailure value)? badRequestFailure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult Function(_OtherFailure value)? otherFailure,
    TResult Function(_DioFailure value)? dioFailure,
    required TResult orElse(),
  }) {
    if (unAuthorizeFailure != null) {
      return unAuthorizeFailure(this);
    }
    return orElse();
  }
}

abstract class _UnAuthorizeFailure implements Failure {
  const factory _UnAuthorizeFailure(final String message) =
      _$UnAuthorizeFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$UnAuthorizeFailureImplCopyWith<_$UnAuthorizeFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnprocessableEntityFailureImplCopyWith<$Res> {
  factory _$$UnprocessableEntityFailureImplCopyWith(
          _$UnprocessableEntityFailureImpl value,
          $Res Function(_$UnprocessableEntityFailureImpl) then) =
      __$$UnprocessableEntityFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnprocessableEntityFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnprocessableEntityFailureImpl>
    implements _$$UnprocessableEntityFailureImplCopyWith<$Res> {
  __$$UnprocessableEntityFailureImplCopyWithImpl(
      _$UnprocessableEntityFailureImpl _value,
      $Res Function(_$UnprocessableEntityFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnprocessableEntityFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnprocessableEntityFailureImpl implements _UnprocessableEntityFailure {
  const _$UnprocessableEntityFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.unprocessableEntityFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnprocessableEntityFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnprocessableEntityFailureImplCopyWith<_$UnprocessableEntityFailureImpl>
      get copyWith => __$$UnprocessableEntityFailureImplCopyWithImpl<
          _$UnprocessableEntityFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function() cacheFailure,
    required TResult Function() lostConnectionFailure,
    required TResult Function() timeoutConnectionFailure,
    required TResult Function() dataParsingFailure,
    required TResult Function(String message) unAuthorizeFailure,
    required TResult Function(String message) unprocessableEntityFailure,
    required TResult Function(String message, int code) badRequestFailure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) forbiddenFailure,
    required TResult Function(String? message) otherFailure,
    required TResult Function(String message) dioFailure,
  }) {
    return unprocessableEntityFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? lostConnectionFailure,
    TResult? Function()? timeoutConnectionFailure,
    TResult? Function()? dataParsingFailure,
    TResult? Function(String message)? unAuthorizeFailure,
    TResult? Function(String message)? unprocessableEntityFailure,
    TResult? Function(String message, int code)? badRequestFailure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? forbiddenFailure,
    TResult? Function(String? message)? otherFailure,
    TResult? Function(String message)? dioFailure,
  }) {
    return unprocessableEntityFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function()? cacheFailure,
    TResult Function()? lostConnectionFailure,
    TResult Function()? timeoutConnectionFailure,
    TResult Function()? dataParsingFailure,
    TResult Function(String message)? unAuthorizeFailure,
    TResult Function(String message)? unprocessableEntityFailure,
    TResult Function(String message, int code)? badRequestFailure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? forbiddenFailure,
    TResult Function(String? message)? otherFailure,
    TResult Function(String message)? dioFailure,
    required TResult orElse(),
  }) {
    if (unprocessableEntityFailure != null) {
      return unprocessableEntityFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_LostConnectionFailure value)
        lostConnectionFailure,
    required TResult Function(_TimeoutConnectionFailure value)
        timeoutConnectionFailure,
    required TResult Function(_DataParsingFailure value) dataParsingFailure,
    required TResult Function(_UnAuthorizeFailure value) unAuthorizeFailure,
    required TResult Function(_UnprocessableEntityFailure value)
        unprocessableEntityFailure,
    required TResult Function(_BadRequestFailure value) badRequestFailure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ForbiddenFailure value) forbiddenFailure,
    required TResult Function(_OtherFailure value) otherFailure,
    required TResult Function(_DioFailure value) dioFailure,
  }) {
    return unprocessableEntityFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_CacheFailure value)? cacheFailure,
    TResult? Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult? Function(_TimeoutConnectionFailure value)?
        timeoutConnectionFailure,
    TResult? Function(_DataParsingFailure value)? dataParsingFailure,
    TResult? Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult? Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult? Function(_BadRequestFailure value)? badRequestFailure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult? Function(_OtherFailure value)? otherFailure,
    TResult? Function(_DioFailure value)? dioFailure,
  }) {
    return unprocessableEntityFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult Function(_TimeoutConnectionFailure value)? timeoutConnectionFailure,
    TResult Function(_DataParsingFailure value)? dataParsingFailure,
    TResult Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult Function(_BadRequestFailure value)? badRequestFailure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult Function(_OtherFailure value)? otherFailure,
    TResult Function(_DioFailure value)? dioFailure,
    required TResult orElse(),
  }) {
    if (unprocessableEntityFailure != null) {
      return unprocessableEntityFailure(this);
    }
    return orElse();
  }
}

abstract class _UnprocessableEntityFailure implements Failure {
  const factory _UnprocessableEntityFailure(final String message) =
      _$UnprocessableEntityFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$UnprocessableEntityFailureImplCopyWith<_$UnprocessableEntityFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BadRequestFailureImplCopyWith<$Res> {
  factory _$$BadRequestFailureImplCopyWith(_$BadRequestFailureImpl value,
          $Res Function(_$BadRequestFailureImpl) then) =
      __$$BadRequestFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, int code});
}

/// @nodoc
class __$$BadRequestFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$BadRequestFailureImpl>
    implements _$$BadRequestFailureImplCopyWith<$Res> {
  __$$BadRequestFailureImplCopyWithImpl(_$BadRequestFailureImpl _value,
      $Res Function(_$BadRequestFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$BadRequestFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BadRequestFailureImpl implements _BadRequestFailure {
  const _$BadRequestFailureImpl(this.message, this.code);

  @override
  final String message;
  @override
  final int code;

  @override
  String toString() {
    return 'Failure.badRequestFailure(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequestFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadRequestFailureImplCopyWith<_$BadRequestFailureImpl> get copyWith =>
      __$$BadRequestFailureImplCopyWithImpl<_$BadRequestFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function() cacheFailure,
    required TResult Function() lostConnectionFailure,
    required TResult Function() timeoutConnectionFailure,
    required TResult Function() dataParsingFailure,
    required TResult Function(String message) unAuthorizeFailure,
    required TResult Function(String message) unprocessableEntityFailure,
    required TResult Function(String message, int code) badRequestFailure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) forbiddenFailure,
    required TResult Function(String? message) otherFailure,
    required TResult Function(String message) dioFailure,
  }) {
    return badRequestFailure(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? lostConnectionFailure,
    TResult? Function()? timeoutConnectionFailure,
    TResult? Function()? dataParsingFailure,
    TResult? Function(String message)? unAuthorizeFailure,
    TResult? Function(String message)? unprocessableEntityFailure,
    TResult? Function(String message, int code)? badRequestFailure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? forbiddenFailure,
    TResult? Function(String? message)? otherFailure,
    TResult? Function(String message)? dioFailure,
  }) {
    return badRequestFailure?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function()? cacheFailure,
    TResult Function()? lostConnectionFailure,
    TResult Function()? timeoutConnectionFailure,
    TResult Function()? dataParsingFailure,
    TResult Function(String message)? unAuthorizeFailure,
    TResult Function(String message)? unprocessableEntityFailure,
    TResult Function(String message, int code)? badRequestFailure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? forbiddenFailure,
    TResult Function(String? message)? otherFailure,
    TResult Function(String message)? dioFailure,
    required TResult orElse(),
  }) {
    if (badRequestFailure != null) {
      return badRequestFailure(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_LostConnectionFailure value)
        lostConnectionFailure,
    required TResult Function(_TimeoutConnectionFailure value)
        timeoutConnectionFailure,
    required TResult Function(_DataParsingFailure value) dataParsingFailure,
    required TResult Function(_UnAuthorizeFailure value) unAuthorizeFailure,
    required TResult Function(_UnprocessableEntityFailure value)
        unprocessableEntityFailure,
    required TResult Function(_BadRequestFailure value) badRequestFailure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ForbiddenFailure value) forbiddenFailure,
    required TResult Function(_OtherFailure value) otherFailure,
    required TResult Function(_DioFailure value) dioFailure,
  }) {
    return badRequestFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_CacheFailure value)? cacheFailure,
    TResult? Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult? Function(_TimeoutConnectionFailure value)?
        timeoutConnectionFailure,
    TResult? Function(_DataParsingFailure value)? dataParsingFailure,
    TResult? Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult? Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult? Function(_BadRequestFailure value)? badRequestFailure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult? Function(_OtherFailure value)? otherFailure,
    TResult? Function(_DioFailure value)? dioFailure,
  }) {
    return badRequestFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult Function(_TimeoutConnectionFailure value)? timeoutConnectionFailure,
    TResult Function(_DataParsingFailure value)? dataParsingFailure,
    TResult Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult Function(_BadRequestFailure value)? badRequestFailure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult Function(_OtherFailure value)? otherFailure,
    TResult Function(_DioFailure value)? dioFailure,
    required TResult orElse(),
  }) {
    if (badRequestFailure != null) {
      return badRequestFailure(this);
    }
    return orElse();
  }
}

abstract class _BadRequestFailure implements Failure {
  const factory _BadRequestFailure(final String message, final int code) =
      _$BadRequestFailureImpl;

  String get message;
  int get code;
  @JsonKey(ignore: true)
  _$$BadRequestFailureImplCopyWith<_$BadRequestFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundFailureImplCopyWith<$Res> {
  factory _$$NotFoundFailureImplCopyWith(_$NotFoundFailureImpl value,
          $Res Function(_$NotFoundFailureImpl) then) =
      __$$NotFoundFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NotFoundFailureImpl>
    implements _$$NotFoundFailureImplCopyWith<$Res> {
  __$$NotFoundFailureImplCopyWithImpl(
      _$NotFoundFailureImpl _value, $Res Function(_$NotFoundFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NotFoundFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotFoundFailureImpl implements _NotFoundFailure {
  const _$NotFoundFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.notFoundFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundFailureImplCopyWith<_$NotFoundFailureImpl> get copyWith =>
      __$$NotFoundFailureImplCopyWithImpl<_$NotFoundFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function() cacheFailure,
    required TResult Function() lostConnectionFailure,
    required TResult Function() timeoutConnectionFailure,
    required TResult Function() dataParsingFailure,
    required TResult Function(String message) unAuthorizeFailure,
    required TResult Function(String message) unprocessableEntityFailure,
    required TResult Function(String message, int code) badRequestFailure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) forbiddenFailure,
    required TResult Function(String? message) otherFailure,
    required TResult Function(String message) dioFailure,
  }) {
    return notFoundFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? lostConnectionFailure,
    TResult? Function()? timeoutConnectionFailure,
    TResult? Function()? dataParsingFailure,
    TResult? Function(String message)? unAuthorizeFailure,
    TResult? Function(String message)? unprocessableEntityFailure,
    TResult? Function(String message, int code)? badRequestFailure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? forbiddenFailure,
    TResult? Function(String? message)? otherFailure,
    TResult? Function(String message)? dioFailure,
  }) {
    return notFoundFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function()? cacheFailure,
    TResult Function()? lostConnectionFailure,
    TResult Function()? timeoutConnectionFailure,
    TResult Function()? dataParsingFailure,
    TResult Function(String message)? unAuthorizeFailure,
    TResult Function(String message)? unprocessableEntityFailure,
    TResult Function(String message, int code)? badRequestFailure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? forbiddenFailure,
    TResult Function(String? message)? otherFailure,
    TResult Function(String message)? dioFailure,
    required TResult orElse(),
  }) {
    if (notFoundFailure != null) {
      return notFoundFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_LostConnectionFailure value)
        lostConnectionFailure,
    required TResult Function(_TimeoutConnectionFailure value)
        timeoutConnectionFailure,
    required TResult Function(_DataParsingFailure value) dataParsingFailure,
    required TResult Function(_UnAuthorizeFailure value) unAuthorizeFailure,
    required TResult Function(_UnprocessableEntityFailure value)
        unprocessableEntityFailure,
    required TResult Function(_BadRequestFailure value) badRequestFailure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ForbiddenFailure value) forbiddenFailure,
    required TResult Function(_OtherFailure value) otherFailure,
    required TResult Function(_DioFailure value) dioFailure,
  }) {
    return notFoundFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_CacheFailure value)? cacheFailure,
    TResult? Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult? Function(_TimeoutConnectionFailure value)?
        timeoutConnectionFailure,
    TResult? Function(_DataParsingFailure value)? dataParsingFailure,
    TResult? Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult? Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult? Function(_BadRequestFailure value)? badRequestFailure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult? Function(_OtherFailure value)? otherFailure,
    TResult? Function(_DioFailure value)? dioFailure,
  }) {
    return notFoundFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult Function(_TimeoutConnectionFailure value)? timeoutConnectionFailure,
    TResult Function(_DataParsingFailure value)? dataParsingFailure,
    TResult Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult Function(_BadRequestFailure value)? badRequestFailure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult Function(_OtherFailure value)? otherFailure,
    TResult Function(_DioFailure value)? dioFailure,
    required TResult orElse(),
  }) {
    if (notFoundFailure != null) {
      return notFoundFailure(this);
    }
    return orElse();
  }
}

abstract class _NotFoundFailure implements Failure {
  const factory _NotFoundFailure(final String message) = _$NotFoundFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$NotFoundFailureImplCopyWith<_$NotFoundFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForbiddenFailureImplCopyWith<$Res> {
  factory _$$ForbiddenFailureImplCopyWith(_$ForbiddenFailureImpl value,
          $Res Function(_$ForbiddenFailureImpl) then) =
      __$$ForbiddenFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ForbiddenFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ForbiddenFailureImpl>
    implements _$$ForbiddenFailureImplCopyWith<$Res> {
  __$$ForbiddenFailureImplCopyWithImpl(_$ForbiddenFailureImpl _value,
      $Res Function(_$ForbiddenFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ForbiddenFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForbiddenFailureImpl implements _ForbiddenFailure {
  const _$ForbiddenFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.forbiddenFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForbiddenFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForbiddenFailureImplCopyWith<_$ForbiddenFailureImpl> get copyWith =>
      __$$ForbiddenFailureImplCopyWithImpl<_$ForbiddenFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function() cacheFailure,
    required TResult Function() lostConnectionFailure,
    required TResult Function() timeoutConnectionFailure,
    required TResult Function() dataParsingFailure,
    required TResult Function(String message) unAuthorizeFailure,
    required TResult Function(String message) unprocessableEntityFailure,
    required TResult Function(String message, int code) badRequestFailure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) forbiddenFailure,
    required TResult Function(String? message) otherFailure,
    required TResult Function(String message) dioFailure,
  }) {
    return forbiddenFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? lostConnectionFailure,
    TResult? Function()? timeoutConnectionFailure,
    TResult? Function()? dataParsingFailure,
    TResult? Function(String message)? unAuthorizeFailure,
    TResult? Function(String message)? unprocessableEntityFailure,
    TResult? Function(String message, int code)? badRequestFailure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? forbiddenFailure,
    TResult? Function(String? message)? otherFailure,
    TResult? Function(String message)? dioFailure,
  }) {
    return forbiddenFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function()? cacheFailure,
    TResult Function()? lostConnectionFailure,
    TResult Function()? timeoutConnectionFailure,
    TResult Function()? dataParsingFailure,
    TResult Function(String message)? unAuthorizeFailure,
    TResult Function(String message)? unprocessableEntityFailure,
    TResult Function(String message, int code)? badRequestFailure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? forbiddenFailure,
    TResult Function(String? message)? otherFailure,
    TResult Function(String message)? dioFailure,
    required TResult orElse(),
  }) {
    if (forbiddenFailure != null) {
      return forbiddenFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_LostConnectionFailure value)
        lostConnectionFailure,
    required TResult Function(_TimeoutConnectionFailure value)
        timeoutConnectionFailure,
    required TResult Function(_DataParsingFailure value) dataParsingFailure,
    required TResult Function(_UnAuthorizeFailure value) unAuthorizeFailure,
    required TResult Function(_UnprocessableEntityFailure value)
        unprocessableEntityFailure,
    required TResult Function(_BadRequestFailure value) badRequestFailure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ForbiddenFailure value) forbiddenFailure,
    required TResult Function(_OtherFailure value) otherFailure,
    required TResult Function(_DioFailure value) dioFailure,
  }) {
    return forbiddenFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_CacheFailure value)? cacheFailure,
    TResult? Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult? Function(_TimeoutConnectionFailure value)?
        timeoutConnectionFailure,
    TResult? Function(_DataParsingFailure value)? dataParsingFailure,
    TResult? Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult? Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult? Function(_BadRequestFailure value)? badRequestFailure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult? Function(_OtherFailure value)? otherFailure,
    TResult? Function(_DioFailure value)? dioFailure,
  }) {
    return forbiddenFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult Function(_TimeoutConnectionFailure value)? timeoutConnectionFailure,
    TResult Function(_DataParsingFailure value)? dataParsingFailure,
    TResult Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult Function(_BadRequestFailure value)? badRequestFailure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult Function(_OtherFailure value)? otherFailure,
    TResult Function(_DioFailure value)? dioFailure,
    required TResult orElse(),
  }) {
    if (forbiddenFailure != null) {
      return forbiddenFailure(this);
    }
    return orElse();
  }
}

abstract class _ForbiddenFailure implements Failure {
  const factory _ForbiddenFailure(final String message) =
      _$ForbiddenFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ForbiddenFailureImplCopyWith<_$ForbiddenFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtherFailureImplCopyWith<$Res> {
  factory _$$OtherFailureImplCopyWith(
          _$OtherFailureImpl value, $Res Function(_$OtherFailureImpl) then) =
      __$$OtherFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$OtherFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$OtherFailureImpl>
    implements _$$OtherFailureImplCopyWith<$Res> {
  __$$OtherFailureImplCopyWithImpl(
      _$OtherFailureImpl _value, $Res Function(_$OtherFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$OtherFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OtherFailureImpl implements _OtherFailure {
  const _$OtherFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.otherFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherFailureImplCopyWith<_$OtherFailureImpl> get copyWith =>
      __$$OtherFailureImplCopyWithImpl<_$OtherFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function() cacheFailure,
    required TResult Function() lostConnectionFailure,
    required TResult Function() timeoutConnectionFailure,
    required TResult Function() dataParsingFailure,
    required TResult Function(String message) unAuthorizeFailure,
    required TResult Function(String message) unprocessableEntityFailure,
    required TResult Function(String message, int code) badRequestFailure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) forbiddenFailure,
    required TResult Function(String? message) otherFailure,
    required TResult Function(String message) dioFailure,
  }) {
    return otherFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? lostConnectionFailure,
    TResult? Function()? timeoutConnectionFailure,
    TResult? Function()? dataParsingFailure,
    TResult? Function(String message)? unAuthorizeFailure,
    TResult? Function(String message)? unprocessableEntityFailure,
    TResult? Function(String message, int code)? badRequestFailure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? forbiddenFailure,
    TResult? Function(String? message)? otherFailure,
    TResult? Function(String message)? dioFailure,
  }) {
    return otherFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function()? cacheFailure,
    TResult Function()? lostConnectionFailure,
    TResult Function()? timeoutConnectionFailure,
    TResult Function()? dataParsingFailure,
    TResult Function(String message)? unAuthorizeFailure,
    TResult Function(String message)? unprocessableEntityFailure,
    TResult Function(String message, int code)? badRequestFailure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? forbiddenFailure,
    TResult Function(String? message)? otherFailure,
    TResult Function(String message)? dioFailure,
    required TResult orElse(),
  }) {
    if (otherFailure != null) {
      return otherFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_LostConnectionFailure value)
        lostConnectionFailure,
    required TResult Function(_TimeoutConnectionFailure value)
        timeoutConnectionFailure,
    required TResult Function(_DataParsingFailure value) dataParsingFailure,
    required TResult Function(_UnAuthorizeFailure value) unAuthorizeFailure,
    required TResult Function(_UnprocessableEntityFailure value)
        unprocessableEntityFailure,
    required TResult Function(_BadRequestFailure value) badRequestFailure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ForbiddenFailure value) forbiddenFailure,
    required TResult Function(_OtherFailure value) otherFailure,
    required TResult Function(_DioFailure value) dioFailure,
  }) {
    return otherFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_CacheFailure value)? cacheFailure,
    TResult? Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult? Function(_TimeoutConnectionFailure value)?
        timeoutConnectionFailure,
    TResult? Function(_DataParsingFailure value)? dataParsingFailure,
    TResult? Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult? Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult? Function(_BadRequestFailure value)? badRequestFailure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult? Function(_OtherFailure value)? otherFailure,
    TResult? Function(_DioFailure value)? dioFailure,
  }) {
    return otherFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult Function(_TimeoutConnectionFailure value)? timeoutConnectionFailure,
    TResult Function(_DataParsingFailure value)? dataParsingFailure,
    TResult Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult Function(_BadRequestFailure value)? badRequestFailure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult Function(_OtherFailure value)? otherFailure,
    TResult Function(_DioFailure value)? dioFailure,
    required TResult orElse(),
  }) {
    if (otherFailure != null) {
      return otherFailure(this);
    }
    return orElse();
  }
}

abstract class _OtherFailure implements Failure {
  const factory _OtherFailure({final String? message}) = _$OtherFailureImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$OtherFailureImplCopyWith<_$OtherFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DioFailureImplCopyWith<$Res> {
  factory _$$DioFailureImplCopyWith(
          _$DioFailureImpl value, $Res Function(_$DioFailureImpl) then) =
      __$$DioFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DioFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$DioFailureImpl>
    implements _$$DioFailureImplCopyWith<$Res> {
  __$$DioFailureImplCopyWithImpl(
      _$DioFailureImpl _value, $Res Function(_$DioFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DioFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DioFailureImpl implements _DioFailure {
  const _$DioFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.dioFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DioFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DioFailureImplCopyWith<_$DioFailureImpl> get copyWith =>
      __$$DioFailureImplCopyWithImpl<_$DioFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverFailure,
    required TResult Function() cacheFailure,
    required TResult Function() lostConnectionFailure,
    required TResult Function() timeoutConnectionFailure,
    required TResult Function() dataParsingFailure,
    required TResult Function(String message) unAuthorizeFailure,
    required TResult Function(String message) unprocessableEntityFailure,
    required TResult Function(String message, int code) badRequestFailure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) forbiddenFailure,
    required TResult Function(String? message) otherFailure,
    required TResult Function(String message) dioFailure,
  }) {
    return dioFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverFailure,
    TResult? Function()? cacheFailure,
    TResult? Function()? lostConnectionFailure,
    TResult? Function()? timeoutConnectionFailure,
    TResult? Function()? dataParsingFailure,
    TResult? Function(String message)? unAuthorizeFailure,
    TResult? Function(String message)? unprocessableEntityFailure,
    TResult? Function(String message, int code)? badRequestFailure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? forbiddenFailure,
    TResult? Function(String? message)? otherFailure,
    TResult? Function(String message)? dioFailure,
  }) {
    return dioFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverFailure,
    TResult Function()? cacheFailure,
    TResult Function()? lostConnectionFailure,
    TResult Function()? timeoutConnectionFailure,
    TResult Function()? dataParsingFailure,
    TResult Function(String message)? unAuthorizeFailure,
    TResult Function(String message)? unprocessableEntityFailure,
    TResult Function(String message, int code)? badRequestFailure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? forbiddenFailure,
    TResult Function(String? message)? otherFailure,
    TResult Function(String message)? dioFailure,
    required TResult orElse(),
  }) {
    if (dioFailure != null) {
      return dioFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_LostConnectionFailure value)
        lostConnectionFailure,
    required TResult Function(_TimeoutConnectionFailure value)
        timeoutConnectionFailure,
    required TResult Function(_DataParsingFailure value) dataParsingFailure,
    required TResult Function(_UnAuthorizeFailure value) unAuthorizeFailure,
    required TResult Function(_UnprocessableEntityFailure value)
        unprocessableEntityFailure,
    required TResult Function(_BadRequestFailure value) badRequestFailure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ForbiddenFailure value) forbiddenFailure,
    required TResult Function(_OtherFailure value) otherFailure,
    required TResult Function(_DioFailure value) dioFailure,
  }) {
    return dioFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_CacheFailure value)? cacheFailure,
    TResult? Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult? Function(_TimeoutConnectionFailure value)?
        timeoutConnectionFailure,
    TResult? Function(_DataParsingFailure value)? dataParsingFailure,
    TResult? Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult? Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult? Function(_BadRequestFailure value)? badRequestFailure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult? Function(_OtherFailure value)? otherFailure,
    TResult? Function(_DioFailure value)? dioFailure,
  }) {
    return dioFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_LostConnectionFailure value)? lostConnectionFailure,
    TResult Function(_TimeoutConnectionFailure value)? timeoutConnectionFailure,
    TResult Function(_DataParsingFailure value)? dataParsingFailure,
    TResult Function(_UnAuthorizeFailure value)? unAuthorizeFailure,
    TResult Function(_UnprocessableEntityFailure value)?
        unprocessableEntityFailure,
    TResult Function(_BadRequestFailure value)? badRequestFailure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ForbiddenFailure value)? forbiddenFailure,
    TResult Function(_OtherFailure value)? otherFailure,
    TResult Function(_DioFailure value)? dioFailure,
    required TResult orElse(),
  }) {
    if (dioFailure != null) {
      return dioFailure(this);
    }
    return orElse();
  }
}

abstract class _DioFailure implements Failure {
  const factory _DioFailure(final String message) = _$DioFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$DioFailureImplCopyWith<_$DioFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
