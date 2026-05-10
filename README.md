# Codex Spec-Driven Development Scaffold

Codexを活用して仕様駆動開発を進めるためのドキュメントscaffoldです。

このリポジトリは、特定の技術スタックやプロダクトに依存しません。要件、仕様、設計、テスト、開発ルール、運用情報を同じ型で整理し、Codexへ一貫した文脈を渡せる状態を作ります。

## 何ができるか

- 新機能ごとに、仕様、実装計画、タスク、テスト観点、API差分をまとめられる
- Codexが実装前に読むべきドキュメントを `AGENTS.md` で固定できる
- 要件、画面仕様、ADR、テスト方針、運用影響を実装と同じ流れで更新できる
- AI生成コードで起きやすい仕様逸脱、テスト不足、ドキュメント更新漏れを減らせる

## このテンプレートの使いどころ

このscaffoldは、Codexへ「何を作るか」「どう確認するか」「何を更新したら完了か」を同じ型で渡すための土台です。

- 新規プロダクトの初期ドキュメント構成をそろえる
- 既存プロダクトへspec駆動の開発フローを後付けする
- Codexに実装、テスト、ドキュメント更新、レビューを一貫した前提で依頼する
- 仕様判断や設計判断を、後から追える場所へ残す

このリポジトリ自体にはアプリケーションコードを含めません。利用先プロジェクトでは、このdocs構成を実装コードのリポジトリへ持ち込み、プロダクト固有の名前、要件、コマンド、設計に置き換えて使います。

## 最短セットアップ

1. このリポジトリをテンプレートとしてコピーする。
2. `README.md`、`AGENTS.md`、`docs/product/` を利用先プロジェクトの名前と目的に合わせて更新する。
3. `docs/development/commands/README.md` に実際の install / lint / test / build コマンドを書く。
4. `docs/requirements/` に最初の機能要件と非機能要件を追加する。
5. `docs/templates/specs/` または `docs/specs/001-feature-name/` をコピーして、対象機能のspecフォルダを作る。
6. コピー後のspecのStatusを `template` から `draft` に変更し、受け入れ条件とテスト観点を埋める。
7. Codexに `AGENTS.md` と対象specを読ませて、実装、テスト、ドキュメント更新を依頼する。

```text
AGENTS.md を読んだ上で、
docs/specs/001-feature-name/ の内容に従って実装してください。

実装、テスト、必要なドキュメント更新まで行ってください。
仕様にない振る舞いが必要に見える場合は、最小限の仮定を明示してください。
```

## フォルダ構成

```text
AGENTS.md
README.md
.github/

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

| Path | 役割 |
|---|---|
| `AGENTS.md` | Codex向けの作業ルール、参照順序、完了条件 |
| `.github/` | spec起票とPR確認に使うGitHubテンプレート |
| `docs/` | 仕様駆動開発に必要なドキュメント全体 |
| `docs/templates/` | 要件、spec、画面仕様、ADRのコピー元 |
| `docs/product/` | プロダクトの目的、背景、用語 |
| `docs/requirements/` | 機能要件、非機能要件 |
| `docs/specs/` | 機能単位の仕様、計画、タスク、テスト観点、API情報 |
| `docs/designs/` | 画面仕様、デザイン資料、画像、UI素材 |
| `docs/architecture/` | システム設計、ADR |
| `docs/testing/` | テスト戦略、UT、IT、E2E、品質ゲート |
| `docs/development/` | 開発ルール、命名規則、レビュー観点、Codex用スキル |
| `docs/operations/` | 環境、リリース、監視、障害対応 |

## 仕様駆動開発の流れ

### 1. プロダクトの前提を置く

`docs/product/` に、プロダクトの目的、対象ユーザー、重要な用語を書きます。

- `docs/product/vision/README.md`
- `docs/product/glossary/README.md`

ここが曖昧だと、Codexが同じ言葉を別の意味で扱いやすくなります。最初は短くてかまいません。

### 2. 要件を定義する

`docs/requirements/` に、システムが満たすべき要件を書きます。

- 機能要件: `docs/requirements/functional/`
- 非機能要件: `docs/requirements/non-functional/`

`feature-area-01` などの汎用名は、利用先プロジェクトでは `billing`、`account`、`notification` のような具体名へ置き換えてください。

### 3. specを作る

機能単位で `docs/specs/` にspecフォルダを作ります。最初は `docs/specs/001-feature-name/` をフォルダごとコピーするか、`docs/templates/specs/` の各テンプレートを使って作るのが簡単です。

```text
docs/specs/001-feature-name/
├── README.md
├── spec.md
├── plan.md
├── tasks.md
├── test-cases.md
└── api.md
```

| File | 書くこと |
|---|---|
| `spec.md` | 背景、スコープ、振る舞い、受け入れ条件、仕様判断 |
| `plan.md` | 変更対象、実装方針、依存関係、リスク、ロールアウト |
| `tasks.md` | Codexが順に実行できるチェックリスト |
| `test-cases.md` | UT、IT、E2Eで確認する観点 |
| `api.md` | 追加、変更、利用するAPIとエラー仕様 |

### 4. 画面や設計を紐付ける

UIが関係する場合は `docs/designs/screens/` に画面仕様を書き、`spec.md` の `Related Designs` へリンクします。

設計判断が関係する場合は `docs/architecture/` を更新します。後から変更しづらい判断、複数案から選んだ判断、チームで共有すべきトレードオフは `docs/architecture/adr/` にADRとして残します。

### 5. Codexへ依頼する

Codexには対象specを明示します。曖昧な依頼より、参照先を固定した依頼の方が安定します。実装を依頼するときは、仕様だけでなくテストとドキュメント更新も同じ依頼に含めます。

```text
AGENTS.md を読んだ上で、
docs/specs/001-feature-name/ の内容に従って実装してください。

