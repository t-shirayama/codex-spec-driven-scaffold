# Non-Functional Requirements

非機能要件を管理します。

非機能要件は、機能そのものではなく品質特性を扱います。Codexに実装を依頼するときは、関連するNFRをspecへリンクしてください。

## Categories

| Category | 例 |
|---|---|
| `performance` | 応答時間、スループット、リソース使用量 |
| `security` | 認証、認可、監査、脆弱性対応 |
| `availability` | 可用性、復旧、冗長化 |
| `usability` | 使いやすさ、アクセシビリティ |
| `maintainability` | 保守性、拡張性、技術的負債 |
| `observability` | ログ、メトリクス、トレーシング、監視 |

## 書き方

- 可能な限り測定方法と目標値を書く。
- 対象範囲を明記する。
- 達成しない場合の影響を簡潔に書く。
