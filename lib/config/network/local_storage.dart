import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../theme/app_string.dart';

@singleton
class LocalStorage {
  LocalStorage(this.storage);

  final FlutterSecureStorage storage;

  Future<void> setUserID(String userID) async {
    await storage.write(key: AppString.prefUserID, value: userID);
  }

  Future<String?> getUserID() async {
    return await storage.read(key: AppString.prefUserID);
  }

  Future<void> clearAll() async {
    await storage.deleteAll();
  }
}

@module
abstract class FlutterSecureStorageModul {
  @singleton
  FlutterSecureStorage get instance {
    const storage = FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
      iOptions: IOSOptions(
        accessibility: KeychainAccessibility.first_unlock,
      ),
    );
    return storage;
  }
}
