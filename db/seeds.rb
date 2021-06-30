# ゲストログイン
guest = User.create!(
  name: "guest",
  email: "guest@guest.com",
  password: "password",
  admin: false,
)
admin_guest = User.create!(
  name: "admin_guest",
  email: "admin_guest@guest.com",
  password: "password",
  admin: true,
)

# 一般ユーザー
user1 = User.create!(
  name: "name1",
  email: "sample1@example.com",
  password: "password",
  admin: false,
)
user2 = User.create!(
  name: "name2",
  email: "sample2@example.com",
  password: "password",
  admin: false,
)
user3 = User.create!(
  name: "name3",
  email: "sample3@example.com",
  password: "password",
  admin: false,
)
user4 = User.create!(
  name: "name4",
  email: "sample4@example.com",
  password: "password",
  admin: false,
)
user5 = User.create!(
  name: "name5",
  email: "sample5@example.com",
  password: "password",
  admin: false,
)

# ゲストログイン（管理者権限なし）のモノ
guest_item1 = Item.create!(
    name: "ボーダーのトップス",
    comment: "長年着てきたが、そろそろ傷んできた",
    updated_at: "2021-01-01 00:00:00",
    status: 1,
    category: 1,
    user_id: guest.id,
    image:File.open("./public/images/c1031028_s.jpg"),
  )
guest_item2 = Item.create!(
  name: "ブラウンのバッグ",
  comment: "友人からのいただきもの",
  updated_at: "2021-02-01 00:00:00",
  status: 2,
  category: 1,
  user_id: guest.id,
  image:File.open("./public/images/c1305483_s.jpg"),
)
guest_item3 = Item.create!(
  name: "ガラスのコップ",
  comment: "新しいものを買ったためもう使用しない",
  updated_at: "2021-03-01 00:00:00",
  status: 2,
  category: 2,
  user_id: guest.id,
  image:File.open("./public/images/g5050004_s.jpg"),
)
guest_item4 = Item.create!(
  name: "白い表紙の本",
  comment: "クローゼットの奥から出てきた本",
  updated_at: "2021-01-01 00:00:00",
  status: 1,
  category: 3,
  user_id: guest.id,
  image:File.open("./public/images/b3150745_s.jpg"),
)
guest_item5 = Item.create!(
  name: "木目の椅子",
  comment: "長年使用しておらず、傷んできている",
  updated_at: "2021-01-01 00:00:00",
  status: 2,
  category: 4,
  user_id: guest.id,
  image:File.open("./public/images/o1859909_s.jpg"),
)

# ゲストログイン（管理者権限あり）のモノ
admin_guest_item1 = Item.create!(
  name: "ボーダーのトップス",
  comment: "長年着てきたが、そろそろ傷んできた",
  updated_at: "2021-01-01 00:00:00",
  status: 1,
  category: 1,
  user_id: admin_guest.id,
  image:File.open("./public/images/c1031028_s.jpg"),
)
admin_guest_item2 = Item.create!(
name: "ブラウンのバッグ",
comment: "友人からのいただきもの",
updated_at: "2021-02-01 00:00:00",
status: 2,
category: 1,
user_id: admin_guest.id,
image:File.open("./public/images/c1305483_s.jpg"),
)
admin_guest_item3 = Item.create!(
name: "ガラスのコップ",
comment: "新しいものを買ったためもう使用しない",
updated_at: "2021-03-01 00:00:00",
status: 2,
category: 2,
user_id: admin_guest.id,
image:File.open("./public/images/g5050004_s.jpg"),
)
admin_guest_item4 = Item.create!(
name: "白い表紙の本",
comment: "クローゼットの奥から出てきた本",
updated_at: "2021-01-01 00:00:00",
status: 1,
category: 3,
user_id: admin_guest.id,
image:File.open("./public/images/b3150745_s.jpg"),
)
admin_guest_item5 = Item.create!(
name: "木目の椅子",
comment: "長年使用しておらず、傷んできている",
updated_at: "2021-01-01 00:00:00",
status: 2,
category: 4,
user_id: admin_guest.id,
image:File.open("./public/images/o1859909_s.jpg"),
)

# user1のモノ
user1_item1 = Item.create!(
  name: "ボーダーのトップス",
  comment: "長年着てきたが、そろそろ傷んできた",
  updated_at: "2021-01-01 00:00:00",
  status: 1,
  category: 1,
  user_id: user1.id,
  image:File.open("./public/images/c1031028_s.jpg"),
)
user1_item2 = Item.create!(
name: "ブラウンのバッグ",
comment: "友人からのいただきもの",
updated_at: "2021-02-01 00:00:00",
status: 2,
category: 1,
user_id: user1.id,
image:File.open("./public/images/c1305483_s.jpg"),
)
user1_item3 = Item.create!(
name: "ガラスのコップ",
comment: "新しいものを買ったためもう使用しない",
updated_at: "2021-03-01 00:00:00",
status: 2,
category: 2,
user_id: user1.id,
image:File.open("./public/images/g5050004_s.jpg"),
)
user1_item4 = Item.create!(
name: "白い表紙の本",
comment: "クローゼットの奥から出てきた本",
updated_at: "2021-01-01 00:00:00",
status: 1,
category: 3,
user_id: user1.id,
image:File.open("./public/images/b3150745_s.jpg"),
)
user1_item5 = Item.create!(
name: "木目の椅子",
comment: "長年使用しておらず、傷んできている",
updated_at: "2021-01-01 00:00:00",
status: 2,
category: 4,
user_id: user1.id,
image:File.open("./public/images/o1859909_s.jpg"),
)

# フラグ
Flag.create!(
  [
    {user_id: guest.id, item_id: guest_item1.id},
    {user_id: guest.id, item_id: guest_item2.id},
    {user_id: guest.id, item_id: guest_item3.id},
    {user_id: admin_guest.id, item_id: admin_guest_item1.id},
    {user_id: admin_guest.id, item_id: admin_guest_item2.id},
    {user_id: admin_guest.id, item_id: admin_guest_item3.id},
    {user_id: user1.id, item_id: user1_item1.id},
    {user_id: user1.id, item_id: user1_item2.id},
    {user_id: user1.id, item_id: user1_item3.id},
  ]
)