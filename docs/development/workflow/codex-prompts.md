# Codex Prompts

Codexに依頼するときの文面例を管理します。利用先プロジェクトでは、対象spec、画面、実行コマンドを実際の名前へ置き換えてください。

## Spec作成

```text
docs/requirements/ と docs/product/ を読んだ上で、
{feature-name} のspecを docs/specs/{number}-{feature-name}/ に作成してください。

spec.md、plan.md、tasks.md、test-cases.md、api.md をそろえ、
未決事項は Open Questions に残してください。
```

## 実装

```text
AGENTS.md を読んだ上で、
docs/specs/{feature}/ の内容に従って実装してください。

対象specは status: approved、blocking_open_questions: false です。
tasks.md のチェックリストに沿って進め、
実装、テスト、必要なドキュメント更新まで行ってください。
Acceptance Criteria と test-cases.md の Verified AC 対応も維持してください。
仕様にない振る舞いが必要に見える場合は、最小限の仮定を明示してください。
```

## UI変更

```text
AGENTS.md、docs/specs/{feature}/、
docs/designs/screens/{screen}/README.md、
docs/designs/screens/{screen}/states.md を読んで実装してください。

画面仕様、状態、アクセシビリティ、エラー表示、空状態を確認し、
必要なテストと関連ドキュメントも更新してください。
```

## レビュー

```text
AGENTS.md と docs/specs/{feature}/ を読んだ上で、
現在の差分をレビューしてください。

仕様逸脱、受け入れ条件未達、テスト不足、ドキュメント更新漏れ、
セキュリティ、データ破壊、互換性リスクを優先して指摘してください。
指摘はファイルパスと行番号を根拠にしてください。
```

## 技術負債監査

```text
docs/development/skills/tech-debt-audit/SKILL.md を読んだ上で、
{target-area} の技術負債監査を行ってください。

根拠となるファイルパスと行番号を示し、
短期、中期、長期の優先順位で改善案を出してください。
```

## 依頼時の注意

- 対象specのパスを必ず明示する。
- UI、API、DB、外部連携、運用のどれが関係するかを書く。
- 実行してほしいテストコマンドがある場合は明示する。
- 未決事項がある場合は、実装前に質問してほしいものと仮定してよいものを分ける。
