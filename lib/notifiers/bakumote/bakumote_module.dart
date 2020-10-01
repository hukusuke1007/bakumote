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
    bakumoteRepository.saveMessage(
        userId: user.id, roomId: roomId, text: 'こんにちは！');
    // TODO(shohei): 通知
  }

  void reset() => bakumoteRepository.reset();
}
