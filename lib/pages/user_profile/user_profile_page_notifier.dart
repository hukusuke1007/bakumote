import 'package:bakumote/notifiers/bakumote/bakumote_module.dart';
import 'package:bakumote/notifiers/like/like_notifier.dart';
import 'package:bakumote/repositories/bakumote_repository/entities/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'user_profile_page_notifier.freezed.dart';

final userProfilePageNotifierProvider = StateNotifierProvider.family
    .autoDispose<UserProfilePageNotifier, User>(
        (ref, userState) => UserProfilePageNotifier(ref.read, userState));

@freezed
abstract class UserProfilePageState with _$UserProfilePageState {
  const factory UserProfilePageState({
    @Default(false) bool isLoading,
  }) = _UserProfilePageState;
}

class UserProfilePageNotifier extends StateNotifier<UserProfilePageState>
    with LocatorMixin {
  UserProfilePageNotifier(
    this._read,
    this.user,
  ) : super(const UserProfilePageState());

  final Reader _read;
  final User user;
  LikeNotifier get likeNotifier => _read(likeNotifierProvider(user));
  BakumoteModule get bakumoteModule => _read(bakumoteModuleProvider);

  void onLike() {
    if (likeNotifier.state.isLiked) {
      return;
    }
    likeNotifier.like();
    bakumoteModule.createRoomAndNewMessage(user.id);
  }
}
