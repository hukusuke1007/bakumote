import 'package:bakumote/extensions/index.dart';
import 'package:bakumote/helpers/talk_helper.dart';
import 'package:bakumote/notifiers/messages/messages_notifier.dart';
import 'package:bakumote/notifiers/messages/messages_state.dart';
import 'package:bakumote/notifiers/rooms/rooms_state.dart';
import 'package:bakumote/pages/talk/talk_page_notifier.dart';
import 'package:bakumote/widgets/smart_refresher_custom.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class TalkPage extends HookWidget {
  const TalkPage({
    Key key,
    @required this.roomState,
  }) : super(key: key);

  final RoomState roomState;

  @override
  Widget build(BuildContext context) {
    final notifier = useProvider(talkPageNotifierProvider);
    final messages = useProvider(messagesNotifierProvider.state
        .select((MessagesState state) => state)).messages;
    print('messages ${messages.length}');
    return Scaffold(
      appBar: AppBar(
        title: Text(roomState.name),
      ),
      body: GestureDetector(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              flex: 7,
              child: SmartRefresher(
                controller: notifier.refreshController,
                enablePullDown: false,
                enablePullUp: true,
                footer: const SmartRefreshFooter(),
                reverse: true,
                onLoading: () async {
                  await notifier.loadPaging();
                  print('onLoading');
                },
                child: ListView.builder(
                  controller: notifier.scrollController,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    final data = messages[index];
                    return TalkTile(
                      key: UniqueKey(),
                      isFriend: index % 2 == 0,
                      imageName: roomState.imageName,
                      message: data.text,
                      date: TalkHelper.getDateLabel(context, data.createdAt),
                      isRead: data.isRead,
                    );
                  },
                  itemCount: messages.length,
                ),
              ),
            ),
            SizedBox(
              height: 72,
              child: Center(
                child: SizedBox(
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Flexible(
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(
                            minHeight: 32,
                            maxHeight: 64,
                          ),
                          child: CupertinoTextField(
                            textAlign: TextAlign.start,
                            controller: notifier.textEditingController,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.withOpacity(0.3)),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(24)),
                              color: Colors.grey.withOpacity(0.1),
                            ),
                            padding: const EdgeInsets.all(8),
                            style: const TextStyle(
                                fontSize: 16, color: Colors.black),
                            placeholder: context.l10n.messagePlaceholder,
                            minLines: 1,
                            maxLines: 256,
                            clearButtonMode: OverlayVisibilityMode.editing,
                            textInputAction: TextInputAction.newline,
                            onChanged: (value) {
                              print('onChanged $value');
                            },
                            onTap: () {
                              print('onTap');
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                        width: 72,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4)
                              .copyWith(right: 8),
                          child: OutlineButton(
                            shape: const StadiumBorder(),
                            highlightedBorderColor: Colors.transparent,
                            borderSide:
                                const BorderSide(color: Colors.transparent),
                            child: Text(
                              context.l10n.send,
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.grey),
                            ),
                            onPressed: () {
                              notifier.onSend();
                              context.hideKeyboard();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        onTap: () => context.hideKeyboard(),
      ),
    );
  }
}

class TalkTile extends HookWidget {
  const TalkTile({
    Key key,
    @required this.isFriend,
    this.imageName,
    @required this.message,
    @required this.date,
    this.isRead = false,
  }) : super(key: key);

  final bool isFriend;
  final String imageName;
  final String message;
  final String date;
  final bool isRead;

  @override
  Widget build(BuildContext context) {
    const radius = 16.0;
    if (isFriend) {
      return Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: SizedBox(
              width: 40,
              height: 40,
              child: CircleAvatar(
                backgroundImage: Image.asset(imageName).image,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Bubble(
                  margin:
                      const BubbleEdges.symmetric(vertical: 8, horizontal: 16),
                  padding: const BubbleEdges.all(8),
                  alignment: Alignment.topLeft,
                  radius: const Radius.circular(radius),
                  elevation: 1,
                  nip: BubbleNip.leftBottom,
                  color: Colors.grey[350],
                  child: SelectableText(
                    message,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                  child: Text(
                    date,
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                )
              ],
            ),
          )
        ],
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Bubble(
          margin: const BubbleEdges.symmetric(vertical: 8, horizontal: 16),
          padding: const BubbleEdges.all(8),
          alignment: Alignment.topRight,
          radius: const Radius.circular(radius),
          elevation: 1,
          nip: BubbleNip.rightBottom,
          color: Colors.blueAccent,
          child: SelectableText(
            'こんにちは！',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
          child: Text(
            '10:20',
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
        )
      ],
    );
  }
}
