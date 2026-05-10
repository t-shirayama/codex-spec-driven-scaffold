# Tech Debt Audit Skill for Codex

このフォルダは、Codex向けの技術負債監査プロトコルを管理する。

このプロトコルは、リポジトリ全体または指定範囲を対象に、根拠付きの技術負債監査レポートを作成するためのものです。

## Files

- `SKILL.md`: Codexに読ませる監査プロトコル
- `audit-dimensions.md`: 監査観点
- `report-template.md`: 出力レポートのテンプレート

## 使い方

Codexに次のように依頼する。

```text
docs/development/skills/tech-debt-audit/SKILL.md に従って、
このリポジトリの技術負債監査を実施してください。
```

特定範囲だけを監査する場合:

```text
docs/development/skills/tech-debt-audit/SKILL.md に従って、
対象範囲 docs/specs/ と docs/development/ の技術負債監査を実施してください。
```

## Attribution

This Codex-oriented protocol is a generic adaptation inspired by `ksimback/tech-debt-skill` and
refactored for scaffold use.
