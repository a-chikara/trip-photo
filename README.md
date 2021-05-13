# テーブル設計

## usersテーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| email      | string | null: false |
| password   | string | null: false |
| name       | string | null: false |

### Association

- has_many :posts

## postsテーブル

| Column     |    Type    |              Options            |
| ---------- | ---------- | ------------------------------- |
| city       | text       | null: false                     |
| explain    | text       | null: false                     |
| image      | references | null: false, foreign_key: true  |

### Association

- belongs_to :user