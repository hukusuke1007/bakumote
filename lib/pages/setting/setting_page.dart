import 'package:bakumote/extensions/index.dart';
import 'package:bakumote/notifiers/app_info/app_info_notifier.dart';
import 'package:bakumote/notifiers/app_info/app_info_state.dart';
import 'package:bakumote/notifiers/masters/masters_notifier.dart';
import 'package:bakumote/notifiers/masters/masters_state.dart';
import 'package:bakumote/notifiers/my_profile/my_profile_notifier.dart';
import 'package:bakumote/notifiers/my_profile/my_profile_state.dart';
import 'package:bakumote/pages/app_tab_navigator.dart';
import 'package:bakumote/pages/setting/setting_page_notifier.dart';
import 'package:bakumote/widgets/dialog/photo_bottom_sheet.dart';
import 'package:bakumote/widgets/profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';

class SettingPage extends TabWidgetPage {
  const SettingPage({Key key}) : super(key: key);

  @override
  void onBottomNavigationTap() {
    // TODO: implement onBottomNavigationTap
  }

  @override
  Widget build(BuildContext context) {
    final notifier = useProvider(settingPageNotifierProvider);
    final profile = useProvider(myProfileNotifierProvider.state
        .select((MyProfileState state) => state)).profile;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.l10n.tabSetting,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ProfileAvatar(
                      image: profile.image != null
                          ? Image.file(
                              profile.image,
                              width: 84,
                              height: 84,
                              fit: BoxFit.fill,
                            )
                          : null,
                      size: 84,
                      onTap: () {
                        showPhotoBottomSheet(
                          context,
                          onTapCamera: notifier.onTapCamera,
                          onTapGallery: notifier.onTapGallery,
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      profile.name,
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16)
                        .copyWith(top: 4),
                    child: Text(
                      profile.ageWithPref(useProvider(mastersNotifierProvider
                          .state
                          .select((MastersState state) => state)).prefectures),
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16)
                        .copyWith(top: 4),
                    child: SizedBox(
                      width: 200,
                      child: RaisedButton(
                        color: Colors.blueAccent,
                        shape: const StadiumBorder(),
                        child: Text(
                          context.l10n.editProfile,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: notifier.onShowEditProfile,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Divider(
                    height: 1,
                  ),
                  ListTile(
                    leading: Text(
                      context.l10n.dataReset,
                      style: const TextStyle(fontSize: 16),
                    ),
                    trailing: const Icon(Icons.refresh),
                    onTap: notifier.onReset,
                  ),
                  const Divider(
                    height: 1,
                  ),
                  ListTile(
                    leading: Text(
                      context.l10n.appVersion,
                      style: const TextStyle(fontSize: 16),
                    ),
                    trailing: Text(
                      useProvider(appInfoNotifierProvider.state
                          .select((AppInfoState state) => state)).appVersion,
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                  const Divider(
                    height: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