実装、テスト、必要なドキュメント更新まで行ってください。
仕様にない振る舞いが必要に見える場合は、最小限の仮定を明示してください。
```

UI変更を含む場合:

```text
docs/designs/screens/{screen}/ も参照してください。
画面仕様に不足があれば、仮定を明示して関連ドキュメントも更新してください。
```

レビューを依頼する場合:

```text
AGENTS.md と docs/specs/{feature}/ を読んだ上で、
実装差分をレビューしてください。
仕様逸脱、テスト不足、ドキュメント更新漏れを優先して指摘してください。
```

よく使う依頼文は `docs/development/workflow/codex-prompts.md` にまとめています。

## ドキュメント更新の判断

| 変更内容 | 更新先 |
|---|---|
| 機能の振る舞いが変わる | `docs/specs/{feature}/spec.md`、`test-cases.md`、`tasks.md` |
| APIが増える、変わる | `docs/specs/{feature}/api.md` |
| 画面や導線が変わる | `docs/designs/screens/` |
| 要件そのものが変わる | `docs/requirements/` |
| 設計判断をした | `docs/architecture/adr/` |
| テスト方針や品質ゲートが変わる | `docs/testing/` |
| 環境、リリース、監視に影響する | `docs/operations/` |
| 開発ルールが変わる | `docs/development/` |

## 利用先プロジェクトで最初に置き換えるもの

| 対象 | 置き換える内容 |
|---|---|
| `README.md` | プロジェクト名、概要、セットアップ方法 |
| `AGENTS.md` | Codexが読むべき実装ルール、参照順序、完了条件 |
| `docs/product/` | 目的、対象ユーザー、用語 |
| `docs/requirements/functional/feature-area-*` | 実際の機能領域名と要件 |
| `docs/development/commands/README.md` | 利用先プロジェクトの実コマンド |
| `docs/development/repository-structure/README.md` | 実装コードのディレクトリ構成 |
| `docs/specs/001-feature-name/` | 最初の実機能spec、または削除してテンプレートだけ運用 |
| `docs/designs/screens/screen-*` | 実際の画面名、または不要なら削除 |

## テンプレートとして配る前のチェック

- [ ] `README.md` の説明が利用先プロジェクト名に置き換わっている
- [ ] `AGENTS.md` の参照順序と完了条件がプロジェクトに合っている
- [ ] `docs/product/vision/README.md` に目的と対象ユーザーが書かれている
- [ ] `docs/product/glossary/` に重要用語が登録されている
- [ ] `docs/requirements/functional/feature-area-*` が実際の機能領域名になっている
- [ ] `docs/specs/001-feature-name/` をコピーして最初の実機能specが作られている
- [ ] コピー後のspecのStatusが `template` から `draft` または `approved` に変わっている
- [ ] 実装リポジトリの構成に合わせて `docs/development/repository-structure/README.md` が更新されている
- [ ] よく使うコマンドが `docs/development/commands/README.md` に書かれている
- [ ] `.github/PULL_REQUEST_TEMPLATE.md` のチェック項目がチームのレビュー基準に合っている

## Codex向けスキル

このscaffoldには、ファイル根拠付きの技術負債監査を行うためのプロトコルを含めています。

```text
docs/development/skills/tech-debt-audit/
├── README.md
├── SKILL.md
├── audit-dimensions.md
└── report-template.md
```

技術負債監査、コードヘルスチェック、保守性レビューを依頼するときは、`docs/development/skills/tech-debt-audit/SKILL.md` を参照するようCodexに伝えてください。

## 運用のコツ

- specは大きくしすぎず、1つのユーザー価値または変更単位で切る
- 要件、spec、テスト観点、実装差分を同じPRで扱う
- `tasks.md` はCodexが完了判断できる粒度にする
- 判断に迷った内容は `spec.md` のDecision LogかADRに残す
- READMEには使い方を、詳細ルールは `docs/` に置く
