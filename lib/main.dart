import 'dart:convert';
import 'dart:developer';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:testdemoflutterapps/video_local%20save/core/encryption/encryption_services.dart';
import 'package:testdemoflutterapps/video_local%20save/core/stroage/secure_storage_service.dart';
import 'package:testdemoflutterapps/video_local%20save/screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //final key = await SecureStorageService.instance.getOrCreateAESKey();
  //final key1 = await SecureStorageService.instance.readAESKey();

  //log(key, name: "key");
  //log(key1 ?? "", name: "key1");

  final original = Uint8List.fromList(utf8.encode("Hello Flutter Encryption"));

  final encrypted = await EncryptionService.instance.encrypt(original);

  final decrypted = await EncryptionService.instance.decrypt(encrypted);

  log("Original : ${utf8.decode(original)}", name: "orginal");
  log("Original : $original", name: "orginal");
  log("Decrypted: ${utf8.decode(decrypted)}", name: "Decrypted");
  log("encrypted: ${encrypted.cipherText}", name: "ciphertext");
  log("encrypted: ${encrypted.nonce}", name: "nonce");
  log("encrypted: ${encrypted.mac}", name: "mac");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      darkTheme: ThemeData.dark(),
      // theme: ThemeData(

      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      // ),s
      home: Homepage(),
    );
  }
}
