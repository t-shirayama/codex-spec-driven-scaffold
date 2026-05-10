# Workflow

仕様駆動開発の進め方、ブランチ運用、コミット、PR、レビューの方針を記述します。

## Flow

1. `docs/product/` と `docs/requirements/` で前提を確認する。
2. `docs/specs/{feature}/` を作成し、受け入れ条件、対象外、テスト観点を明確にする。
3. `tasks.md` に実装、テスト、ドキュメント更新の作業を分解する。
4. Codexまたは開発者が、対象specに必要な最小範囲で実装する。
5. テストを実行し、結果または実行できない理由を記録する。
6. レビューで仕様逸脱、テスト不足、更新漏れ、セキュリティや互換性リスクを確認する。
7. specのfrontmatter statusを必要に応じて `implemented` に更新する。

## Spec Lifecycle

| Status | Meaning | Next Action |
|---|---|---|
| `template` | scaffold内のコピー元 | 利用先では `draft` に変更する |
| `draft` | 作成中 | Open Questionsを解消する |
| `review` | 実装前レビュー中 | 受け入れ条件とテスト観点を確認する |
| `approved` | 実装可能 | Codexまたは開発者へ実装を依頼する |
| `implemented` | 実装済み | 実行結果と残リスクを記録する |
| `deprecated` | 廃止 | 代替specやADRへリンクする |

実装依頼できるのは、原則として `status: approved` かつ `blocking_open_questions: false` のspecだけです。

## Branch and Commit

- ブランチ名には対象spec番号または機能名を含める。
- 1つのPRは、原則として1つのspecに対応させる。
- 仕様外の改善を同じPRに混ぜない。必要な場合は理由を `plan.md` に書く。
- コミットメッセージは、変更した振る舞いが分かる名前にする。

## PR Checklist

- [ ] 対象specが明示されている。
- [ ] 対象specが `status: approved`、`blocking_open_questions: false` である。
- [ ] 受け入れ条件を満たしている。
- [ ] Acceptance CriteriaとTest CaseがIDで対応している。
- [ ] 必要なテストが追加または更新されている。
- [ ] 関連ドキュメントが更新されている。
- [ ] 実行したコマンドが説明されている。

## Prompt Examples

Codexへの依頼文例は `codex-prompts.md` を参照してください。
