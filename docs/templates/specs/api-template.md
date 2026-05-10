# API

## Summary

この機能で追加、変更、利用するAPIを記述する。

API変更がない場合は、このセクションに「API変更なし」と明記し、以降のセクションは「なし」と書く。

## Endpoints

| Method | Path          | Purpose    | Change                      |
| ------ | ------------- | ---------- | --------------------------- |
| GET    | `/<resource>` | 目的を書く | add / change / use / remove |

## Request

| Field   | Type     | Required | Description |
| ------- | -------- | -------- | ----------- |
| `field` | `string` | yes      | 説明を書く  |

## Response

| Field   | Type     | Description |
| ------- | -------- | ----------- |
| `field` | `string` | 説明を書く  |

## Error Handling

| Status / Code | Condition            | Response         |
| ------------- | -------------------- | ---------------- |
| 400           | 入力が不正           | エラー形式を書く |
| 401 / 403     | 認証または認可に失敗 | エラー形式を書く |
| 500           | 想定外の失敗         | エラー形式を書く |

## Compatibility

- 既存クライアントへの影響を書く。
- 後方互換性が保たれる場合は、その理由を書く。

## Notes

- API仕様が共通化、外部公開、OpenAPI管理される場合は、参照先を書く。
