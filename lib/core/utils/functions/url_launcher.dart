import 'package:url_launcher/url_launcher.dart';

void urlLauncher({required String url}) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  }
}
