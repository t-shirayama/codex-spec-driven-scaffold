# Implementation Plan

## Target Areas

| Area | Expected Change |
|---|---|
| Frontend | プロフィール設定画面に表示名、自己紹介文、保存状態、エラー表示を実装する |
| Backend | 認証ユーザー自身のプロフィール更新APIを追加する |
| Database | 既存のuser profileテーブルに `display_name` と `bio` がある前提。なければ別specでmigrationを扱う |
| API | `PATCH /api/me/profile` を追加する |
| Docs | spec、API、画面仕様、テスト観点を更新する |

## Approach

1. 既存の認証ユーザー取得方法とプロフィール保存場所を確認する。
2. 表示名と自己紹介文のバリデーションを共有可能な場所に実装する。
3. サーバー側で認証ユーザーIDだけを更新対象にする。
4. フロントエンドは保存中、成功、validation error、未ログインの状態を扱う。
5. ACに紐づくUT、IT、E2Eを追加または更新する。
6. API仕様と画面仕様を更新する。

## Dependencies

- 認証済みユーザーを取得する既存の仕組み。
- プロフィール情報を保存する既存の永続化層。
- プロフィール設定画面の既存ルーティング。

## Risks

| Risk | Impact | Mitigation |
|---|---|---|
| 別ユーザーのプロフィールを更新できる | 権限侵害 | リクエストにuserIdを受け取らず、認証コンテキストから更新対象を決める |
| バリデーションが画面とAPIでずれる | ユーザー体験とAPI契約が不一致になる | API側を正とし、フロントエンドは同じ制約値を参照する |
| 保存成功後に古いプロフィールが表示される | 更新できたか判断できない | APIレスポンスの保存済み値で画面状態を更新する |

## Rollout

通常リリース。DB migrationが必要な場合は、このspecでは実装せず、別specでmigrationとロールバック手順を定義する。

## Verification

- Unit: プロフィール入力バリデーション。
- Integration: `PATCH /api/me/profile` の成功、validation error、未ログイン。
- E2E: プロフィール設定画面で保存し、画面に保存値が反映されること。
- Manual: API、画面仕様、test-casesのAC対応を確認する。
