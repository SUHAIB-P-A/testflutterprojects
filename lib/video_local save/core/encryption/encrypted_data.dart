import 'dart:typed_data';

class EncryptedData {
  final Uint8List cipherText;
  final Uint8List nonce;
  final Uint8List mac;

  const EncryptedData({
    required this.cipherText,
    required this.nonce,
    required this.mac,
  });
}
