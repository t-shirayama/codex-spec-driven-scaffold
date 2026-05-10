# Codex Spec-Driven Development Scaffold

このリポジトリは、Codexを活用して仕様駆動開発を進めるためのドキュメント scaffold です。

特定の技術スタックやプロダクト機能には依存せず、要件、仕様、設計、テスト、開発ガイド、運用情報を整理するための標準的なフォルダ構成を提供します。

## 目的

この scaffold の目的は、Codexに対して次の情報を一貫した形で渡せるようにすることです。

- 何を満たすべきか
- 何を作るべきか
- どう作るべきか
- どう確認するべきか
- どのルールに従うべきか
- どのドキュメントを更新するべきか

## フォルダ構成

```text
AGENTS.md
README.md

docs/
├── README.md
├── templates/
├── product/
├── requirements/
├── specs/
├── designs/
├── architecture/
├── testing/
├── development/
└── operations/
```

## 各フォルダの責務

| Path | Responsibility |
|---|---|
| `AGENTS.md` | Codex向けの作業ルール、参照順序、完了条件を定義する |
| `docs/` | 仕様駆動開発に必要なドキュメント全体を管理する |
| `docs/templates/` | 要件、spec、テスト、画面仕様、ADRなどのテンプレートを管理する |
| `docs/product/` | プロダクトの目的、背景、用語を管理する |
| `docs/requirements/` | 機能要件・非機能要件を管理する |
| `docs/specs/` | 機能単位の仕様、計画、タスク、テスト観点、API情報を管理する |
| `docs/designs/` | 画面仕様、デザイン資料、画像、UI素材を管理する |
| `docs/architecture/` | システム設計とアーキテクチャ上の意思決定を管理する |
| `docs/testing/` | UT / IT / E2E の方針、テスト観点、品質ゲートを管理する |
| `docs/development/` | 開発ルール、命名規則、設定方針、レビュー観点を管理する |
| `docs/operations/` | 環境、リリース、監視、障害対応など運用情報を管理する |

## 開発の進め方

### 1. プロダクトの前提を整理する

最初に `docs/product/` を更新します。

- `docs/product/vision/README.md`
- `docs/product/glossary/README.md`

ここでは、プロダクトの目的、背景、重要な用語を整理します。

### 2. 要件を定義する

次に `docs/requirements/` に要件を追加します。

- 機能要件は `docs/requirements/functional/` に追加する
- 非機能要件は `docs/requirements/non-functional/` に追加する

scaffoldでは `feature-area-01` のような汎用名にしています。実プロジェクトでは、プロジェクトに合わせてフォルダ名を変更してください。

### 3. specを作成する

機能単位で `docs/specs/` にspecフォルダを作成します。

```text
docs/specs/001-feature-name/
├── README.md
├── spec.md
├── plan.md
├── tasks.md
├── test-cases.md
└── api.md
```

各ファイルの責務は次の通りです。

| File | Responsibility |
|---|---|
| `spec.md` | 何を作るか。背景、スコープ、振る舞い、受け入れ条件を書く |
| `plan.md` | どう作るか。変更対象、依存関係、リスク、実装順序を書く |
| `tasks.md` | Codexに渡しやすい粒度でタスクを書く |
| `test-cases.md` | UT / IT / E2E の観点を書く |
| `api.md` | そのspecに関係するAPI情報を書く |

### 4. 画面仕様・デザイン資料を紐付ける

画面やUIが関係する場合は、`docs/designs/` を更新します。

- 画面仕様は `docs/designs/screens/`
- 画像やモックは `docs/designs/images/`
- 外部デザイン資料やプロトタイプの参照は `docs/designs/references/`

`spec.md` には、対象となる画面仕様へのリンクを `Related Designs` として記述します。

### 5. 設計方針を確認する

実装前に `docs/architecture/` と `docs/development/` を確認します。

特に以下はCodexにも読ませることを推奨します。

- `docs/development/coding-standards/`
- `docs/development/naming/`
- `docs/development/repository-structure/`
- `docs/architecture/README.md`

大きなアーキテクチャ判断を行った場合は、`docs/architecture/adr/` に記録します。

### 6. Codexに実装を依頼する

Codexに依頼するときは、対象specを明示します。

例:

```text
AGENTS.md を読んだ上で、
docs/specs/001-feature-name/ の内容に従って実装してください。

実装時は以下も参照してください。

- docs/development/coding-standards/
- docs/development/naming/
- docs/designs/screens/
- docs/testing/
```

### 7. テスト観点を更新する

実装後、`docs/specs/{feature}/test-cases.md` と `docs/testing/` を更新します。

- 単体テストの観点
- 統合テストの観点
- E2Eテストの観点
- 品質ゲート
- カバレッジ方針

### 8. 運用影響を確認する

リリース、環境、監視、障害対応に影響がある場合は `docs/operations/` を更新します。

## Codex向けスキル

このscaffoldには、Codex向けの汎用的な技術負債監査プロトコルを含めています。

```text
docs/development/skills/tech-debt-audit/
├── README.md
├── SKILL.md
├── audit-dimensions.md
└── report-template.md
```

このスキルは、リポジトリ全体または指定した範囲について、ファイル根拠付きの技術負債監査レポートを作成するためのものです。

## 推奨する運用

- まずは `docs/specs/001-feature-name/` をコピーして新しいspecを作る
- 要件、spec、テスト観点を同じPRで更新する
- Codexには必ず対象specフォルダを明示する
- 画面仕様はspecに直接書きすぎず、`docs/designs/screens/` を参照する
- API情報は独立フォルダではなく、各specの `api.md` に書く
- アーキテクチャ上の大きな判断はADRに残す
