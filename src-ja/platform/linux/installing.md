# LinuxでのAnkiのインストールとアップグレード

<!-- toc -->

## 要件

パッケージ版は、glibcと、libwayland-clientやsystemdなどの一般的なライブラリを備えた最新の64ビットIntel/AMD Linuxが必要です。異なるアーキテクチャ（ARM/AArch64など）や最小限のLinuxディストリビューションを使用している場合、パッケージ版を使用することはできませんが、代わりに[Python wheels](https://betas.ankiweb.net/#via-pypipip)を使用できる場合があります。

DebianとUbuntuや[Linuxが有効になっているChromebook](https://support.google.com/chromebook/answer/9145439?)などの派生版では、インストール前に以下を使用してください：

```shell
sudo apt install libxcb-xinerama0 libxcb-cursor0 libnss3
```

インストール後にAnkiが起動しない場合は、[他のライブラリが不足している](./missing-libraries.md)可能性があります。

Ubuntu 24.04でAnkiが起動しない場合は、[このスレッド](https://forums.ankiweb.net/t/issues-running-on-ubuntu-24-04/40974)を参照してください。

Ankiのビルドシステムはglibcのみをサポートしているため、muslベースのディストリビューションは現在サポートされていません。

## インストール

Ankiをインストールするには：

1. <https://apps.ankiweb.net>からAnkiをダウンロードフォルダにダウンロードします。
2. zstdがシステムにまだインストールされていない場合は、インストールする必要があります（例：`sudo apt install zstd`）。
3. ターミナルを開き、適切にファイル名を置き換えて、次のコマンドを実行します。

```shell
tar xaf Downloads/anki-2XXX-linux-qt6.tar.zst
cd anki-2XXX-linux-qt6
sudo ./install.sh
```

一部のLinuxシステムでは、`tar xaf --use-compress-program=unzstd`を使用する必要があるかもしれません。

4. `anki`と入力してEnterキーを押すことでAnkiを起動できます。問題が発生した場合は、左側のリンクを参照してください。

## アップグレード

過去に.deb/.rpm/などからAnkiを実行していた場合は、ここで提供されるパッケージをインストールする前に、システムバージョンを削除してください。

以前のパッケージからアップグレードする場合は、インストール手順を繰り返すだけで最新バージョンにアップグレードできます。ユーザーデータは保持されます。

以前のバージョンにダウングレードしたい場合は、[最初にダウングレード](http://changes.ankiweb.net)してください。

## アドオンの互換性

一部のアドオンは、最新のAnkiリリースで常に動作するとは限りません。最新のAnkiバージョンにアップグレードして、なくてはならないアドオンが動作しなくなった場合は、[リリースページ](https://github.com/ankitects/anki/releases)から古いAnkiバージョンをダウンロードできます。

## 問題

Ankiのインストールまたは起動時に問題が発生した場合は、次のページを参照してください：

- [不足しているライブラリ](missing-libraries.md)
- [表示の問題](display-issues.md)
- [空白のメインウィンドウ](blank-window.md)
- [Linuxディストリビューションパッケージ](distro-packages.md)
- [不正なGTKテーマ](gtk-theme.md)
- [Wayland](wayland.md)
- [入力方法](input-methods.md)