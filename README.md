# アプリケーション名 
FOR-CG
# アプリケーション概要
介護を支援するために作成したもの
# URL

# テスト用アカウント

Basic認証　ID:admin パスワード：aaaa
# 利用方法
新規登録ボタンを押し、必須項目を入力するとしようできる
# 目指した課題解決
少子高齢化や介護士の人材不足、作業のアナログを解決
# 洗い出した要件
報連相、確認事項、登録作業、スケジュール管理
# 実装した機能についての画像やGIFおよびその説明

# 実装予定の機能
計算機能

# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

  
### Association
- has_many :rooms
- has_many :messages
- has_many :conditions
- has_many :plans
- has_many :addresses



## rooms テーブル

| Column  | Type       | Options                        |
| --------|------------|--------------------------------|
| name    | string     | null: false                    |
| user    | references | null: false, foreign_key: true |

### Association
- belongs_to :users
- has_many :messages


## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     | null: false                    |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |


### Association
- belongs_to :room
- belongs_to :user

## conditions テーブル

| Column                | Type       | Options                       |
| ----------------------| -----------| ------------------------------|
| given_name            | string     | null: false                   |
| get_up_id             | integer    | null: false                   |
| breakfast_id          | integer    | null: fals                    |
| first_dentifrice_id   | integer    | null: false                   |
| first_toilet_id       | integer    | null: false                   |
| lunch_id              | integer    | null: false                   |
| second_dentifrice_id  | integer    | null: false                   |
| second_toilet_id      | integer    | null: false                   |
| dinner_id             | integer    | null: false                   |
| third_dentifrice_id   | integer    | null: false                   |
| third_toilet_id       | integer    | null: false                   |
| bath_id               | integer    | null: false                   |
| sleep_check _id       | integer    | null: false                   |
| state                 | text       | null: false                   |
| user                  | references | null: false, foreign_key: true|

  
### Association
- belongs_to :user



## Calendars テーブル

| Column             | Type       | Options                            |
| ------------------ | -----------| ---------------------------------- |
| plan               | string     | null: false                        |
| date               | text       | null: false                        |
| user               | references | null: false, foreign_key: true     |


  
### Association
- belongs_to :user


## addresses テーブル

| Column             | Type       | Options                        |
| ------------------ | -------    | -------------------------------|
| name               | string     | null: false                    |
| phone_number       | string     | null: false                    |
| email              | string     | null: false                    |
| user               | references | null: false, foreign_key: true |

  
### Association
- belongs_to :user

# ER図等

# ローカルでの動作方法

