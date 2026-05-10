# Spec Templates

spec関連テンプレートを管理します。

新しいspecを作るときは、このフォルダのテンプレートを `docs/specs/{feature}/`
にコピーしてください。コピー後はファイル名から `-template` を外します。

## Files

| File                     | 用途               |
| ------------------------ | ------------------ |
| `spec-template.md`       | 仕様本文           |
| `plan-template.md`       | 実装計画           |
| `tasks-template.md`      | 作業チェックリスト |
| `test-cases-template.md` | テスト観点         |
| `api-template.md`        | API差分            |

## Rules

- `spec-template.md` のfrontmatterで `id`、`title`、`status`、`blocking_open_questions` を管理する。
- 実装依頼前は `status: approved`、`blocking_open_questions: false` にする。
- `spec-template.md` のAcceptance CriteriaにはAC IDを付ける。
- `test-cases-template.md` の `Verified AC` で、各テストがどのACを検証するかを明示する。
