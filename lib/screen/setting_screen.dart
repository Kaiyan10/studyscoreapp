import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("設定"),
        ),
        body: SettingsList(
          sections: [
            SettingsSection(
              title: const Text("共通"),
              tiles: <SettingsTile>[
                SettingsTile.navigation(title: const Text("test"))
              ],
            )
          ],
        ));
  }
}
