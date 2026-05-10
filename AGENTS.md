# AGENTS.md

このリポジトリは、Codexを活用した仕様駆動開発のscaffoldです。

Codexは実装・修正・レビューを行う前に、以下のルールに従ってください。

## 基本方針

- 日本語で簡潔かつ丁寧に回答してください。
- 仕様に書かれていない振る舞いを勝手に実装しない。
- 不明点がある場合は、最小限の仮定を置き、その仮定を明示する。
- 実装、テスト、ドキュメント更新を一体で扱う。
- 変更範囲は対象specに必要なものへ絞る。
- プロジェクト固有の機能名は、scaffoldの汎用名から置き換えて使う。

## 実装前に読むもの

機能実装では、原則として以下を読む。

1. `docs/README.md`
2. `docs/development/README.md`
3. `docs/development/coding-standards/README.md`
4. `docs/development/naming/README.md`
5. `docs/specs/{feature}/README.md`
6. `docs/specs/{feature}/spec.md`
7. `docs/specs/{feature}/plan.md`
8. `docs/specs/{feature}/tasks.md`
9. `docs/specs/{feature}/test-cases.md`
10. `docs/specs/{feature}/api.md`

画面やUIが関係する場合は、以下も読む。

- `docs/designs/README.md`
- `docs/designs/screens/{screen}/README.md`

設計判断が関係する場合は、以下も読む。

- `docs/architecture/README.md`
- `docs/architecture/adr/README.md`

## 実装ルール

- `spec.md` の受け入れ条件を満たすこと。
- `tasks.md` のチェックリストに沿って作業すること。
- API変更がある場合は、対象specの `api.md` を更新すること。
- 画面変更がある場合は、`docs/designs/screens/` を更新すること。
- 仕様判断をした場合は、`spec.md` の Decision Log に記録すること。
- アーキテクチャ上の大きな判断をした場合は、`docs/architecture/adr/` に記録すること。

## テストルール

- ロジック変更には単体テストを追加または更新する。
- API、DB、外部連携などの変更には統合テストを追加または更新する。
- 重要なユーザーフローにはE2Eテストを追加または更新する。
- テスト観点は `docs/specs/{feature}/test-cases.md` に反映する。
- テストを実行できない場合は、その理由と実行すべきコマンドを明記する。

## ドキュメント更新ルール

振る舞いが変わる場合は、必要に応じて以下を更新する。

- `docs/specs/{feature}/spec.md`
- `docs/specs/{feature}/plan.md`
- `docs/specs/{feature}/tasks.md`
- `docs/specs/{feature}/test-cases.md`
- `docs/specs/{feature}/api.md`
- `docs/designs/screens/`
- `docs/testing/`
- `docs/architecture/adr/`
- `docs/operations/`

## 技術負債監査

ユーザーが技術負債監査、コードヘルスチェック、リファクタリング優先順位、保守性レビューを求めた場合は、以下を参照する。

- `docs/development/skills/tech-debt-audit/SKILL.md`

監査結果は、具体的なファイルパスと行番号を根拠として提示する。
根拠のない一般論だけで判断しない。

## 完了条件

作業完了時は、以下を満たすこと。

- 実装がspecの受け入れ条件を満たしている。
- 必要なテストが追加または更新されている。
- API、画面、設計、運用に影響がある場合、関連ドキュメントが更新されている。
- 不要な差分が含まれていない。
- 実行したテスト、または実行できなかった理由が説明されている。
