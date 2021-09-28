# アプリケーション名 
FOR-CG
# 概要
介護業界での業務内容効率化
# 本番環境
デプロイ先→ http://35.76.243.118/
Basic認証
ID:admin     パスワード：aaaa
ログイン情報
email: kaigo1@i   password: kaigo11
# 制作背景
アプリを作成するに当たり、実際に身近な人が不便だと感じること、社会問題を解決するアプリを作成しようと考えおり、実際に友達や家族にヒヤリングを行いました。
その中で、私の母親と妹が介護関係の仕事をしており、仕事の業務内容を聞いたり、家で実際に作業しているところを見て見ると、業務内容の中にアナログな作業が多くありました。自分が業務内容をより楽に、効率化ができるものを作ることにより、家族はもちろん、社会問題である少子高齢化による介護業界での業務内容向上をとることができると考え、今回のアプリを制作しました。
# DEMO
## トップページ
[![Image from Gyazo](https://i.gyazo.com/bbea7f9648309e44d4416ec977e064e2.jpg)](https://gyazo.com/bbea7f9648309e44d4416ec977e064e2)
## 新規登録画面
[![Image from Gyazo](https://i.gyazo.com/96cea3a7402b360da285e2a993cebd63.gif)](https://gyazo.com/96cea3a7402b360da285e2a993cebd63)
## ルーム作成機能
[![Image from Gyazo](https://i.gyazo.com/116aaa54adbf3db724368ea5484d56a3.gif)](https://gyazo.com/116aaa54adbf3db724368ea5484d56a3)
## メッセージ機能
[![Image from Gyazo](https://i.gyazo.com/f900cee65bfa4076324b34a5ddbb387c.gif)](https://gyazo.com/f900cee65bfa4076324b34a5ddbb387c)
## 利用者記録機能
[![Image from Gyazo](https://i.gyazo.com/238c9cd122d2a9c2efbeff590e5dabef.gif)](https://gyazo.com/238c9cd122d2a9c2efbeff590e5dabef)
## 計画一覧・登録機能
[![Image from Gyazo](https://i.gyazo.com/2967b6504c36fd1986ca32d6017e9f3b.gif)](https://gyazo.com/2967b6504c36fd1986ca32d6017e9f3b)
## ユーザ情報編集機能
[![Image from Gyazo](https://i.gyazo.com/d0309d8327f8237f83bbbc4c9c877006.gif)](https://gyazo.com/d0309d8327f8237f83bbbc4c9c877006)

# 工夫したポイント

# 使用技術(開発環境)

## バックエンド
Ruby, Ruby on Rails
## フロントエンド
HTML, CSS
## データベース
MySQL, SequelPro
## インフラ
AWS(EC2)
## Webサーバ(本番環境)
nginx
## アプリケーションサーバ(本番環境)
unicon
## ソース管理
GitHub,GitHubDesktop
## テスト
Rspec
## エディタ
VSCode

# 課題や今後実装したい機能
・各機能での非同期通信→ メッセージを送信した時にロード時間が発生しているため
・計算処理機能→ 施設などでの買い物の際に施設費用から出している場合の出費計算
・連絡先登録機能→ 万が一の際にいつでも上司の連絡先を確認できるようにするため
・SNS認証→ 登録方法をより簡単にするため
# DB設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

  
### Association
- has_many :room_users
- has_many :rooms, through: :room_users
- has_many :messages
- has_many :conditions
- has_many :plans
- has_many :addresses


## rooms テーブル

| Column  | Type       | Options     |
| --------|------------|-------------|
| name    | string     | null: false |

### Association
- has_many :room_users
- has_many :users, through: :room_users
- has_many :messages

## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

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
| confirmer_name        | string     | null: false                   |
| care_user_name        | string     | null: false                   |
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
| sleep_check_id        |integer     | null: false                   |
| state                 | text       | null: false                   |
| user                  | references | null: false, foreign_key: true|
| room                  | references | null: false, foreign_key: true|


  
### Association
- belongs_to :user



## Calendars テーブル

| Column             | Type       | Options                            |
| ------------------ | -----------| ---------------------------------- |
| plan               | string     | null: false                        |
| date               | text       | null: false                        |
| user               | references | null: false, foreign_key: true     |
| room               | references | null: false, foreign_key: true     |


  
### Association
- belongs_to :user
- belongs_to :room



# ER図等
![](https://user-images.githubusercontent.com/88226506/134837938-1ffdc459-ebf9-41f0-bf06-757b707c6b5d.jpeg)




