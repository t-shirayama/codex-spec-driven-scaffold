# SPEC-001 Feature Name

このフォルダは、1つの機能単位の仕様、実装計画、タスク、テスト観点、API情報を管理するためのコピー元です。

実プロジェクトでは、このフォルダをコピーし、`001-feature-name` と `Feature Name` を対象機能名へ置き換えてください。

## Files

| File | 役割 |
|---|---|
| `spec.md` | 背景、スコープ、振る舞い、受け入れ条件 |
| `plan.md` | 変更対象、実装方針、依存関係、リスク |
| `tasks.md` | Codex向けの実行チェックリスト |
| `test-cases.md` | UT、IT、E2Eの確認観点 |
| `api.md` | APIの追加、変更、利用内容 |

## Before Implementation

- [ ] `spec.md` の受け入れ条件が具体的である
- [ ] `plan.md` に変更対象とリスクが書かれている
- [ ] `tasks.md` がCodexで実行できる粒度になっている
- [ ] `test-cases.md` に最低限の確認観点がある
- [ ] API変更がない場合も `api.md` に「変更なし」と明記している
