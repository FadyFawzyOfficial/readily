import 'package:flutter/material.dart' show BuildContext;
import 'package:url_launcher/url_launcher.dart' show canLaunchUrl, launchUrl;

import 'snack_bar_shower.dart';

void urlLauncher({required BuildContext context, required String url}) async {
  final uri = Uri.parse(url);
  await canLaunchUrl(uri)
      ? await launchUrl(uri)
      // ignore: use_build_context_synchronously
      : showSnackBar(context: context, message: 'Could not launch $url');
}
