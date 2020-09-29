import 'package:bakumote/extensions/index.dart';
import 'package:bakumote/notifiers/my_profile/my_profile_notifier.dart';
import 'package:bakumote/notifiers/my_profile/my_profile_state.dart';
import 'package:bakumote/pages/edit_profile/edit_profile_page_notifier.dart';
import 'package:bakumote/widgets/dialog/photo_bottom_sheet.dart';
import 'package:bakumote/widgets/edit_text_field.dart';
import 'package:bakumote/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

class EditProfilePage extends HookWidget {
  const EditProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final notifier = useProvider(editProfilePageNotifierProvider);
    final profile = useProvider(myProfileNotifierProvider.state
        .select((MyProfileState state) => state));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.l10n.editProfile,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.clear,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
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
                    EditTextFiled(
                      suffixText: context.l10n.required,
                      labelText: context.l10n.hobby,
                      controller: notifier.hobbyTextEditController,
                      onChanged: (value) {},
                    ),
                    EditTextFiled(
                      suffixText: context.l10n.required,
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
                        onPressed: () => notifier.onSaveProfile(context),
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
