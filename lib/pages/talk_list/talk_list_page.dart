import 'package:bakumote/extensions/index.dart';
import 'package:bakumote/helpers/talk_helper.dart';
import 'package:bakumote/notifiers/rooms/rooms_notifier.dart';
import 'package:bakumote/notifiers/rooms/rooms_state.dart';
import 'package:bakumote/pages/app_tab_navigator.dart';
import 'package:bakumote/pages/talk/talk_page.dart';
import 'package:bakumote/pages/talk_list/talk_list_page_notifier.dart';
import 'package:bakumote/widgets/circle_text.dart';
import 'package:bakumote/widgets/smart_refresher_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class TalkListPage extends TabWidgetPage {
  const TalkListPage({Key key}) : super(key: key);

  @override
  void onBottomNavigationTap() {
    // TODO: implement onBottomNavigationTap
  }

  @override
  Widget build(BuildContext context) {
    final notifier = useProvider(talkListPageNotifierProvider);
    final rooms = useProvider(
        roomsNotifierProvider.state.select((RoomsState state) => state)).rooms;
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.talkList),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: SmartRefresher(
          controller: notifier.refreshController,
          enablePullDown: true,
          enablePullUp: true,
          header: const SmartRefreshHeader(),
          footer: const SmartRefreshFooter(),
          onRefresh: () async {
            await notifier.onRefresh();
          },
          onLoading: () async {
            await notifier.onLoadMore();
          },
          child: ListView.separated(
            controller: notifier.scrollController,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              final room = rooms[index];
              return ListTile(
                key: UniqueKey(),
                leading: SizedBox(
                  width: 56,
                  height: 56,
                  child: CircleAvatar(
                    backgroundImage: Image.asset(
                      room.imageName,
                      fit: BoxFit.fill,
                    ).image,
                  ),
                ),
                title: Text(
                  room.name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  room.latestMessage,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      TalkHelper.getDateTalkListLabel(
                          context, room.latestMessageAt),
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: room.unreadCount > 0
                          ? CircleText(
                              size: 28,
                              color: Colors.redAccent,
                              child: Text(
                                room.unreadLabel,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )
                          : const SizedBox.shrink(),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.of(context, rootNavigator: true).push<void>(
                    CupertinoPageRoute(
                      builder: (context) => TalkPage(
                        roomState: room,
                      ),
                    ),
                  );
                },
              );
            },
            separatorBuilder: (context, _) => const Divider(),
            itemCount: rooms.length,
          ),
        ),
      ),
    );
  }
}
