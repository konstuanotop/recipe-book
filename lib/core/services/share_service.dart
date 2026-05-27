import 'package:share_plus/share_plus.dart';

class ShareService {
  static Future<void> share({
    required String title,
    required String text,
  }) async {
    await SharePlus.instance.share(ShareParams(title: title, text: text));
  }
}
