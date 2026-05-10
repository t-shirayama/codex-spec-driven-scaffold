# Test Cases

## Related Requirements

- `FR-001`
- `NFR-SEC-001`

## Unit Tests

| Test ID | Verified AC | Target | Case | Expected |
|---|---|---|---|---|
| UT-001 | AC-001 | profile validation | `displayName` が1から50文字、`bio` が160文字以内 | valid |
| UT-002 | AC-002 | profile validation | `displayName` が空、空白のみ、51文字 | validation error |
| UT-003 | AC-003 | profile validation | `bio` が161文字 | validation error |

## Integration Tests

| Test ID | Verified AC | Target | Case | Expected |
|---|---|---|---|---|
| IT-001 | AC-001 | `PATCH /api/me/profile` | ログイン済みユーザーが有効な値を送信 | 200、保存済みプロフィールを返す |
| IT-002 | AC-002 | `PATCH /api/me/profile` | 不正な `displayName` を送信 | 400、保存されない |
| IT-003 | AC-003 | `PATCH /api/me/profile` | 不正な `bio` を送信 | 400、保存されない |
| IT-004 | AC-004 | `PATCH /api/me/profile` | 未ログインで送信 | 401、保存されない |

## E2E Tests

| Test ID | Verified AC | Scenario | Expected |
|---|---|---|---|
| E2E-001 | AC-001 | ユーザーがプロフィール設定画面で表示名と自己紹介文を保存する | 成功メッセージが表示され、保存値が画面に残る |
| E2E-002 | AC-004 | 未ログイン状態でプロフィール設定画面またはAPIへアクセスする | ログイン導線または401相当のエラーが表示される |

## Manual Checks

| Check ID | Verified AC | Procedure | Expected |
|---|---|---|---|
| DOC-001 | AC-005 | `spec.md`、`api.md`、画面仕様、テスト観点を見比べる | API制約、エラー、ACとTestの対応に矛盾がない |

## Regression Risks

- 既存のプロフィール表示画面が古いフィールド名を参照している可能性。
- 認証切れ時の共通エラー処理に影響する可能性。
