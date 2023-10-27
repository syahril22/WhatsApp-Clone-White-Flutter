import 'package:flutter/material.dart';
import 'package:ui_whatsapp/models/status.dart';

class StatusView extends StatelessWidget {
  const StatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: statusList.length,
        itemBuilder: (context, index) {
          final status = statusList[index];
          return ListTile(
            leading: const Icon(
              Icons.account_circle,
              color: Colors.black,
              size: 58,
            ),
            title: Text(status.name),
            subtitle: Text(status.statusDate),
          );
        });
  }
}
