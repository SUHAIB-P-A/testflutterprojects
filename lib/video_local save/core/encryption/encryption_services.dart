import 'dart:convert';
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';
import 'package:testdemoflutterapps/video_local%20save/core/stroage/secure_storage_service.dart';

import 'encrypted_data.dart';

class EncryptionService {
  EncryptionService._();

  static final EncryptionService instance = EncryptionService._();

  final Cipher _cipher = AesGcm.with256bits();

  Future<SecretKey> _secretKey() async {
    final key = await SecureStorageService.instance.getOrCreateAESKey();

    return SecretKey(base64Decode(key));
  }

  Future<EncryptedData> encrypt(Uint8List data) async {
    final secretKey = await _secretKey();

    final nonce = _cipher.newNonce();

    final secretBox = await _cipher.encrypt(
      data,
      secretKey: secretKey,
      nonce: nonce,
    );

    return EncryptedData(
      cipherText: Uint8List.fromList(secretBox.cipherText),
      nonce: Uint8List.fromList(secretBox.nonce),
      mac: Uint8List.fromList(secretBox.mac.bytes),
    );
  }

  Future<Uint8List> decrypt(EncryptedData encrypted) async {
    final secretKey = await _secretKey();

    final secretBox = SecretBox(
      encrypted.cipherText,
      nonce: encrypted.nonce,
      mac: Mac(encrypted.mac),
    );

    final bytes = await _cipher.decrypt(secretBox, secretKey: secretKey);

    return Uint8List.fromList(bytes);
  }
}
