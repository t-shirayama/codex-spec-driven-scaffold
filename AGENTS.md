# AGENTS.md

このリポジトリは、Codexを活用した仕様駆動開発のscaffoldです。

Codexは実装、修正、レビューを行う前に、このファイルのルールに従ってください。

## 基本方針

- 日本語で簡潔かつ丁寧に回答する。
- 仕様に書かれていない振る舞いを勝手に実装しない。
- 不明点がある場合は、最小限の仮定を置き、その仮定を明示する。
- 実装、テスト、ドキュメント更新を一体で扱う。
- 変更範囲は対象specに必要なものへ絞る。
- プロジェクト固有の機能名は、scaffoldの汎用名から置き換えて使う。
- 既存の未コミット変更がある場合は、ユーザーの変更として扱い、無断で戻さない。

## 実装前に読むもの

機能実装では、原則として以下を読む。

1. `docs/README.md`
2. `docs/development/README.md`
3. `docs/development/workflow/README.md`
4. `docs/development/coding-standards/README.md`
5. `docs/development/naming/README.md`
6. `docs/development/commands/README.md`
7. `docs/specs/{feature}/README.md`
8. `docs/specs/{feature}/spec.md`
9. `docs/specs/{feature}/plan.md`
10. `docs/specs/{feature}/tasks.md`
11. `docs/specs/{feature}/test-cases.md`
12. `docs/specs/{feature}/api.md`

画面やUIが関係する場合は、以下も読む。

- `docs/designs/README.md`
- `docs/designs/screens/{screen}/README.md`
- `docs/designs/screens/{screen}/states.md`

設計判断が関係する場合は、以下も読む。

- `docs/architecture/README.md`
- `docs/architecture/adr/README.md`

運用影響がある場合は、以下も読む。

- `docs/operations/README.md`

## 実装ルール

- 実装に入る前に、対象specのfrontmatterを確認する。
- `status: approved`
  ではないspecは実装しない。ただし、spec作成、レビュー、ドキュメント整備だけを依頼された場合は対象外とする。
- `blocking_open_questions: true`
  のspecは実装しない。未決事項を確認し、必要なら質問またはspec更新を先に行う。
- `spec.md` の受け入れ条件を満たす。
- `tasks.md` のチェックリストに沿って作業する。
- 仕様外の改善やリファクタリングは、必要性が明確な場合だけ行う。
- API変更がある場合は、対象specの `api.md` を更新する。
- 画面変更がある場合は、`docs/designs/screens/` を更新する。
- 仕様判断をした場合は、`spec.md` のDecision Logに記録する。
- アーキテクチャ上の大きな判断をした場合は、`docs/architecture/adr/` に記録する。
- 変更した振る舞いに対応するテスト観点を `test-cases.md` に反映する。
- Acceptance Criteriaの各AC IDが、`test-cases.md`
  のテストIDまたは手動確認に紐づいていることを確認する。

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

## レビュー時の観点

レビューを依頼された場合は、次の順に確認する。

参照するもの:

- `docs/development/review/README.md`
- 対象specの `spec.md`、`plan.md`、`tasks.md`、`test-cases.md`、`api.md`

確認順:

1. 仕様逸脱や受け入れ条件の未達がないか。
2. 重要なテストが不足していないか。
3. API、画面、設計、運用のドキュメント更新漏れがないか。
4. セキュリティ、データ破壊、権限、互換性のリスクがないか。
5. 既存の命名、構成、エラーハンドリング方針に沿っているか。

指摘は具体的なファイルパスと行番号を根拠にする。

## 技術負債監査

ユーザーが技術負債監査、コードヘルスチェック、リファクタリング優先順位、保守性レビューを求めた場合は、以下を参照する。

- `docs/development/skills/tech-debt-audit/SKILL.md`

監査結果は、具体的なファイルパスと行番号を根拠として提示する。根拠のない一般論だけで判断しない。

## 完了条件

作業完了時は、以下を満たすこと。

- 実装がspecの受け入れ条件を満たしている。
- 必要なテストが追加または更新されている。
- API、画面、設計、運用に影響がある場合、関連ドキュメントが更新されている。
- 不要な差分が含まれていない。
- 実行したテスト、または実行できなかった理由が説明されている。
