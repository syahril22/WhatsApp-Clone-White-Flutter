import 'package:flutter/material.dart';
import 'package:ui_whatsapp/models/call.dart';
import 'package:ui_whatsapp/theme.dart';

class CallView extends StatelessWidget {
  const CallView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: callList.length,
        itemBuilder: (context, index) {
          final call = callList[index];
          return ListTile(
            leading: const Icon(
              Icons.account_circle,
              color: Colors.black,
              size: 58,
            ),
            title: Text(call.name),
            subtitle: Text(call.callDate),
            trailing: Icon(
              Icons.call,
              color: whatsAppLightGreen,
            ),
          );
        });
  }
}
