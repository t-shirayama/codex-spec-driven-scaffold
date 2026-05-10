# Codex Spec-Driven Development Scaffold

Codexを活用して仕様駆動開発を進めるためのドキュメントscaffoldです。

このリポジトリは、特定の技術スタックやプロダクトに依存しません。要件、仕様、設計、テスト、開発ルール、運用情報を同じ型で整理し、Codexへ一貫した文脈を渡せる状態を作ります。

## 何ができるか

- 新機能ごとに、仕様、実装計画、タスク、テスト観点、API差分をまとめられる
- Codexが実装前に読むべきドキュメントを `AGENTS.md` で固定できる
- 要件、画面仕様、ADR、テスト方針、運用影響を実装と同じ流れで更新できる
- AI生成コードで起きやすい仕様逸脱、テスト不足、ドキュメント更新漏れを減らせる
- Acceptance CriteriaとTest Caseの対応を追跡できる
- OpenAI向け提案資料と完成済みexample specを含めて評価しやすくできる

## このテンプレートの使いどころ

このscaffoldは、Codexへ「何を作るか」「どう確認するか」「何を更新したら完了か」を同じ型で渡すための土台です。

- 新規プロダクトの初期ドキュメント構成をそろえる
- 既存プロダクトへspec駆動の開発フローを後付けする
- Codexに実装、テスト、ドキュメント更新、レビューを一貫した前提で依頼する
- 仕様判断や設計判断を、後から追える場所へ残す

このリポジトリ自体にはアプリケーションコードを含めません。利用先プロジェクトでは、このdocs構成を実装コードのリポジトリへ持ち込み、プロダクト固有の名前、要件、コマンド、設計に置き換えて使います。

このREADMEは、導入と全体像の入口です。specの書き方、Codexへの依頼文、レビュー観点、コマンドなどの詳細は `docs/` 配下の各READMEを正本として管理します。

## GitHubテンプレートリポジトリとして使う

このリポジトリは、GitHubのテンプレートリポジトリとして設定済みです。forkではなくテンプレートから新しいリポジトリを作ると、利用先プロジェクトとして始めやすくなります。

1. GitHubのリポジトリ画面で `Use this template` を押す。
2. `Create a new repository` を選ぶ。
3. Owner、Repository name、公開範囲を指定して作成する。
4. 作成された新しいリポジトリをcloneする。
5. `README.md`、`AGENTS.md`、`docs/product/` などを利用先プロジェクトの内容に置き換える。

テンプレートから作ったリポジトリには、このscaffoldのGit履歴は引き継がれません。scaffold自体に変更を提案したい場合だけ、forkやpull requestを使ってください。

## 最短セットアップ

1. GitHubの `Use this template` から利用先リポジトリを作る。
2. `README.md`、`AGENTS.md`、`docs/product/` を利用先プロジェクトの名前と目的に合わせて更新する。
3. `docs/development/commands/README.md` に実際の install / lint / test / build コマンドを書く。
4. `docs/requirements/` に最初の機能要件と非機能要件を追加する。
5. `docs/templates/specs/` をコピーして、対象機能のspecフォルダを作る。
6. コピー後のファイル名から `-template` を外し、spec frontmatterで `status: draft` に変更する。
7. 受け入れ条件とテスト観点を埋める。
8. Open Questionsを解消したら `status: approved`、`blocking_open_questions: false` にする。
9. Codexに `AGENTS.md` と対象specを読ませて、実装、テスト、ドキュメント更新を依頼する。

詳細な進め方は `docs/development/workflow/README.md`、依頼文例は
`docs/development/workflow/codex-prompts.md` を参照してください。

## 情報の置き場所

同じルールを複数箇所で管理しないため、詳細は次の場所を正本にします。

| 知りたいこと                       | 正本                                                        |
| ---------------------------------- | ----------------------------------------------------------- |
| docs全体の構成と更新ルール         | `docs/README.md`                                            |
| specの構成、frontmatter、ステータス | `docs/specs/README.md`                                      |
| テンプレートのコピー方法           | `docs/templates/README.md`                                  |
| Codexへの依頼文例                  | `docs/development/workflow/codex-prompts.md`                |
| 開発コマンド                       | `docs/development/commands/README.md`                       |
| レビュー観点                       | `docs/development/review/README.md`                         |
| プレースホルダー確認               | `docs/development/commands/placeholder-check.md`            |
| 技術負債監査                       | `docs/development/skills/tech-debt-audit/SKILL.md`          |

## フォルダ構成

```text
AGENTS.md
LICENSE
README.md
.github/
PROPOSAL.md

docs/
├── README.md
├── templates/
├── examples/
├── product/
├── requirements/
├── specs/
├── designs/
├── architecture/
├── testing/
├── development/
└── operations/
```

| Path                 | 役割                                              |
| -------------------- | ------------------------------------------------- |
| `AGENTS.md`          | Codex向けの作業ルール、参照順序、完了条件         |
| `LICENSE`            | 利用条件を示すMITライセンス                       |
| `.github/`           | spec起票とPR確認に使うGitHubテンプレート          |
| `PROPOSAL.md`        | OpenAI向け提案資料                                |
| `docs/`              | 仕様駆動開発に必要なドキュメント全体              |
| `docs/templates/`    | 要件、spec、画面仕様、ADRのコピー元               |
| `docs/examples/`     | 完成済みspecの例                                  |
| `docs/product/`      | プロダクトの目的、背景、用語                      |
| `docs/requirements/` | 機能要件、非機能要件                              |
| `docs/specs/`        | 機能単位の仕様、計画、タスク、テスト観点、API情報 |
| `docs/designs/`      | 画面仕様、デザイン資料、画像、UI素材              |
| `docs/architecture/` | システム設計、ADR                                 |
| `docs/testing/`      | テスト戦略、UT、IT、E2E、品質ゲート               |
| `docs/development/`  | 開発ルール、命名規則、レビュー観点、Codex用スキル |
| `docs/operations/`   | 環境、リリース、監視、障害対応                    |

