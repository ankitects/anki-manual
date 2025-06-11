# AnkiがGnome/LinuxでGTKテーマを認識しない

この問題は、AnkiにGTKテーマが何であるかを明示的に伝えることで回避できます。ターミナルで次のコマンドを実行してください：

```shell
theme=$(gsettings get org.gnome.desktop.interface gtk-theme)
echo "gtk-theme-name=$theme" >> ~/.gtkrc-2.0
echo "export GTK2_RC_FILES=$HOME/.gtkrc-2.0" >> ~/.profile
```

その後、コンピュータからログアウトして再度ログインすると、AnkiはGTKテーマを認識するはずです。