import 'package:flutter/material.dart';

class EditGameAppBar {
  EditGameAppBar();

  static AppBar build(BuildContext context, customTitle, List<Tab> tabs,
      TabController tabController) {
    return AppBar(
      centerTitle: true,
      title: Text(
        customTitle,
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(color: Colors.black),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add),
        ),
      ],
      bottom: TabBar(
        controller: tabController,
        tabs: tabs,
      ),
    );
  }
}
