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