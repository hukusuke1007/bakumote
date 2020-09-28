import 'package:bakumote/extensions/context_extension.dart';
import 'package:bakumote/master/assets.dart';
import 'package:bakumote/pages/app_tab_navigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchPage extends TabWidgetPage {
  @override
  void onBottomNavigationTap() {
    // TODO: implement onBottomNavigationTap
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.title),
      ),
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(100, (index) {
          return SearchTile(
            title: 'かおり 20',
            image: Image.asset(
              Assets.womanSample.assetName,
              fit: BoxFit.fitWidth,
            ),
            onTap: () {},
          );
        }),
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
              SizedBox(
                height: 150,
                child: Center(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(radius),
                    ),
                    child: image,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              )
            ],
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
