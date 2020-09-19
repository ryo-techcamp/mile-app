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
| season          | string     | null: false                |
| place           | string     | null: false                |
| city            | string     | null: false                |
| address         | string     | null: false                |
| building_name   | string     |                            |
| phone_number    | string     | null: false                | 
| buyer_id        | integer    | null: false , foreign_key: true          |

### Association

- belongs_to :buyer
