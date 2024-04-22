import 'package:dio/dio.dart';

import '../error/exceptions.dart';

class APIThrowHandler {
  static APIThrowHandler? _instance;
  APIThrowHandler._();
  static APIThrowHandler get instance => _instance ??= APIThrowHandler._();

  handleResponse(Response response) {
    switch (response.statusCode) {
      case 200:
      case 201:
        return response.data;
      case 400:
        throw _handleBadRequest(response);
      case 401:
        throw _handleUnauthorized(response);
      case 403:
        throw _handleForbidden(response);
      case 404:
        throw _handleNotFound(response);
      case 422:
        throw _handleUnprocessableEntity(response);
      case 500:
        throw _handleServerError(response);
      default:
        throw _handleOtherException(response);
    }
  }

  BadRequestException _handleBadRequest(Response response) {
    final error = response.data['error'];
    final statusCode = response.statusCode ?? 400;
    return error == null
        ? BadRequestException("Bad Request", statusCode)
        : BadRequestException(error, statusCode);
  }

  _handleUnauthorized(Response response) {
    final statusCode = response.statusCode ?? 401;
    throw UnAuthorizedException(response.statusMessage, statusCode);
  }

  ForbiddenException _handleForbidden(Response response) {
    final statusCode = response.statusCode ?? 403;
    throw ForbiddenException(response.statusMessage, statusCode);
  }

  NotFoundException _handleNotFound(Response response) {
    final error = response.statusMessage != null
        ? "Exception: ${response.statusMessage}"
        : null;
    throw NotFoundException(error);
  }

  _handleUnprocessableEntity(Response response) {
    throw UnprocessableEntityException(response.statusMessage);
  }

  ServerException _handleServerError(Response response) {
    throw ServerException(response.statusMessage);
  }

  OtherException _handleOtherException(Response response) {
    throw const OtherException("Ops, something wrong !!!");
  }
}
