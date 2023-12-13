import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App localization'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr()),
            subtitle: Text('name'.tr()),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      context.setLocale(const Locale('en', 'US'));
                    });
                  },
                  child: const Text('English')),
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      context.setLocale(const Locale('hi', 'IN'));
                    });
                  },
                  child: const Text('Hindi')),
            ],
          )
        ],
      ),
    );
  }
}
