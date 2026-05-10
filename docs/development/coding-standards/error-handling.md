# Error Handling

エラーハンドリング方針を記述します。

## Rule

- 例外やエラーを握りつぶさない。
- ユーザー向けメッセージと内部ログの情報量を分ける。
- 認証、認可、入力不正、競合、外部連携失敗を区別する。
- リトライ可能なエラーと不可能なエラーを区別する。
- APIエラー形式は `docs/specs/{feature}/api.md` に記録する。

## Documentation

新しいエラー種別を追加した場合は、関連specの
`api.md`、`test-cases.md`、必要に応じて運用runbookを更新する。
