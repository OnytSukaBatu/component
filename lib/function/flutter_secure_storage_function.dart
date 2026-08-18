part of 'main_function.dart';

mixin SecureStorage {
  final FlutterSecureStorage storage = const FlutterSecureStorage(
    aOptions: AndroidOptions(
      enforceBiometrics: true,
      migrateOnAlgorithmChange: true,
    ),
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.first_unlock,
      isInvisible: true,
    ),
  );

  Future<void> setString({
    required String cKey,
    required String cValue,
  }) async {
    return await storage.write(key: cKey, value: cValue);
  }

  Future<String> getString({
    required String cKey,
    String cDefaultValue = "",
  }) async {
    return await storage.read(key: cKey) ?? cDefaultValue;
  }

  Future<void> setBool({
    required String cKey,
    required bool lValue,
  }) async {
    return await storage.write(key: cKey, value: lValue.toString());
  }

  Future<bool> getBool({
    required String cKey,
    required bool lDefaultValue,
  }) async {
    return bool.parse(
      await storage.read(key: cKey) ?? lDefaultValue.toString(),
    );
  }

  Future deleteSecure({required String cKey}) async {
    return await storage.delete(key: cKey);
  }

  Future clearAllSecure() async {
    return await storage.deleteAll();
  }
}
