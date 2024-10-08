import 'package:a_eye_bot/a_eye_bot_app.dart';
import 'package:a_eye_bot/core/di/injectable_configuration.dart';
import 'package:a_eye_bot/core/local_database/hive_configuration.dart';
import 'package:flutter/material.dart';

void main() async {
  await HiveConfiguration.init();

  await configureDependencies();
  runApp(
    const AEyeApp(),
  );
}
