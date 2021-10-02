# アプリケーション名 
## FOR-CG 
# 概要
## 介護業界での業務内容効率化
# 本番環境
### デプロイ先
 http://35.76.243.118/
### Basic認証
ID:admin     パスワード：aaaa
### ログイン情報
Eメールアドレス: kaigo1@i,  パスワード: kaigo11
# 制作背景
アプリを作成するにあたり、実際に身近な人が不便だと感じること、社会問題を解決するアプリを作成しようと考えおり、実際に友人や家族にヒヤリングを行いました。
その中で、私の母親と妹が介護関係の仕事をしており、仕事の業務内容を聞いたり、家で実際に作業しているところ見ると、業務内容にアナログな作業が多くありました。自分が業務内容をより楽に、効率化ができるものを作ることにより、母や妹はもちろん、社会問題である少子高齢化による介護業界での業務内容向上を図ることができると考え、今回のアプリを制作しました。
# DEMO
## トップページ
[![Image from Gyazo](https://i.gyazo.com/51a847face0a98de756809fd82802505.gif)](https://gyazo.com/51a847face0a98de756809fd82802505)
#### ・トップページにはあらじめユーザーが使いやすいよう、アプリの概要を載せた
#### ・各機能の大まかな説明をトップページに表示することで、実際にアプリでできることを把握できるようにした
## ユーザー新規登録機能
[![Image from Gyazo](https://i.gyazo.com/1208c4595030c9f1406ff7df00089ac6.gif)](https://gyazo.com/1208c4595030c9f1406ff7df00089ac6)
#### ・名前、Eメールアドレス、パスワードを入力することによりユーザー登録ができる
#### ・すべての項目が入力されていないと登録できないように設定
#### ・同じEメールアドレスだと登録できないように設定
## ルーム作成機能
[![Image from Gyazo](https://i.gyazo.com/9d0ef3ec61a1c79c3c741677cda99346.gif)](https://gyazo.com/9d0ef3ec61a1c79c3c741677cda99346)
#### ・トップページの「ルームを作成する」ボタンを押すと、ルーム作成ページに遷移する→「タイトル」、「参加メンバー」を入力するとルームが作成できる
#### ・「参加メンバー」は選択がなくても作成できる
## メッセージ機能
[![Image from Gyazo](https://i.gyazo.com/9a2bc0d73fe354002293f3f99512f83a.gif)](https://gyazo.com/9a2bc0d73fe354002293f3f99512f83a)
#### ・フォームに伝えたい内容を入力して送信ボタンを押すと、入力した内容がチャットに反映される
#### ・メッセージと一緒に「画像」ボタンを押し、送信したい画像を選択し、「送信」ボタンを押すとメッセージと同時に画像を送信することができる
## 利用者記録機能
[![Image from Gyazo](https://i.gyazo.com/cb10c31a8c64b30ada16a8ca56f31e4e.gif)](https://gyazo.com/cb10c31a8c64b30ada16a8ca56f31e4e)
#### ・トップページの「利用者記録」ボタンを押すと利用者記録の一覧ページに遷移する→一覧ページには登録済みの利用者の記録が上から最新順に表示される
#### ・「記録する」ボタンを押すと利用者記録ページに遷移する
#### ・各入力項目を入力、選択をして「登録する」ボタンを押すとトップページ遷移し、登録した内容が表示される
## カレンダー登録機能
[![Image from Gyazo](https://i.gyazo.com/9371b87834cc4e74efd0601f9ca1fdd6.gif)](https://gyazo.com/9371b87834cc4e74efd0601f9ca1fdd6)
#### ・トップページの「カレンダー」ボタンを押すとカレンダー登録・記録ページに遷移する
#### ・カレンダーで年、日付を選択、入力して「保存」ボタンを押すと選択した日付のカレンダーに入力した内容が表示される
#### ・１つの日付に対して複数の計画を入力した時に、表示されないことが無いよう、各カレンダー(日付)ごとにスクロールバーを実装
## ユーザ情報編集機能
[![Image from Gyazo](https://i.gyazo.com/1980ac6aa77f63aa6729c3fefd08ebe2.gif)](https://gyazo.com/1980ac6aa77f63aa6729c3fefd08ebe2)
#### ・名前、Eメール項目と各項目を変更し、「更新」ボタンを押すと直前にいたページに遷移する＋変更内容が反映される
#### ・内容を変更せずに「更新」ボタンを押すと画面遷移せずに編集ページのままになる
## 工夫したポイント
#### ・実際に介護業界で働いている母親、妹に業務内容について実際に聞き、実際の現場に近い内容を実装
#### ・実装した内容を母親、妹に実際に使用してもらい、フィードバックを貰うPDCAを繰り返し、実装内容を磨き続けた
#### ・実際に利用する側の立場に少しでも考え、顧客目線となって実装することを忘れずに実装に取り組んだ

# 使用技術(開発環境)

## バックエンド
Ruby, Ruby on Rails
## フロントエンド
HTML, CSS
## データベース
MySQL, SequelPro
## インフラ
AWS(EC2), Capistrano
## Webサーバ(本番環境)
nginx
## アプリケーションサーバ(本番環境)
unicorn
## ソース管理
GitHub,GitHubDesktop
## テスト
Rspec
## エディタ
VSCode

# 課題や今後実装したい機能
・ルームでの非同期通信→ メッセージを送信した時にロード時間が発生しているため
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

  
#### Association
- has_many :room_users
- has_many :rooms, through: :room_users
- has_many :messages
- has_many :conditions
- has_many :calendars



## rooms テーブル

| Column  | Type       | Options     |
| --------|------------|-------------|
| name    | string     | null: false |

#### Association
- has_many :room_users
- has_many :users, through: :room_users
- has_many :messages
- has_many :calendars
## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

#### Association

- belongs_to :room
- belongs_to :user

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     | null: false                    |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |


#### Association
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


  
#### Association
- belongs_to :user
- belongs_to :room


## calendars テーブル

| Column             | Type       | Options                            |
| ------------------ | -----------| ---------------------------------- |
| plan               | string     | null: false                        |
| date               | text       | null: false                        |
| user               | references | null: false, foreign_key: true     |
| room               | references | null: false, foreign_key: true     |


  
#### Association
- belongs_to :user
- belongs_to :room



# ER図等
[![Image from Gyazo](https://i.gyazo.com/58b1d81c502017c80f308bb34c1d7a45.png)](https://gyazo.com/58b1d81c502017c80f308bb34c1d7a45)


