# README

## users テーブル

| Column        | Type    | Options     |
| --------------| ------  | ----------- |
| nick_name     | string  | null: false |
| email         | string  | null: false |
| password      | string  | null: false |
### Association

- has_many :tasks
- has_many :players

## tasks テーブル

| Column           | Type     |Options           |
| -----------------| -------- | ------------------|
| name             | string   | null: false       |
| description      | text     | null: false       |
| price            | integer  | null: false       |
| user_id          | integer  | null: false , foreign_key: true          |
### Association

- belongs_to:users
- has_one:players

## players テーブル 

| Column          | Type       | Options                    |
| ------          | ---------- | -------------------------- |
| user_id         | integer    | null: false , foreign_key: true          |
| task_id         | integer    | null: false , foreign_key: true          |
|
### Association

- has_one :miles
- belongs_to :user
- belongs_to :tasks

## miles テーブル 

| Column          | Type       | Options                    |
| ------          | ---------- | -------------------------- |
| place           | integer     | null: false                |
| season          | integer    | null: false                |
| need_mile       | string     | null: false                |
| address         | string     | null: false                |
| phone_number    | string     | null: false                | 
| buyer_id        | integer    | null: false , foreign_key: true          |

### Association

- belongs_to :player