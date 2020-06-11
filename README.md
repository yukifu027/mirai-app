![Mirai-app](https://i.gyazo.com/f17e8e08dcc96a2da9fa422c5fb3e13f.gif)

<h2 align="center">Mirai</h2>

# 概要
**震災遺構や戦跡など人類の負の遺産をレビューできる**Webアプリです。ユーザーは、気になる負の遺産を検索し、それに対しコメントを残すことができます。

# 本番環境
## 🌐 デプロイ先
https://miraiapp.herokuapp.com/

## :memo:テストアカウント
**Email**: test75@gmail.com  
**Password**: NYN0rsnD

# 制作背景(意図)
　⇒どんな課題や不便なことを解決するためにこのアプリを作ったのか。
昨今、人類が過去に経験した負の遺産を巡るダークツーリズムが注目を集めています。しかしながら、それにはいくつか課題があります。一点目は、世間から認知されている場所がほんの一部であるということ。二点目は、戦跡に関して、一つの歴史観だけではなく、様々な考えがあるということを知ること。三点目は、月日が流れるにつれて証言者がいなくなり、記憶を継承する機会が減っていることです。私は、これらの課題を少しでも前に進めるために、ITを使って、**負の遺産を記憶する**ためのWebアプリを開発しました。
 
# DEMO(gifで動画や写真を貼って、ビューのイメージを掴んでもらいます)
　⇒特に、デプロイがまだできていない場合はDEMOをつけることで見た目を企業側に伝えることができます。
# 工夫したポイント
# 使用技術(開発環境)
Ruby/Ruby on Rails/MySQL/Github/heroku/Visual Studio Code
# 課題や今後実装したい機能
本番環境で画像が表示されない  
S3のストレージと連携させる

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
