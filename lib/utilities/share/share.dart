import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_share/flutter_share.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

@lazySingleton
class PokeShare {
  void shareWhatsapp({required Uint8List data}) async {
    try {
      final file = await _captureWidget(data: data);

      await FlutterShare.shareFile(
        title: 'Whatsapp share',
        text: 'Example share text',
        filePath: file.path,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<File> _captureWidget({required Uint8List data}) async {
    final directoryPath = (await getApplicationDocumentsDirectory()).path;
    final file = File('$directoryPath/${DateTime.now().toIso8601String()}.png')
        .writeAsBytes(data);

    return file;
  }
}
