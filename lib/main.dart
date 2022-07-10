import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_viewer/core/presentation/app_widget.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(
    ProviderScope(
      child: AppWidget(),
    ),
  );
}