## 仕様駆動開発の流れ

1. `docs/product/` にプロダクトの目的、対象ユーザー、重要用語を書く。
2. `docs/requirements/` に機能要件と非機能要件を書く。
3. `docs/templates/specs/` をコピーして `docs/specs/{feature}/` を作る。
4. `spec.md`、`plan.md`、`tasks.md`、`test-cases.md`、`api.md` を埋める。
5. Open Questionsを解消し、実装対象specを `status: approved`、`blocking_open_questions: false` にする。
6. Codexに `AGENTS.md` と対象specを読ませ、実装、テスト、必要なドキュメント更新まで依頼する。

specの詳しい構成とステータスは `docs/specs/README.md`、全体の作業フローは
`docs/development/workflow/README.md`、完成例は `docs/examples/001-user-profile-update/`
を参照してください。

## ドキュメント更新の判断

以下はクイックリファレンスです。更新ルールの正本は `docs/README.md` です。

| 変更内容                       | 更新先                                                      |
| ------------------------------ | ----------------------------------------------------------- |
| 機能の振る舞いが変わる         | `docs/specs/{feature}/spec.md`、`test-cases.md`、`tasks.md` |
| APIが増える、変わる            | `docs/specs/{feature}/api.md`                               |
| 画面や導線が変わる             | `docs/designs/screens/`                                     |
| 要件そのものが変わる           | `docs/requirements/`                                        |
| 設計判断をした                 | `docs/architecture/adr/`                                    |
| テスト方針や品質ゲートが変わる | `docs/testing/`                                             |
| 環境、リリース、監視に影響する | `docs/operations/`                                          |
| 開発ルールが変わる             | `docs/development/`                                         |

## 実装前のガード

Codexに実装を依頼する対象specは、次の状態にします。
詳しいspec lifecycleとfrontmatterの定義は `docs/specs/README.md` を参照してください。

```yaml
---
id: SPEC-001
title: Feature Name
status: approved
approved_by: ""
blocking_open_questions: false
---
```

- `status: approved` でないspecは、実装ではなくspec整備の対象です。
- `blocking_open_questions: true` のspecは、未決事項を解消してから実装します。
- Acceptance Criteriaの `Verified By` に、対応するテストIDまたは手動確認IDを書きます。
- `docs/development/commands/placeholder-check.md` に従って、置き換え漏れを確認します。

## 利用先プロジェクトで最初に置き換えるもの

| 対象                                              | 置き換える内容                                                   |
| ------------------------------------------------- | ---------------------------------------------------------------- |
| `README.md`                                       | プロジェクト名、概要、セットアップ方法                           |
| `AGENTS.md`                                       | Codexが読むべき実装ルール、参照順序、完了条件                    |
| `docs/product/`                                   | 目的、対象ユーザー、用語                                         |
| `docs/requirements/functional/feature-area-*`     | 実際の機能領域名と要件                                           |
| `docs/development/commands/README.md`             | 利用先プロジェクトの実コマンド                                   |
| `docs/development/repository-structure/README.md` | 実装コードのディレクトリ構成                                     |
| `docs/specs/001-feature-name/`                    | scaffold内のサンプルspec。実運用では実機能specに置き換えるか削除 |
| `docs/designs/screens/screen-*`                   | 実際の画面名、または不要なら削除                                 |
| `PROPOSAL.md`                                     | 提案先や利用実績に合わせたProblem、Benefits、Evidence            |

## 利用先プロジェクトで使い始める前のチェック

- [ ] `README.md` の説明が利用先プロジェクト名に置き換わっている
- [ ] `AGENTS.md` の参照順序と完了条件がプロジェクトに合っている
- [ ] `docs/product/vision/README.md` に目的と対象ユーザーが書かれている
- [ ] `docs/product/glossary/` に重要用語が登録されている
- [ ] `docs/requirements/functional/feature-area-*` が実際の機能領域名になっている
- [ ] `docs/templates/specs/` から最初の実機能specが作られている
- [ ] コピー後のspec frontmatterが `draft` または `approved` に変わっている
- [ ] 実装対象specは `status: approved`、`blocking_open_questions: false` になっている
- [ ] Acceptance CriteriaとTest CaseがIDで対応している
- [ ] 実装リポジトリの構成に合わせて `docs/development/repository-structure/README.md`
      が更新されている
- [ ] よく使うコマンドが `docs/development/commands/README.md` に書かれている
- [ ] placeholder checkを実行し、汎用名や仮コマンドの置き換え漏れを確認している
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

技術負債監査、コードヘルスチェック、保守性レビューを依頼するときは、`docs/development/skills/tech-debt-audit/SKILL.md`
を参照するようCodexに伝えてください。

## 運用のコツ

- specは大きくしすぎず、1つのユーザー価値または変更単位で切る
- 要件、spec、テスト観点、実装差分を同じPRで扱う
- `tasks.md` はCodexが完了判断できる粒度にする
- 判断に迷った内容は `spec.md` のDecision LogかADRに残す
- READMEには使い方を、詳細ルールは `docs/` に置く
