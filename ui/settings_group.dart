// ignore_for_file: curly_braces_in_flow_control_structures, unnecessary_this, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import 'screen_utils.dart';
import 'settings_items.dart';

/// All one BabsComponentSettingsGroup have a title and the developper can improve the design.
class SettingsGroup extends StatelessWidget {
  final String? settingsGroupTitle;
  final TextStyle? settingsGroupTitleStyle;
  final List<SettingsItem> items;
  // Icons size
  final double? iconItemSize;

  SettingsGroup(
      {this.settingsGroupTitle,
      this.settingsGroupTitleStyle,
      required this.items,
      this.iconItemSize = 25});

  @override
  Widget build(BuildContext context) {
    if (this.iconItemSize != null)
      SettingsScreenUtils.settingsGroupIconSize = iconItemSize;

    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // The title
          (settingsGroupTitle != null)
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    settingsGroupTitle!,
                    style: (settingsGroupTitleStyle == null)
                        ? TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
                        : settingsGroupTitleStyle,
                  ),
                )
              : Container(),
          // The SettingsGroup sections
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 49, 48, 47),
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return items[index];
              },
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: ScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}
