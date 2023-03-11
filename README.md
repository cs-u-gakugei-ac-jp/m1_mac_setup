# Mac の Setup 手順

## 設定の手順

### mac setup file を git clone

`$ git clone https://github.com/a171413/mac_setup.git ~/mac_setup`

### setup.sh を叩く

`$ sh ~/mac_setup/setup.sh`

### app_install.sh を叩く

`$ sh ~/mac_setup/app_install.sh`

tmux を使用する際には、Iterm の設定が必要になるかも…？

## XCode のインストール

AppStore からインストール ← まあまあ時間かかる

インストールが終わったら立ち上げる

なにやら同意を求められるので「同意する」

コンポーネントのインストールが終われば準備終了

## Chrome のインストール

このあとコマンドで勝手にやってくれる

## Microsoft Office のインストール

学芸ポータルのリンクメニュー内「Office365 メール」をクリック

一番上の「サインイン」をクリック

（もしかしたらここで Microsoft アカウントのログインが求められるかも．求められたら従おう）

画面左上のメニューボタンを押し，「Office 365→」をクリック

遷移したページ右上の「Office のインストール」

その後は適当にやってください

## LINE / Slack のインストール

LINE は AppStore からインストールする．https://apps.apple.com/jp/app/line/id539883307?mt=12

Slack はコマンドで勝手にインストールしてくれる

## Iterm のインストール

https://www.iterm2.com/

コマンドで勝手にインストールしてくれる

## Alfred のインストール

- App store からインストールする。
  https://itunes.apple.com/jp/app/alfred/id405843582?mt=12&ign-mpt=uo%3D4

- Spot Light を起動しないように、Mac のデフォルトのショートカットキーを削除する。<br />
  →「システム環境設定」→「キーボード」→「ショートカット」→「Spotlight」→「Spotlight 検索を表示」のチェックを外す

- Alfred の Preferences から Control + Space に Alfred を割り当てる。

## Tableplus のインストール

https://tableplus.io/

コマンドで勝手にインストールしてくれる

## MySQL Workbench のインストール

https://dev.mysql.com/downloads/workbench/

コマンドで勝手にインストールしてくれる

## Virtual Box のインストール

https://www.virtualbox.org/

コマンドで勝手にインストールしてくれる

## Vagrant のインストール

https://www.vagrantup.com/

コマンドで勝手にインストールしてくれる(AppleSiliconMac では使えないのでエラーとなるが無視で OK)

## Docker のインストール

dockerHub に登録するとなお良い（イメージとか共有できる）

### docker インストール

https://docs.docker.com/docker-for-mac/install/

コマンドで勝手にインストールしてくれる

### dockerHub 登録

https://hub.docker.com/

## IntelliJ Ultimate のインストール

- 学生アカウント用でインストールする。(1 年に 1 回，更新しないと使えなくなるから登録したメールアカウントは年度変わる頃に要チェック)

https://qiita.com/tetrapod117/items/92f965cf1928739b70e4

- メモリの割り当て量を増やす。
  →2048MB くらいあれば大丈夫そう（マシンに余裕があれば 4096 くらいにしよう）

## iTerm2 の設定　

```
Preferencesを開き、（macなら⌘+,で起動できる）
1.
General→Selection
"Applications ing terminal may access clipboard" にチェックを入れる
2.
General→Window
"Native full screen windows" にチェックを入れる
(3.tmuxがうまく起動しない人は)
General→tmux
でゴニョゴニョすると毎回tmuxを打たなくても勝手に起動してくれる
```

![画像](https://user-images.githubusercontent.com/21353481/55887806-2d7a2d00-5be9-11e9-8879-d8f704e626c2.png)
→Color Presets に Dracula が出てこない人は佐藤まで

![画像](https://user-images.githubusercontent.com/21353481/55887838-3cf97600-5be9-11e9-91da-8bb775606f02.png)
→font の設定欄は iTerm2 のバージョンによって多少変わる．設定するフォントは`Source Code Pro for Powerline`の 14pt が良いと思う（趣味の領域）

## FAQ

もし tmux が起動しなくなったら
`$ sudo chmod 1777 /private/tmp`をやってみる
