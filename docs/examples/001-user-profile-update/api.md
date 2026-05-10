# API

## Summary

ログイン済みユーザー自身のプロフィールを更新するAPIを追加する。

## Endpoints

| Method | Path              | Purpose                            | Change |
| ------ | ----------------- | ---------------------------------- | ------ |
| PATCH  | `/api/me/profile` | 認証ユーザー自身のプロフィール更新 | add    |

## Request

| Field         | Type     | Required | Description                     |
| ------------- | -------- | -------- | ------------------------------- |
| `displayName` | `string` | yes      | 1から50文字。前後空白はtrimする |
| `bio`         | `string` | yes      | 0から160文字                    |

## Response

| Field         | Type     | Description            |
| ------------- | -------- | ---------------------- |
| `displayName` | `string` | 保存済み表示名         |
| `bio`         | `string` | 保存済み自己紹介文     |
| `updatedAt`   | `string` | ISO 8601形式の更新日時 |

## Error Handling

| Status / Code | Condition                         | Response                      |
| ------------- | --------------------------------- | ----------------------------- |
| 400           | `displayName` または `bio` が不正 | field-level validation error  |
| 401           | 未ログイン                        | authentication required error |
| 500           | 想定外の保存失敗                  | retryable server error        |

## Compatibility

- 新規APIのため既存クライアントへの破壊的変更はない。
- 既存プロフィール表示が同じ保存先を参照する場合、更新後の表示値が変わる。

## Notes

- リクエストにuserIdを含めない。
- 更新対象は認証コンテキストから取得する。
