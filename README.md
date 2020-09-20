# README

## users テーブル

| Column        | Type    | Options     |
| --------------| ------  | ----------- |
| nick_name     | string  | null: false |
| email         | string  | null: false |
| password      | string  | null: false |
### Association

- has_many :
- has_many :

## tasks テーブル

| Column           | Type     |Options           |
| -----------------| -------- | ------------------|
| name             | string   | null: false       |
| description      | text     | null: false       |
| price            | integer  | null: false       |
| user_id          | integer  | null: false , foreign_key: true          |
### Association

- belongs_to:
- has_one:

## miles テーブル 

| Column          | Type       | Options                    |
| ------          | ---------- | -------------------------- |
| price_id        | string     | null: false                |
| task_id         | string     | null: false                |
| user_id         | integer    | null: false , foreign_key: true          |

### Association

- belongs_to :user
- has_many :tasks
