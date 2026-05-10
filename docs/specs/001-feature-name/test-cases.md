# Test Cases

## Related Requirements

- `FR-XXX`
- `NFR-XXX`

## Unit Tests

| Test ID | Verified AC | Target | Case | Expected |
|---|---|---|---|---|
| UT-001 | AC-001 | 対象関数またはコンポーネント | 正常系の代表条件 | 期待結果を書く |
| UT-002 | AC-002 | 対象関数またはコンポーネント | 境界値または異常系 | 期待結果を書く |

## Integration Tests

| Test ID | Verified AC | Target | Case | Expected |
|---|---|---|---|---|
| IT-001 | AC-001 | API、DB、外部連携など | 主要な連携が成功する | 期待結果を書く |
| IT-002 | AC-002 | API、DB、外部連携など | 連携失敗または権限不足 | 期待結果を書く |

## E2E Tests

| Test ID | Verified AC | Scenario | Expected |
|---|---|---|---|
| E2E-001 | AC-001 | ユーザーが主要フローを完了する | 期待する画面、データ、通知が確認できる |

## Manual Checks

- 自動化しない確認があれば、手動確認ID、対応AC、手順、期待結果を書く。
- 手動確認が不要な場合は「なし」と書く。

## Regression Risks

- 既存機能に影響しそうな箇所を書く。
- 影響がない場合も「なし」と書く。
