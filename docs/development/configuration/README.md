# Configuration

設定ファイルの扱い方、秘密情報、環境差分、CI設定の考え方を記述します。

## Rule

- 秘密情報をリポジトリにコミットしない。
- 環境変数を追加したら、用途、必須/任意、デフォルト値、利用環境を書く。
- 環境差分はコード内の分岐だけに閉じ込めず、ここに記録する。
- CIで必要な設定は、ローカル開発との差分も含めて書く。

## Environment Variables

| Name          | Required | Default | Used In                   | Notes      |
| ------------- | -------- | ------- | ------------------------- | ---------- |
| `EXAMPLE_ENV` | no       | none    | local / test / production | 説明を書く |
