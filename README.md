## :smile: アプリ名
  Fun_diary<br>
  <br>
  
## 📖アプリ概要
  気軽に書けるシンプルな日記アプリです。日記を描くための基本的な投稿、編集、削除機能を実装しております。既存の日記アプリと違うところは、日記に得点をつける事です。日記に得点をつけることで、自分で評価した「採点の低かった行動は繰り返さない」事で、日々の生活をより楽しくします。<br>
  また、現在実装中のreport機能を使うと、１ヶ月の得点をカテゴリ別に集計し得点の把握がグラフで見れるようになります。
  <br>

### 本番環境
+ URL http://（）
+ ゲスト用アカウント
    + メールアドレス: guests@guests
    + パスワード: guests

## 📖制作背景（意図）
   <br> 日記を描くことで、より人生が楽しくなるようなアプリケーションを考えました。今回の日記アプリの投稿カテゴリは次の項目で構成されております。
    ['健康・運動']・['勉強・教養'] ['心・精神']['仕事・社会']['プライベート・家庭']['お金・経済']['恋愛'] ['特別・その他' ]
<br>
    日記に得点をつける事で、得点の高い月、低い月の状況を把握でき、得点をカテゴリで分類して集計、グラフ化することで、どの様に過ごしたときが得点が高くなるのかを「見える化」します。
  <br>
    どう過ごせば、得点が高くなるかが見え、得点を高くする行動をする事で、より人生が楽しく過ごせます。

## 💻開発環境
### 環境
- Ruby 2.6.5
- Ruby on Rails 6.0.3.5
- jQuery
- MySQL 5.6.51 
- Github
- AWS
- Visual Studio Code 

## 💬使い方（ローカル環境）
1. 下記コードの実行
```
$ cd "インストールしたいディレクトリ"
$ git clone https://github.com/ ※※※※※※※※※※※
$ bundle install
$ yarn install
$ rails db:create
$ rails db:migrate
$ rails s
```
2. ブラウザでアクセス
http://localhost:3000

### **注意点**
- ローカル環境で実行する場合、上記で記載した開発環境と同じ環境が必要となります。

## :DEMO

## 📦実装機能
### 1. トップページ
<br>
<img width="1280" alt="スクリーンショット 2021-03-25 22 15 12" src="https://user-images.githubusercontent.com/78476130/112565440-633d6e00-8e20-11eb-9b43-f141802a8d35.png">

<br>

### 2. 投稿一覧
<br>
<img width="1277" alt="スクリーンショット 2021-03-26 11 23 10" src="https://user-images.githubusercontent.com/78476130/112568633-1ceb0d80-8e26-11eb-906e-3cecac353dc1.png">

<br>

### 3. 投稿詳細
<br>
<img width="1277" alt="スクリーンショット 2021-03-26 10 58 27" src="https://user-images.githubusercontent.com/78476130/112566510-77826a80-8e22-11eb-8db3-1a466970deea.png">
<br>

### 4. 投稿 & 編集 & 削除
<br>


#### report機能（実装中）

![create](https://user-images.githubusercontent.com/65913824/88512342-62e69c00-d021-11ea-9919-822d6def3cb0.gif)


### 6. 新規登録(ウィザード形式)

<br>


<img width="1280" alt="スクリーンショット 2021-03-26 11 25 48" src="https://user-images.githubusercontent.com/78476130/112568621-16f52c80-8e26-11eb-88f4-8d5111a6d18c.png">



### 7. ログイン

<br>

<img width="1280" alt="スクリーンショット 2021-03-26 10 58 06" src="https://user-images.githubusercontent.com/78476130/112566632-b7495200-8e22-11eb-8648-d91dce650f18.png">

<br>



### 11. ログアウト

<br>

![logout](https://user-images.githubusercontent.com/65913824/88511990-c4f2d180-d020-11ea-80b6-e57a9895332c.png)

<br>

# 工夫したポイント
無理なく日記きが続けられる様に、シンプルな投稿機能のみにしました。日記は画像を一覧表示させることでアルバム風に表示させ、
また、文章が描きたくなるように清潔で最小限のデザインにしました。

# 使用技術
## ◼︎言語
### バックエンド
Ruby 2.6.5
## ◼︎フレームワーク
Ruby on Rails 6.0.3.5
## ◼︎データベース
MySQL 5.6.51 
## ◼︎インフラ
AWS EC2
AWS S3

## デプロイ
Capistranoによる自動デプロイ

# 課題や今後実装したい機能
実装中のreport機能をできるだけ早く実装する。report機能が実装できたらRecommended機能を実装したい。

## アプリ詳細
  上記機能を実装するに当たってのDB設計や基本機能について記載します。

## 📕DB設計

## 1. ER図
  https://

## 2. 設計

## users テーブル

| Column            | Type   | Options     |
| ------------------| ------ | ----------- |
| nickname          | string | null: false |
| email             | string | null:false, unique:true |
| encrypted_password| string | null: false |

### Association

- has_many :diaries 



## diaries テーブル

| Column      | Type       | Options     |
| ------------| -----------| ----------- |
| text        | text       | null: false |
| category_id | integer    | null: false |
| score       | integer    | null: false |
| user        | references | null: false, foreign_key: true |

### Association

- belongs_to :user 
