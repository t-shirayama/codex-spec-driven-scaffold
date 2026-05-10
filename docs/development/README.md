# Development

開発時に守るルールや参照すべき方針を管理します。

Codexに実装を依頼するときは、対象specとあわせてこのフォルダの主要READMEを読ませます。

## 構成

| Path | 役割 |
|---|---|
| `setup/` | ローカル開発環境 |
| `commands/` | よく使うコマンド |
| `coding-standards/` | コーディング規約 |
| `naming/` | 命名規則 |
| `repository-structure/` | 実装コードの構成 |
| `configuration/` | 設定、環境変数、秘密情報 |
| `dependencies/` | 依存関係の追加、更新、削除 |
| `workflow/` | ブランチ、コミット、PR |
| `review/` | レビュー観点 |
| `skills/` | Codex向け再利用プロトコル |

## Codexに守らせること

- 既存の構成、命名、テスト方針を優先する。
- 仕様にない振る舞いを追加しない。
- 実装と同時にテスト、spec、関連ドキュメントを更新する。
- 実行したコマンドと結果を完了報告に含める。
