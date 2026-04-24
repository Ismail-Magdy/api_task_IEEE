import 'package:flutter/material.dart';

class CustomAppBarButton extends StatelessWidget {
  const CustomAppBarButton({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(8.0),
      child: Container(
        width: 40,
        decoration: BoxDecoration(
          border: .all(color: Colors.grey[500]!),
          borderRadius: .circular(12),
        ),
        child: Center(child: Icon(icon, color: Colors.black)),
      ),
    );
  }
}
