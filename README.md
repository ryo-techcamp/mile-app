# README

【アプリケーション名】
マイルで参る

【アプリケーション概要】
・ユーザー管理機能(新規登録・ログイン・ログアウト機能)
・案件投稿機能(新規投稿・編集・削除・案件先への遷移機能)
・獲得ポイント(マイル)管理機能
・お問い合わせ(お問い合わせ機能)

【URL】


【テスト用アカウント】
・投稿者アカウント
Email : hurleyx.hp.81rt@toyotoyo
Pass  : ryo08014319

・閲覧者アカウント
Email : hurleyx.hp.81rt@odaoda
Pass  : ryo08014319


【利用方法】
新規登録→ログイン→案件投稿→編集・削除
案件詳細表示→URLからポイントサイトへ遷移→実行後「案件達成」ボタン押す→達成案件管理

【目指した課題解決】
達成した複数のポイントサイト案件を管理できるようにする

【洗い出した要件】
●ユーザー管理機能
・ユーザーを新しく登録できる
・ユーザー登録が完了している場合、ログインできる
・ユーザー登録後にユーザー情報を編集する事ができる
・ログアウトできる
●ポイント(マイル)自動計算機能
・使用しているクレジットカード、使用するポイントサイト入力で獲得ポイントがわかる
・ポイントサイト案件実行時は手動で獲得ポイント入力
・マイルへ変換ボタン押すとマイルへ加算され
●目標達成までの残り必要マイル数自動計算機能
・所有マイル数確認、目標までの残り必要マイル数確認
・マイルへ変更ボタンを押すと自動計算(ポイント×0.7[還元率]=マイル)がされる
●お問い合わせ
・お問い合わせができる

【実装した機能についてのGIFと説明】

【実装予定の機能】

【データベース設計】
 
【ローカルでの動作方法】


## users テーブル

| Column        | Type    | Options     |
| --------------| ------  | ----------- |
| nick_name     | string  | null: false |
| email         | string  | null: false |
| password      | string  | null: false |
### Association

- has_many :tasks

## tasks テーブル

| Column           | Type     |Options           |
| -----------------| -------- | ------------------|
| name             | string   | null: false       |
| description      | text     | null: false       |
| price            | integer  | null: false       |
| user_id          | integer  | null: false , foreign_key: true          |
### Association

- belongs_to:users

## miles テーブル

| Column        | Type    | Options     |
| --------------| ------  | ----------- |
| get_mile      | integer | null: false |
| user_id       | integer  | null: false , foreign_key: true          |
| task_id       | integer  | null: false , foreign_key: true          |
### Association

- has_many :users

