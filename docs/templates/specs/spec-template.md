# SPEC-XXX Feature Name

## Status

draft / review / approved / implemented / deprecated

## Summary

この機能で実現するユーザー価値を2から3文で書く。

## Background

なぜこの機能が必要かを書く。関連する課題、要件、既存仕様の制約があれば明記する。

## Related Requirements

- `FR-XXX`: 関連する機能要件名
- `NFR-XXX`: 関連する非機能要件名

## Related Designs

- `docs/designs/screens/{screen}/`
- `docs/designs/images/screens/{screen}/`

UIが関係しない場合は「なし」と書く。

## Related API

- `docs/specs/{feature}/api.md`

API変更がない場合は、`api.md` に「変更なし」と書く。

## Scope

### In Scope

- このspecで実装する振る舞いを書く。
- ユーザーに見える変化、APIの変化、データの変化を分けて書く。

### Out of Scope

- 今回は実装しない内容を書く。
- 将来対応に回す内容や、別specで扱う内容を書く。

## Behavior

### Normal Behavior

- 正常系の振る舞いを、入力、処理、出力が分かるように書く。

### Error Behavior

- バリデーションエラー、権限エラー、外部連携失敗などの扱いを書く。

### Edge Cases

- 境界値、空データ、重複、再実行、タイムアウトなどの扱いを書く。

## Acceptance Criteria

- [ ] 主要な正常系が期待通り動作する。
- [ ] 主要な異常系で、ユーザーまたは呼び出し元が原因を理解できる。
- [ ] 仕様に対応するテストが追加または更新されている。
- [ ] API、画面、設計、運用に影響がある場合、関連ドキュメントが更新されている。

## Decision Log

| Date | Decision | Reason |
|---|---|---|
| YYYY-MM-DD | 決定内容を書く | 判断理由を書く |

## Open Questions

- 未決事項があれば書く。実装前に解決が必要なものは明示する。
