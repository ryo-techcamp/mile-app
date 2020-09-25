# README

【アプリケーション名】
マイルで参る

【アプリケーション概要】
・ユーザー管理機能(新規登録・ログイン・ログアウト機能)
・案件投稿機能(新規投稿・編集・削除・案件先への遷移機能)
・獲得ポイント(マイル)管理機能
・お問い合わせ(お問い合わせ機能)

【URL】
https://mile-app-29181.herokuapp.com/

ID:mile
Pass:8119

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
●案件投稿機能
・おすすめの案件を投稿して共有できる
・投稿者は投稿後に編集・削除ができる
●達成案件管理機能
・ポイントサイト案件実行時は手動で獲得マイル入力
・案件達成ボタン押すと達成案件履歴表で管理できる
●お問い合わせ
・お問い合わせができる

【実装した機能についてのGIFと説明】
●ユーザー管理機能
・新規登録
https://gyazo.com/aadcc99f6f52a86c200d29171cec5a8b
・ログイン
https://gyazo.com/c848401acbb21c9bcf2a0ec6a4324e44

●案件投稿機能
https://gyazo.com/c21cf04d5809453a8927ee6a4fa91db7

●達成案件管理機能
https://gyazo.com/24f8abc40b6844e6b75ab0954f26f46c

●お問い合わせ機能
https://gyazo.com/a23c9f80e922be9995567da280ef684e

【実装予定の機能】
・獲得マイル自動計算機能
・ポイントサイトの種類により一覧表示を分ける
・案件検索機能

【データベース設計】
 https://app.lucidchart.com/invitations/accept/57470f06-7997-4513-b415-049b845e1153
【ローカルでの動作方法】


## users テーブル

| Column        | Type    | Options     |
| --------------| ------  | ----------- |
| nick_name     | string  | null: false |
| email         | string  | null: false |
| password      | string  | null: false |
### Association

- has_many :tasks
- has_many :miles

## tasks テーブル

| Column           | Type     |Options           |
| -----------------| -------- | ------------------|
| image            | string   | null: false       |
| name             | string   | null: false       |
| description      | text     | null: false       |
| price            | integer  | null: false       |
| user_id          | integer  | null: false , foreign_key: true          |
### Association

- belongs_to:users
- has_many:miles

## miles テーブル

| Column        | Type    | Options     |
| --------------| ------  | ----------- |
| get_mile      | integer | null: false |
| user_id       | integer  | null: false , foreign_key: true          |
| task_id       | integer  | null: false , foreign_key: true          |
### Association

- belongs_to:users
- belongs_to :item

