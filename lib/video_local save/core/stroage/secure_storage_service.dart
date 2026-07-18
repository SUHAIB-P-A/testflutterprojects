import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  SecureStorageService._();

  static final SecureStorageService instance = SecureStorageService._();

  final FlutterSecureStorage _storage = const FlutterSecureStorage(
    aOptions: AndroidOptions(),
    iOptions: IOSOptions(),
  );

  static const String aesKeyName = 'video_aes_key';

  Future<String> getOrCreateAESKey() async {
    final existing = await _storage.read(key: aesKeyName);

    if (existing != null) {
      return existing;
    }

    final key = _generateRandomKey();

    await _storage.write(key: aesKeyName, value: key);

    return key;
  }

  Future<String?> readAESKey() async {
    return _storage.read(key: aesKeyName);
  }

  Future<void> deleteAESKey() async {
    await _storage.delete(key: aesKeyName);
  }

  String _generateRandomKey() {
    final random = Random.secure();

    final bytes = Uint8List.fromList(
      List.generate(32, (_) => random.nextInt(256)),
    );

    return base64Encode(bytes);
  }
}
