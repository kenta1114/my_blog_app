# 私のブログアプリケーション

Ruby on Railsで作成された日本語対応のブログアプリケーションです。

## 機能

- 投稿の作成・編集・削除・一覧表示
- 日本語インターフェース
- レスポンシブデザイン
- バリデーション機能
- エラーハンドリング

## 技術スタック

- Ruby 3.3.0
- Rails 8.0.2
- PostgreSQL (本番環境)
- SQLite (開発・テスト環境)

## ローカル環境でのセットアップ

```bash
# リポジトリをクローン
git clone <your-repo-url>
cd my_blog_app

# 依存関係をインストール
bundle install

# データベースを作成・マイグレーション
bin/rails db:create
bin/rails db:migrate

# サンプルデータを投入
bin/rails db:seed

# サーバーを起動
bin/rails server
```

http://localhost:3000 でアプリケーションにアクセスできます。

## Render.comへのデプロイ

### 前準備

1. [Render.com](https://render.com) にアカウントを作成
2. GitHubリポジトリにコードをプッシュ

### デプロイ手順

1. Render.comでNew > Blueprint を選択
2. GitHubリポジトリを接続
3. 以下の環境変数を設定：
   - `RAILS_MASTER_KEY`: `c831ca51f54fbb2986a7e620ff1542c2`
4. Deploy

### 注意事項

- 初回デプロイ時には自動でPostgreSQLデータベースが作成されます
- `render.yaml` にデプロイ設定が記述されています
- `bin/render-build.sh` がビルドプロセスを実行します

## ファイル構成

```
my_blog_app/
├── app/
│   ├── controllers/       # コントローラ
│   ├── models/           # モデル
│   ├── views/            # ビュー
│   └── assets/           # CSS・画像等
├── config/
│   ├── locales/ja.yml    # 日本語翻訳
│   └── database.yml     # データベース設定
├── bin/
│   └── render-build.sh   # Renderビルドスクリプト
└── render.yaml           # Renderデプロイ設定
```

## ライセンス

MIT License
