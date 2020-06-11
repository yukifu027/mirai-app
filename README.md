# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# アプリ名
# 概要(このアプリでできることを書いて下さい)
# 本番環境(デプロイ先　テストアカウント＆ID)
# 制作背景(意図)
　⇒どんな課題や不便なことを解決するためにこのアプリを作ったのか。
# DEMO(gifで動画や写真を貼って、ビューのイメージを掴んでもらいます)
　⇒特に、デプロイがまだできていない場合はDEMOをつけることで見た目を企業側に伝えることができます。
# 工夫したポイント
# 使用技術(開発環境)
# 課題や今後実装したい機能

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
