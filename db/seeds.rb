# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# サンプル投稿を作成
Post.find_or_create_by(title: "ブログを始めました") do |post|
  post.content = "こんにちは！今日からブログを始めることにしました。\n\n日々の思ったことや学んだことを記録していく予定です。\n\nよろしくお願いします！"
end

Post.find_or_create_by(title: "Railsについて") do |post|
  post.content = "今日はRuby on Railsについて勉強しました。\n\nRailsはWebアプリケーションを素早く構築できる素晴らしいフレームワークですね。\n\n特にActiveRecordの機能が便利だと感じました。"
end

Post.find_or_create_by(title: "今日の振り返り") do |post|
  post.content = "今日一日を振り返ってみると、たくさんのことを学べた充実した日でした。\n\n明日もがんばります！"
end
