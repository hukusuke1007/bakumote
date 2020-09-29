import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';

Future<File> cropAvatar(String path, {Colors color}) async {
  return _cropImage(path, cropStyle: CropStyle.circle);
}

Future<File> cropThumbnail(String path, {Color color}) async {
  return _cropImage(path, cropStyle: CropStyle.rectangle, color: color);
}

Future<File> _cropImage(
  String path, {
  CropStyle cropStyle,
  Color color,
}) async {
  final croppedFile = await ImageCropper.cropImage(
    sourcePath: path,
    cropStyle: cropStyle,
    aspectRatioPresets: Platform.isAndroid
        ? [
            CropAspectRatioPreset.square,
            CropAspectRatioPreset.ratio3x2,
            CropAspectRatioPreset.original,
            CropAspectRatioPreset.ratio4x3,
            CropAspectRatioPreset.ratio16x9
          ]
        : [
            CropAspectRatioPreset.original,
            CropAspectRatioPreset.square,
            CropAspectRatioPreset.ratio3x2,
            CropAspectRatioPreset.ratio4x3,
            CropAspectRatioPreset.ratio5x3,
            CropAspectRatioPreset.ratio5x4,
            CropAspectRatioPreset.ratio7x5,
            CropAspectRatioPreset.ratio16x9
          ],
    androidUiSettings: AndroidUiSettings(
        toolbarTitle: '',
        toolbarColor: color ?? Colors.blueAccent,
        toolbarWidgetColor: Colors.white,
        initAspectRatio: CropAspectRatioPreset.original,
        lockAspectRatio: false),
  );
  return croppedFile;
}
