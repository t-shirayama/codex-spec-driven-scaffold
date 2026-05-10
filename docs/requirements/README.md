# Requirements

このフォルダは、システムが満たすべき要件を管理します。

要件は「なぜ必要か」「何を満たすか」を書く場所です。実装方法や詳細な画面挙動は、要件ではなく `docs/specs/` や `docs/designs/` に書きます。

## 構成

- `functional/`: 機能要件
- `non-functional/`: 非機能要件

## Status

- `draft`: 作成中
- `review`: レビュー中
- `approved`: spec化可能
- `deprecated`: 廃止

## Requirement Naming

- Functional Requirement: `FR-001`
- Non-Functional Requirement: `NFR-001`

## 書き方

- 1つの要件には、1つの目的と検証可能な条件を書く。
- 実装案ではなく、利用者またはシステムが満たすべき状態を書く。
- 関連するspecができたら、要件から `docs/specs/{feature}/` へリンクする。
- 非機能要件は測定方法と目標値をできるだけ書く。
