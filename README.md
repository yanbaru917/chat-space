# README

# README
# chat-space DB設計
## userテーブル
|column|Type|Option|
|------|----|------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|
### Association
- has_many : messages
- has_many : groups_users
- has_many : groups_users through: :groups_users

## messagesテーブル
|column|Type|Option|
|------|----|------|
|image|string||
|body|text||
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to : user
- belongs_to : group

## groupsテーブル
|column|Type|Option|
|------|----|------|
|group_name|string|null:false, foreign_key:true|
### Association
- has_many : messages
- has_many : users, through: :groups_users
- has_many : groups_users

## groups_usersテーブルテーブル
|column|Type|Option|
|------|----|------|
|user_id|integer|null: false, foreign_key: true|
｜group_id｜integer｜null: false, foreign_key: true｜
### Association
- belongs_to : user
- belongs_to : group
