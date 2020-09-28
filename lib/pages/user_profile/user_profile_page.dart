import 'package:bakumote/extensions/context_extension.dart';
import 'package:bakumote/master/assets.dart';
import 'package:bakumote/notifiers/like/like_notifier.dart';
import 'package:bakumote/notifiers/like/like_state.dart';
import 'package:bakumote/notifiers/users/user_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

class UserProfilePage extends HookWidget {
  const UserProfilePage({
    Key key,
    @required this.heroTag,
    @required this.userState,
  }) : super(key: key);

  final String heroTag;
  final UserState userState;

  @override
  Widget build(BuildContext context) {
    final notifier = useProvider(likeNotifierProvider);
    final isLiked = useProvider(
        likeNotifierProvider.state.select((LikeState state) => state)).isLiked;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 9,
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  stretch: true,
                  expandedHeight: 300,
                  backgroundColor: Colors.transparent,
                  leading: IconButton(
                    alignment: Alignment.center,
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.grey,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  flexibleSpace: FlexibleSpaceBar(
                    stretchModes: const [
                      StretchMode.zoomBackground,
                    ],
                    background: Hero(
                      tag: heroTag,
                      child: SizedBox(
                        child: Image.asset(
                          Assets.womanSample.assetName,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    <Widget>[
                      Container(
                        margin: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                userState.nameWithAgePref,
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Text(
                                userState.description,
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8)
                                  .copyWith(bottom: 2),
                              child: Text(
                                context.l10n.hobby,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: Text(
                                userState.hobby,
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16)
                                  .copyWith(bottom: 2),
                              child: Text(
                                context.l10n.favoriteType,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: Text(
                                userState.favoriteType,
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: SizedBox(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: SizedBox(
                  width: 200,
                  child: RaisedButton(
                    color: isLiked ? Colors.grey : Colors.redAccent,
                    shape: const StadiumBorder(),
                    child: Text(
                      isLiked ? context.l10n.liked : context.l10n.like,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: notifier.onLiked,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
