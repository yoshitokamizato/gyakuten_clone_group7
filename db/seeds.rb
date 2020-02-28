# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# 動画情報の登録
require "csv"

CSV.foreach('db/csv/movies_list.csv', headers: true) do |row|
  Movie.create(
    title: row['title'],
    url: row['url']
  )
end


# 質問初期データ

Question.create!(title: "質問1", content: "ここに質問の詳細が表示される。")
Question.create!(title: "質問2", content: "ここに質問の詳細が表示される。")

# テキスト教材初期データ（仮）

5.times do |no|
  Text.create(number: no,
              genre: "basic",
              title: "タイトル#{no}",
              content: "内容その#{no}",
            )
end
