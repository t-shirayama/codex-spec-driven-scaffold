# Specs

このフォルダは、機能単位の仕様を管理します。

1つのspecは、実装の入力としてCodexに渡せる単位にします。大きすぎる場合は、ユーザー価値、画面、API、リリース単位で分割してください。

## フォルダ構成

```text
docs/specs/001-feature-name/
├── README.md
├── spec.md
├── plan.md
├── tasks.md
├── test-cases.md
└── api.md
```

| File            | 役割                      |
| --------------- | ------------------------- |
| `README.md`     | spec全体の索引            |
| `spec.md`       | 何を満たすか              |
| `plan.md`       | どう作るか                |
| `tasks.md`      | どの順番で進めるか        |
| `test-cases.md` | どう確認するか            |
| `api.md`        | APIの追加、変更、利用内容 |

`docs/templates/specs/` は新規specの正式なコピー元です。`docs/specs/001-feature-name/`
は、コピー後のフォルダ構成をイメージしやすくするためのサンプルspecです。利用先プロジェクトでは、サンプルを実機能に置き換えるか、不要であれば削除してテンプレートだけを使ってください。

完成済みの記入例は `docs/examples/001-user-profile-update/` を参照してください。

## Frontmatter

`spec.md` の先頭には、実装可否を機械的に判断しやすいfrontmatterを書きます。

```yaml
---
id: SPEC-001
title: Feature Name
status: draft
approved_by: ""
blocking_open_questions: true
---
```

| Field                     | Required | Meaning                                                                     |
| ------------------------- | -------- | --------------------------------------------------------------------------- |
| `id`                      | yes      | `SPEC-001` のようなspec ID                                                  |
| `title`                   | yes      | 機能名                                                                      |
| `status`                  | yes      | `template` / `draft` / `review` / `approved` / `implemented` / `deprecated` |
| `approved_by`             | no       | 実装承認者。個人利用では空でよい                                            |
| `blocking_open_questions` | yes      | 実装前に解消すべき未決事項があるか                                          |

Codexへ実装を依頼できるのは、原則として `status: approved` かつ `blocking_open_questions: false`
のspecだけです。

## 命名

```text
001-feature-name/
002-another-feature/
```

- 先頭は3桁の連番にする。
- 後ろは英小文字とハイフンで機能名を書く。
- 汎用名の `feature-name` は、利用先プロジェクトの機能名へ置き換える。

## Spec一覧

| Spec     | Directory           | Status   | Related Requirements |
| -------- | ------------------- | -------- | -------------------- |
| SPEC-001 | `001-feature-name/` | template | `FR-XXX`, `NFR-XXX`  |

## ステータス

- `template`: scaffold内のテンプレートまたはサンプル
- `draft`: 作成中
- `review`: レビュー中
- `approved`: 実装可能
- `implemented`: 実装済み
- `deprecated`: 廃止

`template`
はこのscaffoldのサンプルだけで使います。利用先プロジェクトでコピーしたspecは、内容を書き始めた時点で
`draft` に変更してください。

## Ready for Implementation

Codexへ実装を依頼する前に、対象specで次を確認します。

- [ ] Frontmatterが `status: approved`、`blocking_open_questions: false` になっている。
- [ ] Summaryがユーザー価値を説明している。
- [ ] In ScopeとOut of Scopeが分かれている。
- [ ] Acceptance Criteriaが検証可能な表現になっている。
- [ ] Acceptance Criteriaの `Verified By` にテストIDまたは手動確認IDがある。
- [ ] Error BehaviorとEdge Casesに主要な異常系がある。
- [ ] `plan.md` に変更対象、リスク、検証方法がある。
- [ ] `tasks.md` が実行可能な作業単位に分かれている。
- [ ] `test-cases.md` に単体、統合、E2Eまたは手動確認の判断がある。
- [ ] API変更がない場合も `api.md` に「API変更なし」と書かれている。

## Split Guidelines

1つのspecが大きくなりすぎる場合は、次の単位で分割します。

- ユーザーが得る価値が別である。
- 画面、API、DB変更のリリースタイミングが別である。
- テスト観点やリスクが独立している。
- 実装PRが大きくなり、レビューで仕様追跡しにくい。
