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

| File | 役割 |
|---|---|
| `README.md` | spec全体の索引 |
| `spec.md` | 何を満たすか |
| `plan.md` | どう作るか |
| `tasks.md` | どの順番で進めるか |
| `test-cases.md` | どう確認するか |
| `api.md` | APIの追加、変更、利用内容 |

## 命名

```text
001-feature-name/
002-another-feature/
```

- 先頭は3桁の連番にする。
- 後ろは英小文字とハイフンで機能名を書く。
- 汎用名の `feature-name` は、実プロジェクトの機能名へ置き換える。

## Spec一覧

| Spec | Directory | Status | Related Requirements |
|---|---|---|---|
| SPEC-001 | `001-feature-name/` | template | `FR-XXX`, `NFR-XXX` |

## ステータス

- `draft`: 作成中
- `review`: レビュー中
- `approved`: 実装可能
- `implemented`: 実装済み
- `deprecated`: 廃止
