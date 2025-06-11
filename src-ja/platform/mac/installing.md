# macOSでのAnkiのインストールとアップグレード

<!-- toc -->

## 要件

macOSバージョンの要件はダウンロードページに記載されています。

古いマシンを使用している場合は、[リリースページ](https://github.com/ankitects/anki/releases)から古いバージョンを入手できます。24.11以前のQt5ビルドは、macOS 10.14以降をサポートしています。macOSが10.10から10.13の間の場合は、[Anki 2.1.35-alternate](https://github.com/ankitects/anki/releases/tag/2.1.35)を使用する必要があります。

## インストール

1. <https://apps.ankiweb.net>からAnkiをダウンロードします。
2. ファイルをデスクトップまたはダウンロードフォルダに保存します。
3. それを開き、AnkiをApplicationsフォルダまたはデスクトップにドラッグします。
4. 配置した場所でAnkiをダブルクリックします。

## アップグレード

アップグレードするには、Ankiが開いている場合は閉じてから、上記の手順に従ってください。Ankiアイコンを以前保存した同じ場所にドラッグし、プロンプトが表示されたら古いバージョンを上書きします。カードデータは保持されます。

## Homebrew

[Homebrew](https://brew.sh/)ユーザーは、好みのターミナルアプリケーションで`brew install --cask anki`を使用してAnkiをインストールできます。

アップグレードは`brew upgrade`を使用して行うことができ、アンインストールには`brew uninstall --cask anki`を使用します。

## アドオンの互換性

一部のアドオンは、最新のAnkiリリースで常に動作するとは限りません。最新のAnkiバージョンにアップグレードして、なくてはならないアドオンが動作しなくなった場合は、[リリースページ](https://github.com/ankitects/anki/releases)から古いAnkiバージョンをダウンロードできます。

## 問題

Ankiのインストールまたは起動時に問題が発生した場合は、以下を参照してください：
- [表示の問題](display-issues.md)