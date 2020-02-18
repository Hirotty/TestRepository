# Docker
## Windows PCへのインストール
* Windows10 Proの場合：Docker Desktop for Windows をインストール
* Windows10 Homeの場合：Docker Toolbox をインストール

## Docker Toolboxのインストール
自分のPCはWindows10 Homeのため、Docker Toolboxをインストールしてみます
1. CPUの仮想が有効化されてるか確認
  * タスクマネージャ>パフォーマンス>CPUの画面を確認
  * 画面右下が「仮想化：有効(Enabled)」になっていればOK
2. Docker Toolboxのインストーラーをダウンロード
  * [こちら]からダウンロード
  * コンポーネントの選択画面は基本デフォルトのままで問題ない
    * Windows GitとVirtualBoxはインストール済みならチェックは外しておく
  * 「このデバイス ソフトウェアをインストールしますか？」と聞かれた場合、「インストール」をクリック
3. デスクトップ上に以下アプリが作成されていればインストール完了
  * Kitematic (Alpha)
  * Docker Quickstart Terminal
  * (Oracle VM VirtualBox)
4. セットアップ
  * デスクトップ上にある「Docker Quickstart Terminal」をダブルクリック
  * クジラの絵とともに「Start interactive shell」 の文字が出てくればセットアップ完了
  * `docker run hello-world` のコマンドを実行
    * Hello from Docker! と表示されていれば正常終了

## DBコンテナを起動してみる
まずはDockerイメージをDockerHubからダウンロードします
1. `docker search mysql`のコマンドを実行し、「`mysql`」イメージがDockerHub上に存在するか確認する
  * docker search [イメージ名] で対象のイメージ名を検索することができる
2. `docker pull mysql`のコマンドを実行
  * docker pull [イメージ名]で、DockerHubよりイメージをダウンロードしてくる
3. `docker run`コマンドを用いてDBコンテナを起動する
  * MySQLの場合、コマンド実行時にパスワードを設定しておく必要がある
  * パスワード設定のための環境変数は`MYSQL_ROOT_PASSWORD` `MYSQL_ALLOW_EMPTY_PASSWORD` `MYSQL_RANDOM_ROOT_PASSWORD`のいずれか
    * `MYSQL_ROOT_PASSWORD`
    * `MYSQL_ALLOW_EMPTY_PASSWORD`
    * `MYSQL_RANDOM_ROOT_PASSWORD`

[DTB_install]:https://qiita.com/str416yb/items/8ab9594d2439541401af "Docker Toolboxのインストール手順"
