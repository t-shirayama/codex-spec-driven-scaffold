# Test Strategy

テスト戦略全体を記述します。

## Pyramid

- Unit: 分岐、計算、バリデーション、状態遷移を高速に確認する。
- Integration: API、DB、外部連携、モジュール境界の契約を確認する。
- E2E: ユーザーが価値を得る主要フローを確認する。

## Policy

- 失敗時に原因を特定しやすい層でテストする。
- E2Eだけに依存しない。
- 仕様に対応するテスト観点を `docs/specs/{feature}/test-cases.md` に残す。
