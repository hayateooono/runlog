
# アプリケーション名
Run log

# アプリケーション概要
日々のランニングを投稿しながら、データ管理を行い、SNS機能を持っている。
他者のデータを参考にしたり、刺激を受けたり、自身のモチベーションを上げることができる。

# URL
https://runlog.herokuapp.com/
# テスト用アカウント
* Basic認証パスワード 2222
* Basic認証ID admin
* メールアドレス hoge@hoge.com
* パスワード 111111

# 利用方法

## ランニング結果を投稿
1.トップページ(一覧ページ)のヘッダーから新規登録を行う
2.新規投稿ボタンから、ランニング内容(タイトル、日時、タイム、距離、場所、画像、内容)を入力し投稿する
3.ランニング結果がマイページに表示される
4.他者の投稿にコメントできる

## データ管理
1.マイページにて投稿したデータが一覧表示される<br>
2.総走行距離、総ランニング回数、平均ペースが表示される。<br>
3.月別にデータが管理されている。

# アプリケーションを作成した背景
このアプリはランニングの記録を残し、他者とつながりランニングのモチベーションを上げたいという人の課題を解決するために作成した。<br>
現状多くのランナーは、ランニングの記録をつけるアプリがないためにTwitterやInstagram等で記録を残しています。しかし、これらのSNSはデータの蓄積、検索が難しいという課題がある。また一方で、ランニング時計の会社アプリを出しているサービスも有る。時計とアプリが連動し自動でデータを録ってくれるが、SNS要素がなく面白みに欠け、モチベーションの維持が難しい。<br>
こういった背景から、データ管理機能をもつランニング記録SNSがあればデータを用いて今後のランニングに活かし、他者とつながることでモチベーションの向上になると考え開発することにした。

# 洗い出した要件
[要件定義書](https://docs.google.com/spreadsheets/d/1k2exXUu1cAK9fVoHnMEpZ8oiJAPsyN3L83bhWjPSpH8/edit#gid=1142634503)

# 実装した機能についての画像やGIF及びその説明
* ### トップページに投稿データが一覧される
[![Image from Gyazo](https://i.gyazo.com/9f9203cf39a28e5b6993d5205869d9b6.gif)](https://gyazo.com/9f9203cf39a28e5b6993d5205869d9b6)

* ### 投稿をクリックすると詳細ページに遷移される
[![Image from Gyazo](https://i.gyazo.com/6be82122566cd4420ad106615a737e8b.gif)](https://gyazo.com/6be82122566cd4420ad106615a737e8b)

* ### 投稿にはコメントができる
[![Image from Gyazo](https://i.gyazo.com/2a49094db508b8593a933eccaab2f3a1.gif)](https://gyazo.com/2a49094db508b8593a933eccaab2f3a1)

* ### マイページには投稿内容のデータ(総走行距離、総ランニング回数、平均ペース)と月別の走行距離がグラフで表示される
[![Image from Gyazo](https://i.gyazo.com/cbb1f3d44ed21d1b41c1edfc4e41580b.gif)](https://gyazo.com/cbb1f3d44ed21d1b41c1edfc4e41580b)

* ### 月別にデータをタブで表示
[![Image from Gyazo](https://i.gyazo.com/a5ce3b687c82a6e697e50378a876a25b.gif)](https://gyazo.com/a5ce3b687c82a6e697e50378a876a25b)

* ### 各月ごとのデータが表示される
[![Image from Gyazo](https://i.gyazo.com/a7b1450d7c5061fbb74b6db1737a2cb3.gif)](https://gyazo.com/a7b1450d7c5061fbb74b6db1737a2cb3)
* ### マイページ下部に自身の投稿が一覧表示される
[![Image from Gyazo](https://i.gyazo.com/252c3a1267ed5dce09dd29ea4563602e.gif)](https://gyazo.com/252c3a1267ed5dce09dd29ea4563602e)
* ### 投稿ボタンを押すと投稿画面ヘ遷移する
[![Image from Gyazo](https://i.gyazo.com/8f99552118094d1f5bd27141941699d0.gif)](https://gyazo.com/8f99552118094d1f5bd27141941699d0)

# 実装予定の機能
出場した大会のデータ管理機能を実装予定。<br>
ランニング内容とは別に管理し、過去の結果を一覧で表示する。<br>
過去のデータをもとに、反省、計画、目標設定、アクションを起こすためにデータを残します。<br>
別で管理する理由はすぐに確認できるためです。年に数回しかない大会は日々のランニングデータの中に埋もれてしまうため別で管理します。

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/2ea30a366dfc567ab16e74d982421aaf.png)](https://gyazo.com/2ea30a366dfc567ab16e74d982421aaf)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/2b5718e48df71dc148135231b282b55a.png)](https://gyazo.com/2b5718e48df71dc148135231b282b55a)

# 開発環境
* フロントエンド
  HTML,CSS,JavaScript
* バックエンド
  Ruby,Ruby on Rails
* インフラ
  MySQL
* テキストエディタ
  VScode
* タスク管理
  GitHub

# ローカルでの動作方法
% git clone http://github.com/runlog<br>
% cd runlog<br>
% bundle install<br>
% yarn install

# 工夫したポイント
* ## **データを月別に表示した**<br>
ただデータを羅列させるのではなく、月別に管理、表示させた。
なぜなら羅列しただけでは、データがごちゃつき、検索が難しくなるから。
具体的には、タブを用意し容易にデータの閲覧ができるようにした。<br>
大変だった点は、月ごとにデータを取得し表示すること。
if文で条件分岐すればいいのか、group文で絞り込むのか等トライ＆エラーを繰り返しwhere文でデータの取得をすることで解決できた。

* ## **グラフを導入し、視認性を上げた**<br>
chartkickを使い、グラフを表示した。<br>
なぜなら、数値だけでは分かりにくく見づらいから導入した。
グラフを導入することで、視覚からイメージしやすいように工夫した。<br>
大変だった点はカリキュラムで習わなかった分野のため知識がなかったこと。
自分で方法を調べ、表示に成功した。

* ## **平均ペースの取得**<br>
より細かなデータ分析をするために走った時間と距離から平均ペースを算出し表示した。<br>
大変だった点は、時間計算をコードで表示すること。
タイムを時間、分、秒に分けて計算し表示させる点に苦労した。
トライ＆エラーを繰り返しながらfloorやtruncate、abs、round等を駆使し表示に成功した。
