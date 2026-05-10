# Backend Architecture

バックエンド設計全体の方針を記述します。

## Rule

- API層、アプリケーションサービス、ドメインロジック、永続化を分ける。
- 入力検証、認可、トランザクション境界を明確にする。
- 外部連携は失敗、タイムアウト、再試行の扱いを設計する。

## Related

- `services.md`
- `domain-logic.md`
