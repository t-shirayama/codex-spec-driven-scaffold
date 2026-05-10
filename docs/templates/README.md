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
