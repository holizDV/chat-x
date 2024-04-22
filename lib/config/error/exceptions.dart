import 'dart:io';

import 'package:equatable/equatable.dart';

class ServerException extends Equatable implements Exception {
  final String message;

  const ServerException(
    String? message,
  ) : message = message ?? 'Server Error, Please try again later!';
  @override
  List<Object?> get props => [message];
}

class CacheException extends Equatable implements Exception {
  @override
  List<Object?> get props => [];
}

class LostConnectionException extends Equatable implements IOException {
  @override
  List<Object?> get props => [];
}

class TimeoutConnectionException extends Equatable implements IOException {
  @override
  List<Object?> get props => [];
}

class DataParsingException extends Equatable implements Exception {
  @override
  List<Object?> get props => [];
}

class UnAuthorizedException extends Equatable implements Exception {
  final String message;
  final int statusCode;

  const UnAuthorizedException(
    String? message,
    int? statusCode,
  )   : message = message ?? "Unauthorized",
        statusCode = statusCode ?? 401;
  @override
  List<Object?> get props => [message, statusCode];
}

class UnprocessableEntityException extends Equatable implements Exception {
  final String message;

  const UnprocessableEntityException(
    String? message,
  ) : message = message ?? 'Unprocessable Entity, Please try again later!';

  @override
  List<Object?> get props => [message];
}

class BadRequestException extends Equatable implements Exception {
  final String message;
  final int statusCode;

  const BadRequestException(
    String? message,
    int? statusCode,
  )   : message = message ?? 'Bad Request, Please try again later',
        statusCode = statusCode ?? 400;

  @override
  List<Object?> get props => [message, statusCode];
}

class ForbiddenException extends Equatable implements Exception {
  final String message;
  final int statusCode;

  const ForbiddenException(
    String? message,
    int? statusCode,
  )   : message = message ?? 'Forbidden Access, Please try again later',
        statusCode = statusCode ?? 403;

  @override
  List<Object?> get props => [message, statusCode];
}

class NotFoundException extends Equatable implements Exception {
  final String message;

  const NotFoundException(
    String? message,
  ) : message = message ?? 'Not Found, Please try again later';

  @override
  List<Object?> get props => [message];
}

class OtherException extends Equatable implements Exception {
  final String message;

  const OtherException(
    String? message,
  ) : message = message ?? 'Something went wrong, Please try again later';

  @override
  List<Object?> get props => [message];
}
