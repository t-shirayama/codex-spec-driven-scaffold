# Tech Debt Audit Protocol for Codex

このプロトコルは、Codexがリポジトリまたは指定範囲の技術負債を監査するための手順を定義する。

## Trigger

ユーザーが次のような依頼をした場合に使用する。

- 技術負債を洗い出して
- コードヘルスを見て
- リファクタリング優先順位を出して
- 保守性レビューをして
- アーキテクチャ劣化を調査して

## Output

監査結果は `TECH_DEBT_AUDIT.md` として出力する。

既に `TECH_DEBT_AUDIT.md` が存在する場合は、既存の指摘を確認し、次の状態を付ける。

- `NEW`: 新しく見つかった指摘
- `UPDATED`: 内容が変化した指摘
- `RESOLVED`: 解消された指摘
- `UNCHANGED`: 継続して存在する指摘

## Principles

- 具体的な根拠に基づいて判断する。
- すべての具体的な指摘に `path:line` を付ける。
- 一般論だけの指摘をしない。
- 実際のコード、ドキュメント、変更履歴を読んでから判断する。
- 不明点は断定せず、Open Questionsに書く。
- 全面書き換えを安易に推奨しない。
- 小さく安全に進められる改善案を優先する。
- 指摘数を水増ししない。
- 問題がないカテゴリには「重要な指摘なし」と書く。

## Phase 1: Orient

監査前に、対象リポジトリの構造を把握する。

1. `README.md` と `AGENTS.md` を読む。
2. `docs/` 配下の主要READMEを読む。
3. 実装コードの主要ディレクトリ構造を把握する。
4. 最近変更された領域を確認する。
5. 大きいファイル、頻繁に変更されるファイル、重要な入口を確認する。
6. 監査前に、対象システムのメンタルモデルを短く書く。

## Phase 2: Audit

監査観点は `audit-dimensions.md` に従う。

各指摘には次を含める。

- Category
- File:Line
- Severity
- Effort
- Description
- Recommendation
- Why it matters

## Phase 3: Deliver

`report-template.md` の形式で `TECH_DEBT_AUDIT.md` を作成する。

必ず以下を含める。

- Executive Summary
- Architectural Mental Model
- Findings
- Top Priorities
- Quick Wins
- Things That Look Risky But Are Acceptable
- Open Questions
- Follow-up Plan

## Required section: Things That Look Risky But Are Acceptable

このセクションは必須。

一見問題に見えたが、文脈上は許容できるものを記録する。

このセクションが空の場合、監査が浅い可能性がある。

## Severity

- Critical: 重大な障害、セキュリティ事故、データ破壊につながる可能性が高い。
- High: 近い将来に開発速度、信頼性、保守性を大きく損なう。
- Medium: 放置すると複雑化や回帰リスクを増やす。
- Low: 改善余地はあるが、直ちに大きな影響はない。

## Effort

- S: 小さな修正で対応できる。
- M: 複数ファイルの修正や設計整理が必要。
- L: 段階的な移行や広範囲の変更が必要。

## Done Definition

監査は次を満たしたら完了。

- `TECH_DEBT_AUDIT.md` が作成または更新されている。
- すべての具体的指摘に `path:line` がある。
- Top Prioritiesが優先順に並んでいる。
- Quick Winsが実行可能なチェックリストになっている。
- Open Questionsが明記されている。
- 根拠のない一般論だけの指摘が含まれていない。
