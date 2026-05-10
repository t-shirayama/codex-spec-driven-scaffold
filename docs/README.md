# Docs

このフォルダは、Codexを活用した仕様駆動開発に必要なドキュメントを管理する。

## 構成

| Path | Responsibility |
|---|---|
| `templates/` | ドキュメントテンプレート |
| `product/` | プロダクトの目的、背景、用語 |
| `requirements/` | 機能要件・非機能要件 |
| `specs/` | 機能単位の仕様、計画、タスク、テスト観点、API情報 |
| `designs/` | 画面仕様、デザイン資料、画像、UI素材 |
| `architecture/` | システム設計とADR |
| `testing/` | テスト戦略、UT、IT、E2E、品質ゲート |
| `development/` | 開発ガイド、命名規則、設定方針、レビュー観点 |
| `operations/` | 環境、リリース、監視、障害対応 |

## ドキュメント更新の基本

- 要件を変更したら `requirements/` を更新する。
- 機能仕様を変更したら `specs/{feature}/` を更新する。
- 画面やデザイン資料を変更したら `designs/` を更新する。
- 設計方針を変更したら `architecture/` を更新する。
- テスト方針や観点を変更したら `testing/` を更新する。
- 開発ルールを変更したら `development/` を更新する。
- 運用に影響がある場合は `operations/` を更新する。
