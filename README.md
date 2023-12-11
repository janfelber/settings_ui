
Project which help to display Settings Screen UI using Flutter.

Compatible with Android & iOS & Web.  

## Settings Page

| **Settings screen** | **Settings screen** |
|----------------------|-|
| <img width="300" alt="smallcard" src="showcase_image\settings.png"> | <img width="300" alt="smallcard" src="showcase_image\settings2.png"> |

## Getting started

* Customize file paths - users can set their own path for files like SettingsItem, ScreenUtils and IconStyle.

* In settings_items.dart
``` dart
import 'icon_style.dart';
import 'screen_utils.dart';
```
* In settings_group.dart
``` dart
import 'screen_utils.dart';
import 'settings_items.dart';
```

* Example
``` dart

//Settings group
  SettingsGroup(
                items: [
                  SettingsItem(
                    //You can add title for settings
                    title: 'Appearance',
                    titleStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    subtitle: 'Change the apparence',
                    subtitleStyle: TextStyle(color: Colors.white),
                    onTap: () {
                        // TODO: Implement functionality for when the widget is tapped.

                        // Place your code here to define the behavior when the user taps on this widget.
                        // For example, you can call a function or navigate to another screen.
                        // Don't forget to remove the empty parentheses and replace them with your actual code.
                        // Example: myFunction();
                    },
                    // Icon for settings
                    icons: CupertinoIcons.pencil_outline,
                    iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Colors.blue,
                      borderRadius: 10,
                    ),
                  ),
                ]
            ),

```
## Components
* SettingsGroup  

| Parameters                  | Type                 | Description                                                       |
|-----------------------------|----------------------|-------------------------------------------------------------------|
| __settingsGroupTitle__      | String?              | Use it to add a Title for the group                               |
| __settingsGroupTitleStyle__ | TextStyle?           | Adapt the style of the title to your liking                       |
| __items__                   | `List<SettingsItem>` | Use it to add the __SettingsItem__ allowing the user to do action |
| __iconItemSize__            | double?              | Use it to increase or decrease all __SettingsItem__ icon size     |

* SettingsItem  

| Parameters                  | Type                 | Description                                                       |
|-----------------------------|----------------------|-------------------------------------------------------------------|
| __icons__                   | IconData ?           | Use it to add an Icon at the beginning                            |
| __iconStyle__               | IconStyle?           | Use it to change the icon colour, add the icon background, etc.   |
| __title__                   | String               | Use it to add a title on the __SettingsItem__                     |
| __titleStyle__              | TextStyle?           | Use it to change the title style                                  |
| __subtitle__                | String?              | Use it to add a subtitle on the __SettingsItem__                  |
| __subtitleStyle__           | TextStyle?           | Use it to change the subtitle style                               |
| __trailing__                | Widget?              | Use it to add a widget at the end of the  __SettingsItem__        |
| __onTap__                   | VoidCallback         | Use it to trigger an action on click                              |
| __backgroundColor__         | Color?               | Use it to change background of icon                               |
