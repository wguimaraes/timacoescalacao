import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  final Function tapFunction;

  final String title;

  final String? subtitle;

  const ItemList({
    super.key,
    required this.tapFunction,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Theme.of(context).colorScheme.primaryContainer),
      child: ListTile(
        title: Text(title),
        subtitle: subtitle != null ? Text(subtitle!) : null,
        onTap: () => tapFunction(),
      ),
    );
  }
}
