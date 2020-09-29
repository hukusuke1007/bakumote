import 'package:bakumote/extensions/index.dart';
import 'package:flutter/material.dart';

Future showPhotoBottomSheet(
  BuildContext context, {
  @required VoidCallback onTapCamera,
  @required VoidCallback onTapGallery,
}) async {
  return showModalBottomSheet<void>(
    context: context,
    builder: (context) {
      return Container(
        height: 116,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: Text(context.l10n.photoCamera),
                onTap: () {
                  Navigator.of(context).pop();
                  onTapCamera();
                },
              ),
              const Divider(
                height: 1,
              ),
              ListTile(
                leading: const Icon(Icons.photo),
                title: Text(context.l10n.photoAlbum),
                onTap: () {
                  Navigator.of(context).pop();
                  onTapGallery();
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}
