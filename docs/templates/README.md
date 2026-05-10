# Templates

このフォルダは、仕様駆動開発で使うドキュメントテンプレートを管理します。

新しい要件、spec、画面仕様、ADRを作成するときは、該当テンプレートをコピーして利用してください。テンプレート内の `XXX`、`<...>`、説明文は、利用先プロジェクトの内容に置き換えます。

## テンプレート一覧

| Path | 用途 |
|---|---|
| `requirements/functional-requirement-template.md` | 機能要件 |
| `requirements/non-functional-requirement-template.md` | 非機能要件 |
| `specs/` | 機能spec一式 |
| `designs/screen-template.md` | 画面仕様 |
| `architecture/adr-template.md` | ADR |

## 使い方

1. テンプレートを対象ディレクトリへコピーする。
2. ID、タイトル、関連リンクを利用先プロジェクトの名前へ置き換える。
3. 未確定の内容は空欄にせず、仮定または未決事項として明記する。
4. Codexに依頼する前に、受け入れ条件とテスト観点が最低1つ以上あるか確認する。
5. 実装依頼前に、spec frontmatterを `status: approved`、`blocking_open_questions: false` にする。
6. Acceptance Criteriaの `Verified By` と `test-cases.md` の `Verified AC` を対応させる。

## コピー例

spec一式を作る場合:

```text
docs/specs/001-feature-name/
├── README.md
├── spec.md
├── plan.md
├── tasks.md
├── test-cases.md
└── api.md
```

テンプレートから作る場合は、`docs/templates/specs/` の各ファイルをコピーし、ファイル名から `-template` を外します。コピー後は、`SPEC-XXX`、`Feature Name`、`FR-XXX`、`NFR-XXX`、`<...>` を実際の値に置き換えてください。

## Template Hygiene

- テンプレートにはプロダクト固有の名前を入れない。
- 利用先プロジェクトで使うサンプル値は、サンプルであることが分かる名前にする。
- 空欄のまま残さず、「なし」「未定」「別specで扱う」のいずれかを明記する。
- チームの運用が決まったら、テンプレートより利用先プロジェクトのルールを優先する。
- テンプレートをコピーした後は、`docs/development/commands/placeholder-check.md` の検索式で置き換え漏れを確認する。
