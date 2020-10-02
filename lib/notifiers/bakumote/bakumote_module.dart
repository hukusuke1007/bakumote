import 'dart:math';

import 'package:bakumote/helpers/hash_helper.dart';
import 'package:bakumote/repositories/bakumote_repository/bakumote_repository.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/bakumote_message/bakumote_messages.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'bakumote_module.freezed.dart';

final bakumoteModuleProvider =
    StateNotifierProvider<BakumoteModule>((ref) => BakumoteModule(ref.read));

@freezed
abstract class BakumoteModuleState with _$BakumoteModuleState {
  const factory BakumoteModuleState() = _BakumoteModuleState;
}

class BakumoteModule extends StateNotifier<BakumoteModuleState>
    with LocatorMixin {
  BakumoteModule(
    this._read,
  ) : super(const BakumoteModuleState());

  final Reader _read;
  BakumoteRepository get bakumoteRepository =>
      _read(bakumoteRepositoryProvider);

  BakumoteMessages _bakumoteMessages;

  Future<void> load() async {
    _bakumoteMessages = await bakumoteRepository.loadBakumoteMessages();
  }

  Future<void> createRoomAndNewMessage(User user) async {
    final num = Random().nextInt(5);
    await Future<void>.delayed(Duration(seconds: num));
    final roomId = bakumoteRepository.createRoom(user.id);
    bakumoteRepository
      ..saveMessage(
        userId: user.id,
        roomId: roomId,
        text: _messageText(_bakumoteMessages.greetings),
      )
      ..saveCounter(incrementUnreadCount: 1);
    // TODO(shohei): 通知
  }

  Future<void> sendMessage({
    @required String myProfileId,
    @required String text,
    @required String friendId,
    @required String roomId,
  }) async {
    if (text == null || text.isEmpty) {
      return;
    }
    bakumoteRepository.saveMessage(
        userId: myProfileId, roomId: roomId, text: text);
    Future<void>.delayed(const Duration(seconds: 1), () {
      final friendText = _bakumoteText(friendId);
      if (friendText != null) {
        bakumoteRepository
          ..saveMessage(
            userId: friendId,
            roomId: roomId,
            text: _bakumoteText(friendId),
          )
          ..saveUserMetadata(friendId, incrementMessageCount: 1);
      }
    });
  }

  void reset() => bakumoteRepository.reset();

  String _messageText(List<BakumoteMessage> messages) {
    final index = Random().nextInt(messages.length);
    return messages[index].text;
  }

  String _bakumoteText(String userId) {
    final userMetadata = bakumoteRepository.loadUserMetadata(userId);
    final messageCount = userMetadata != null ? userMetadata.messageCount : 0;
    if (messageCount == 0) {
      return _messageText(_bakumoteMessages.questions);
    } else if (messageCount == 1) {
      return _messageText(_bakumoteMessages.thoughts);
    } else if (messageCount == 2) {
      return 'もしよければLINE交換しませんか？';
    } else if (messageCount == 3) {
      return 'これがLINEのIDです！\n${HashHelper.shortUuid()}';
    } else if (messageCount == 4) {
      return '連絡まっています^ ^';
    }
    return null;
  }
}
