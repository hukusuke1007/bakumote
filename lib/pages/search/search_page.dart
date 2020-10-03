import 'package:bakumote/extensions/context_extension.dart';
import 'package:bakumote/notifiers/users/users_notifier.dart';
import 'package:bakumote/notifiers/users/users_state.dart';
import 'package:bakumote/pages/app_tab_navigator.dart';
import 'package:bakumote/pages/user_profile/user_profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

class SearchPage extends TabWidgetPage {
  const SearchPage({Key key}) : super(key: key);

  @override
  void onBottomNavigationTap() {
    // TODO: implement onBottomNavigationTap
  }

  @override
  Widget build(BuildContext context) {
    final provider = usersNotifierProvider;
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.title),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: (context.deviceWidth / 2) / 220, //0.9,
        children:
            useProvider(provider.state.select((UsersState state) => state))
                .users
                .map((e) {
          return Hero(
            tag: e.id,
            child: SearchTile(
              key: UniqueKey(),
              title: e.nameWithAge,
              image: Image.asset(
                e.imagePath,
                fit: BoxFit.cover,
              ),
              onTap: () {
                Navigator.of(context, rootNavigator: true).push<void>(
                  CupertinoPageRoute(
                    builder: (BuildContext context) => UserProfilePage(
                      heroTag: e.id,
                      user: e,
                    ),
                  ),
                );
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}

class SearchTile extends HookWidget {
  const SearchTile({
    Key key,
    @required this.title,
    @required this.image,
    this.onTap,
  }) : super(key: key);

  final String title;
  final Widget image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    const radius = 16.0;
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          borderRadius: BorderRadius.circular(radius),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(radius),
                    ),
                    child: image,
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            ],
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
