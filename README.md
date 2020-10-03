# bakumote

「出会い系アプリで全然出会えないから爆モテするアプリを作ったww」企画

[YouTube](TODO)

チャンネル登録よろしくお願いします。

## 設計図

<img src="./figure/design.png" width="80%">

Riverpod + StateNotifierで実装

## 使い方

### 確認済みビルド環境

```sh
$ flutter doctor
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 1.22.0, on Mac OS X 10.15.6 19G2021, locale ja-JP)
 
[✓] Android toolchain - develop for Android devices (Android SDK version 28.0.3)
[✓] Xcode - develop for iOS and macOS (Xcode 12.0.1)
[✓] Android Studio (version 4.0)
[!] IntelliJ IDEA Community Edition (version 2018.3.3)
    ✗ Flutter plugin not installed; this adds Flutter specific functionality.
    ✗ Dart plugin not installed; this adds Dart specific functionality.
[✓] VS Code (version 1.49.2)

! Doctor found issues in 1 category.
```

Flutter SDKとそれをビルドできるIDEが必要です。

### 実行

```sh
# Install plugins.
$ flutter pub get

# Launching
$ flutter run

# Launching both iOS and Android.
$ flutter run -d all
```

## その他

freezedとObjectBoxのコード生成コマンドと、l10n文言ファイルのコード生成コマンドをshellにまとめている。

```sh
# freezedとObjectBoxのコード生成
./sh/build_runner

# l10n文言ファイルのコード生成
./sh/generate_l10n_message
```

## 参考文献

[Provider, but different | Riverpod](https://riverpod.dev/)

[Flutterの状態管理手法の選定](https://medium.com/flutter-jp/state-1daa7fd66b94)