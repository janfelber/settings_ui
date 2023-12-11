 Explanation :
 - SettingsGroup: Represents a group of settings items.
 - SettingsItem: Represents an individual setting item within the group.
 - title: The main title of the setting item ('Appearance' in this case).
 - titleStyle: Styling for the title (white color, bold font weight).
 - subtitle: A subtitle providing additional information about the setting item.
 - subtitleStyle: Styling for the subtitle (white color).
 - onTap: Callback function called when the setting item is tapped. It navigates to the AppareancePage.
 - icons: Icon associated with the setting item (a pencil outline in this case).
 - iconStyle: Styling for the icon (white color, blue background, border radius of 10).

SettingsGroup(
                      items: [
                        SettingsItem(
                          title: 'Appearance',
                          titleStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          subtitle: 'Change the apparence',
                          subtitleStyle: TextStyle(color: Colors.white),
                          onTap: () {
                            pushToNewPage(context, AppareancePage());
                          },
                          icons: CupertinoIcons.pencil_outline,
                          iconStyle: IconStyle(
                            iconsColor: Colors.white,
                            withBackground: true,
                            backgroundColor: Colors.blue,
                            borderRadius: 10,
                          ),
                        ),
                      ]
)