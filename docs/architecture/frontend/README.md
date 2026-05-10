# Frontend Architecture

フロントエンド設計全体の方針を記述します。

## Rule

- UIコンポーネント、状態管理、APIアクセス、ルーティングの責務を分ける。
- 画面仕様は `docs/designs/screens/` に置き、実装詳細と混ぜない。
- アクセシビリティとエラー状態を最初から考慮する。

## Related

- `components.md`
- `state-management.md`
