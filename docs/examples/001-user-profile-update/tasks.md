# Tasks

## Preparation

- [ ] `spec.md`、`plan.md`、`test-cases.md`、`api.md` を読む。
- [ ] 認証ユーザー取得、プロフィール保存、プロフィール設定画面の既存実装を確認する。
- [ ] 対象specが `status: approved`、`blocking_open_questions: false` であることを確認する。

## Implementation

- [ ] 表示名と自己紹介文のバリデーションを実装する。
- [ ] 認証ユーザー自身のプロフィールを更新するAPIを実装する。
- [ ] プロフィール設定画面で保存、成功、エラー、未ログイン状態を扱う。
- [ ] 更新成功後、APIレスポンスの保存済み値を画面へ反映する。
- [ ] 仕様外のメール、パスワード、画像、権限変更を追加していないか確認する。

## Tests

- [ ] UT-001からUT-003を追加または更新する。
- [ ] IT-001からIT-004を追加または更新する。
- [ ] E2E-001とE2E-002を追加または更新する。
- [ ] 実行できるテストを実行し、結果を記録する。

## Documentation

- [ ] `api.md` が実装したAPIと一致していることを確認する。
- [ ] 画面変更がある場合は `docs/designs/screens/profile-settings/` を更新する。
- [ ] `test-cases.md` の `Verified AC` がAcceptance Criteriaと一致していることを確認する。
- [ ] 仕様判断が増えた場合は `spec.md` のDecision Logを更新する。

## Done

- [ ] AC-001からAC-005をすべて満たしている。
- [ ] 不要な差分が含まれていない。
- [ ] 実行したテスト、または実行できなかった理由を説明できる。
