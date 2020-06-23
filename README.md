
<h2 align="center">Mirai</h2>

![Mirai-app](https://i.gyazo.com/f17e8e08dcc96a2da9fa422c5fb3e13f.gif)


# 概要
**震災遺構や戦跡など人類の負の遺産をレビューできる**Webアプリです。ユーザーは、気になる負の遺産を検索し、それに対しコメントを残すことができます。

# 本番環境
## 🌐 デプロイ先(S3との連携を行っておらず、画像は表示されません)
https://miraiapp.herokuapp.com/

## :memo:テストアカウント
**Email**: test75@gmail.com  
**Password**: NYN0rsnD

# 制作期間
8日間

# 制作背景(意図)
昨今、人類が過去に経験した負の遺産を巡るダークツーリズムが注目を集めています。しかしながら、それにはいくつか課題があります。一点目は、世間から認知されている場所がほんの一部であるということ。二点目は、戦跡に関して、一つの歴史観だけではなく、様々な考えがあるということを知ること。三点目は、月日が流れるにつれて証言者がいなくなり、記憶を継承する機会が減っていることです。私は、これらの課題を少しでも前に進めるために、ITを使って、**負の遺産を記憶する**ためのWebアプリを開発しました。
 
# DEMO

### 1. トップページからログイン

![Mirai-app](https://i.gyazo.com/1dfc8c74e5d9fb4654e82db4d8639ad5.gif)

### 2. 検索欄または一覧から気になる遺産を選ぶ（初期データとして登録されている）

![Mirai-app](https://i.gyazo.com/9b8b3cb81b37e34e24743a877f3947e2.jpg)

### 3.　負の遺産へのレビューを行う

![Mirai-app](https://i.gyazo.com/fedeeba42e1a31c36b52063154e4e8b1.gif)

### （4. ユーザー自ら遺産の追加も可能）

![Mirai-app](https://i.gyazo.com/35ebf5050ef81da56919b575e68ccd4c.png)

# 工夫したポイント
- ローディングアニメーションを実装し、ユーザーにインパクトのあるUIを心がけました。
- 検索には、曖昧検索かつ非同期通信を採用し、ユーザーの使いやすさを重視しました。
- ユーザー自身も自由に負の遺産を投稿できることで、世間から認知されていない場所が改めて認知される機会を作りました。
- レビュー機能を追加し、当事者が当時の記憶を書き残し、また旅行者も感想を書き残せることで、「記憶継承の文化をみんなで作り上げていくサービス」ということを意識しました。
- 機能を絞る事で、老若男女誰もが使いやすいように設計しました。

# 使用技術(開発環境)
Ruby/Ruby on Rails/MySQL/Github/heroku/Visual Studio Code
# 課題や今後実装したい機能
<dl>
  <dt>本番環境で画像が表示されない</dt>
  <dd>S3のストレージと連携させることで、heroku特有のデータベースリセットを回避する</dd>
  <dt>ボランティアガイドの申し込みの手続きが複雑かつ認知されていない</dt>
  <dd>施設の公式アカウントを作成し、ボランティアガイドとユーザーのマッチング機能を実装する</dd>
  <dt>検索方法を増やす</dt>
  <dd>ジャンルテーブルを作成し、ジャンルでユーザーが検索できるようにする</dd>
  <dt>ログイン方法を増やす</dt>
  <dd>APIを用いて、手軽なSNSログインを実装することで、ユーザーの利用率をあげる</dd>
  <dt>遺産の場所が一目でわからない</dt>
  <dd>GoogleMapのAPIを実装し、遺産の場所がすぐにわかるようにしたい</dd>
  <dt>多言語対応していない</dt>
  <dd>英語の翻訳版も載せられるようにしたい</dd>
</dl>
  


# DB設計

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|

### Association
- has_many :comments
- has_many :places

## placesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|string|--------|
|content|text|null: false|
|webpage|string|--------|
|user_id|integer|null: false, foreign_key: true|

### Association
- has_many :comments
- belongs_to :user

<!-- ## areasテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|string|null: false, foreign_key: true|
|content|text|null: false, foreign_key: true|
|webpage|string|--------|

### Association
- has_many :comments -->


## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|place_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :place
