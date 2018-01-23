# 四城半データ小屋　表示用Railsアプリ
四城半データ小屋は[四畳半魔王城～本日営業中！～](http://blacktea.sakura.ne.jp/teaconvini/)を解析して得られるデータを扱った情報サイトです。  
このプログラムは四城半データ小屋で実際に使用している表示用のRailsアプリです。  
データ小屋の解析部分については[別リポジトリ](https://github.com/white-mns/yojouhan_1_parse)を参照ください。

# サイト
実際に動いているサイトです。  
[四城半データ小屋](http://tkg.mn-s.net/yojouhan_1)

# 動作環境
以下の環境での動作を確認しています  
  
OS:CentOS release 6.5 (Final)  
DB:MySQL  
Ruby:2.0.0
Rails:4.0.2

## 使い方
・Railsの使い方を調べてなんやかんやして自分のRailsアプリが動くようにします。  
・このソースコードをダウンロードします。  

    git clone git://github.com/white-mns/yojouhan_1_rails.git

・動かします。  

    cd yojouhan_1_rails
    ./unicorn start

・動かないので動くまで格闘します。

## 格闘方法
私がデータ小屋を新しく作る度にに行っている格闘風景です。  
ユーザーがグループに所属していたら書き込みできるようにします。  
セキュリティ的にはよろしくないかもしれませんが、編集の利便性を優先します。  
グループへの権限追加なのでそんなに問題はないでしょう。  

    chmod g+w ./ -r

所有者をユーザーapache、グループusersにします。

    chown -R apache:users ./
  
そして、編集しやすくするために等で普段使うユーザーをusersに追加します。

    usermod -aG グループ名 ユーザー名

ここまでは格闘を有利にすすめるための下準備です。ここからが本番です。  

    bundle install

Gemがインストールされます。ここでエラーが出て白目を剥きます。  
`config/database.yml`にサーバーの設定を記述して、以下のコマンドでデータベースとテーブルを作成します。

    bundle exec rake db:create
    bundle exec rake db:migrate

ここでもエラーが出て泡を吐きます。  
最後に、Uniconrサーバーを起動させます。他の方法でRailsが動かせるならUnicornである必要はないです。

    ./unicorn start

ここでもエラーが出ることで、公開前に壮大値が0を下回って`業体滅術`が始まります。  
  
エラーを全て解消したら無事データ小屋の活動開始です。  
デフォルトの設定だと`http://サーバーのアドレス:61000`で画面が見れます。

## 機能の増やし方
scaffoldで必要なものは大体用意されます。  
データ小屋ではテンプレートを使うようにしているので、  
`lib/templates/erb/scaffold/index.html.erb`を参考にデータ小屋っぽいViewが、  
`lib/templates/rails/scaffold_controller/controller.rb`を参考にデータ小屋用のControllerが作成されます。  
生成されたViewとControlloerは`result_no`や`e_no`の記述がダブってたりするので、ダブってるうちの`text`と書いてる行を削除して`number`と書いてる行だけ残します。  

    rails scaffold g テーブル名 result_no:integer generator_no:integer e_no:integer その他パラメーター

また、Modelはテンプレートで作成できなかったので、以下の行をModelの中に記述します。  
これでキャラクター名が関連付けられるようになります。

	belongs_to :p_name,	    :foreign_key => [:e_no, :result_no, :generate_no], :primary_key => [:e_no, :result_no, :generate_no], :class_name => 'Name'

あとは[解析プログラム](https://github.com/white-mns/yojouhan_1_parse)側で解析とアップロード機能を作ってデータを入れれば新しい解析項目が公開されます。

## ライセンス
本ソフトウェアはMIT Licenceを採用しています。 ライセンスの詳細については`LICENSE`ファイルを参照してください。
