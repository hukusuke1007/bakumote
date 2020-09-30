import 'package:bakumote/extensions/index.dart';
import 'package:bakumote/notifiers/masters/masters_notifier.dart';
import 'package:bakumote/notifiers/masters/masters_state.dart';
import 'package:bakumote/notifiers/my_profile/my_profile_notifier.dart';
import 'package:bakumote/notifiers/my_profile/my_profile_state.dart';
import 'package:bakumote/pages/edit_profile/edit_profile_page_notifier.dart';
import 'package:bakumote/widgets/dialog/photo_bottom_sheet.dart';
import 'package:bakumote/widgets/edit_text_field.dart';
import 'package:bakumote/widgets/profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

class EditProfilePage extends HookWidget {
  const EditProfilePage({
    Key key,
    this.isEnableDismiss = true,
  }) : super(key: key);

  final bool isEnableDismiss;

  @override
  Widget build(BuildContext context) {
    final notifier = useProvider(editProfilePageNotifierProvider);
    final profile = useProvider(myProfileNotifierProvider.state
        .select((MyProfileState state) => state)).profile;
    final master = useProvider(
        mastersNotifierProvider.state.select((MastersState state) => state));
    final editProfile = useProvider(editProfilePageNotifierProvider.state
        .select((EditProfilePageState state) => state));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.l10n.editProfile,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        leading: isEnableDismiss
            ? IconButton(
                icon: const Icon(
                  Icons.clear,
                  color: Colors.white,
                ),
                onPressed: () {
                  context.dismiss();
                })
            : const SizedBox.shrink(),
      ),
      body: GestureDetector(
        child: SingleChildScrollView(
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
                      height: 16,
                    ),
                    EditTextFiled(
                      suffixText: context.l10n.required,
                      labelText: context.l10n.name,
                      controller: notifier.nameTextEditController,
                      onChanged: (value) {},
                    ),
                    InkWell(
                      child: IgnorePointer(
                        child: EditTextFiled(
                          controller: notifier.birthdayEditingController,
                          suffixText: context.l10n.required,
                          labelText: context.l10n.birth,
                          onChanged: null,
                        ),
                      ),
                      onTap: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext builder) {
                            return SizedBox(
                              height: context.deviceHeight / 3,
                              child: CupertinoDatePicker(
                                initialDateTime: profile.birthday,
                                onDateTimeChanged: notifier.onSaveBirthday,
                                minimumYear: 1950,
                                mode: CupertinoDatePickerMode.date,
                              ),
                            );
                          },
                        );
                      },
                    ),
                    InkWell(
                      child: IgnorePointer(
                        child: EditTextFiled(
                          controller: notifier.genderEditingController,
                          suffixText: context.l10n.required,
                          labelText: context.l10n.gender,
                          onChanged: null,
                        ),
                      ),
                      onTap: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext builder) {
                            return SizedBox(
                              height: context.deviceHeight / 3,
                              child: CupertinoPicker.builder(
                                scrollController: FixedExtentScrollController(
                                  initialItem: editProfile.genderId,
                                ),
                                itemBuilder: (context, index) {
                                  final data = master.gender[index].text;
                                  return Center(
                                    child: Text(
                                      data,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                    ),
                                  );
                                },
                                childCount: master.gender.length,
                                itemExtent: 40,
                                onSelectedItemChanged: notifier.onSaveGender,
                              ),
                            );
                          },
                        );
                      },
                    ),
                    InkWell(
                      child: IgnorePointer(
                        child: EditTextFiled(
                          controller: notifier.prefectureEditingController,
                          suffixText: context.l10n.required,
                          labelText: context.l10n.prefectures,
                          onChanged: null,
                        ),
                      ),
                      onTap: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext builder) {
                            return SizedBox(
                              height: context.deviceHeight / 3,
                              child: CupertinoPicker.builder(
                                scrollController: FixedExtentScrollController(
                                  initialItem: editProfile.prefectureId,
                                ),
                                itemBuilder: (context, index) {
                                  final data = master.prefectures[index].text;
                                  return Center(
                                    child: Text(
                                      data,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                    ),
                                  );
                                },
                                childCount: master.prefectures.length,
                                itemExtent: 40,
                                onSelectedItemChanged:
                                    notifier.onSavePrefecture,
                              ),
                            );
                          },
                        );
                      },
                    ),
                    EditTextFiled(
                      labelText: context.l10n.hobby,
                      controller: notifier.hobbyTextEditController,
                      onChanged: (value) {},
                    ),
                    EditTextFiled(
                      labelText: context.l10n.favoriteType,
                      controller: notifier.favoriteTypeTextEditController,
                      onChanged: (value) {},
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      width: 200,
                      child: RaisedButton(
                        color: Colors.blueAccent,
                        shape: const StadiumBorder(),
                        child: Text(
                          context.l10n.saveProfile,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: notifier.onSaveProfile,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        onTap: () => context.hideKeyboard(),
      ),
    );
  }
}
