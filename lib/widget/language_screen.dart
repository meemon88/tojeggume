import 'package:flutter/material.dart';

class SelectLanguage extends StatelessWidget {
  const SelectLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PopupMenuButton(icon: Icon(Icons.language),
        onSelected: (value) {
          // your logic
        },
        itemBuilder: (BuildContext context) {
          return const [
            PopupMenuItem(
              child: Text("Bangla"),
              value: '/hello',
            ),
            PopupMenuItem(
              child: Text("About"),
              value: '/about',
            ),
            PopupMenuItem(
              child: Text("Contact"),
              value: '/contact',
            )
          ];
        },
      ),
    );
  }
}
