import 'dart:math';

import 'package:bakumote/repositories/bakumote_repository/bakumote_repository.dart';
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

  Future<void> createRoomAndNewMessage(User user) async {
    final num = Random().nextInt(5);
    await Future<void>.delayed(Duration(seconds: num));
    final roomId = bakumoteRepository.createRoom(user.id);
    bakumoteRepository
      ..saveMessage(userId: user.id, roomId: roomId, text: 'こんにちは！')
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
      // TODO(shohei): 女の子から連絡
      bakumoteRepository.saveMessage(
          userId: friendId, roomId: roomId, text: 'えーそんなことないですよ！');
    });
  }

  void reset() => bakumoteRepository.reset();
}
