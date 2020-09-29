import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    this.size = 120,
    this.loading = false,
    this.image,
    this.noImage,
    this.noImageWidget,
    this.loadingWidget,
    this.loadingColor,
    this.onTap,
  });
  final double size;
  final bool loading;
  final Widget image;
  final Widget noImage;
  final Widget noImageWidget;
  final Widget loadingWidget;
  final Color loadingColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: size / 2,
        backgroundColor: Colors.transparent,
        child: ClipOval(
            child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            child: ((image == null) && loading == false)
                ? (noImageWidget ?? _noImageWidget())
                : loading == true
                    ? loadingWidget ??
                        CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation(
                            loadingColor ?? Colors.lightBlue,
                          ),
                        )
                    : image,
            onTap: loading != true ? onTap : null,
          ),
        )),
      ),
    );
  }

  Widget _noImageWidget() => Container(
        width: size,
        height: size,
        color: Colors.black.withOpacity(0.2),
        child: noImage ??
            Icon(
              Icons.account_circle,
              color: Colors.black.withOpacity(0.4),
              size: 32,
            ),
      );
}
