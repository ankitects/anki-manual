# Windowsの起動の問題

<!-- toc -->

## エラーはないが、アプリが表示されない

Ankiを起動してもエラーメッセージなしに表示されない場合は、次を試すことができます：

- 複数/外部ディスプレイを切断する。
- [最新のAnkiバージョン](https://apps.ankiweb.net/)をインストールする。
- [小数点区切り文字を調整する](https://forums.ankiweb.net/t/windows-update-broke-anki/1822/75)（ピリオドでない場合）。
- Ankiの古い[2.1.35-alternateビルド](https://github.com/ankitects/anki/releases/tag/2.1.35)をインストールする。

## Windows更新

Ankiを起動すると、次のようなメッセージが表示される場合があります：

- _Python DLLの読み込みエラー_
- _api-ms-win....が見つからないため、プログラムを開始できません_
- _スクリプトrunankiの実行に失敗しました_
- _スクリプトpyi_rth_multiprocessingの実行に失敗しました_
- _スクリプトpyi_rth_win32comgenpyの実行に失敗しました_

これらのエラーは通常、コンピュータにWindows更新またはWindowsライブラリが不足しているためです。

Windows更新を開き、システムにすべての更新がインストールされていることを確認してください。インストールが必要なものがあった場合は、インストール後にデバイスを再起動してください。

## Windows 7/8

Windows 7/8では、追加の更新を手動でインストールする必要がある場合があります。次を試してください：

- <https://www.microsoft.com/en-us/download/details.aspx?id=48234>
- <https://aka.ms/vs/15/release/vc_redist.x64.exe>
- <http://www.catalog.update.microsoft.com/Search.aspx?q=kb4474419>
- <http://www.catalog.update.microsoft.com/Search.aspx?q=kb4490628>

## ビデオドライバーの問題

[表示の問題](./display-issues.md)を参照してください。

## 複数のディスプレイ

_LoadLibraryがエラー126で失敗しました_というエラーが表示される場合、これはAnkiが構築されているツールキットが[複数のディスプレイ](https://forums.ankiweb.net/t/error-126-on-open-anki-desktop/13967)で問題を抱えていることが原因である可能性があります。

## アンチウイルス/ファイアウォールソフトウェア

マシン上のサードパーティソフトウェアがAnkiの読み込みを妨げる可能性があります。Ankiの例外を追加するか、アンチウイルス/ファイアウォールを一時的に無効にして、それが役立つかどうかを確認できます。

## 管理者アクセス

一部のユーザーは、Ankiアイコンを右クリックして「管理者として実行」を選択するまで、Ankiが実行されなかったと報告しています。Ankiはすべてのデータをユーザーフォルダに保存し、管理者権限は必要ないはずですが、他のオプションを使い果たした場合に試すことができます。

## 更新後に複数のAnkiインストールが存在する

更新プロセスで複数のAnkiインストール（`C:\Program Files\Anki`と`C:\Program Files (x86)\Anki`内など）が残された場合、それらは動作しない状態のままになり、Ankiはエラーメッセージを表示せずに起動を拒否する可能性があります。

コンピュータからAnkiのすべてのコピーをアンインストールしてみてください。これを行うには、Windows設定 > アプリと機能（またはアプリ > インストール済みアプリ）でそれらを見つけてアンインストールするか、各Ankiプログラムフォルダで`uninstall.exe`を実行します。その後、Ankiを再度インストールしてください。

## デバッグ

ターミナルからAnkiを起動すると、一部のエラーについてもう少し情報が明らかになる場合があります。最新のAnkiバージョンをインストールし、すべてのWindows更新がインストールされていることを確認した後、Ankiを直接実行する代わりに、<kbd>Windows</kbd>キーを押し（またはスタートメニューを開き）、`cmd`と入力して、コマンドプロンプトを起動します。ターミナルウィンドウが開いたら、次のコマンドを貼り付けて<kbd>Enter</kbd>を押します。（Ankiがデフォルト以外の場所にインストールされている場合、パスは異なります。）

```
%LocalAppData%\Programs\Anki\anki-console.bat
```

おそらくAnkiは以前と同じように開くことができませんが、ターミナルウィンドウの出力から問題の原因について何かが明らかになるかもしれません。

## それでもだめな場合

上記の回避策を試してもAnkiを起動できない場合、残り2つのオプションがあります：

- [Pythonから実行する](https://faqs.ankiweb.net/running-from-python.html)ことを試すことができます。
- [2.1.35-alternate](https://github.com/ankitects/anki/releases/tag/2.1.35)や[2.1.15](https://github.com/ankitects/anki/releases/tag/2.1.15)など、古いツールキットで構築された古いAnkiバージョンを試すことができます。