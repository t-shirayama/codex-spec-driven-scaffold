# Commands

よく使う開発コマンドの方針を記述します。

このscaffold自体はドキュメントリポジトリなので、アプリケーションのinstall、build、testコマンドはありません。利用先プロジェクトでは、このファイルの仮コマンドを実際のセットアップ、lint、test、build、dev
serverのコマンドに置き換えてください。

## Command List

| Purpose           | Command                                   | Notes                          |
| ----------------- | ----------------------------------------- | ------------------------------ |
| Document Search   | `rg "<keyword>" docs AGENTS.md README.md` | 関連ドキュメント確認           |
| File List         | `rg --files`                              | 構成確認                       |
| Git Status        | `git status --short`                      | 変更差分確認                   |
| Placeholder Check | `placeholder-check.md`                  | 汎用名や仮IDの置き換え漏れ確認 |
| Install           | `<install-command>`                       | 利用先プロジェクトで置き換える |
| Lint              | `<lint-command>`                          | 利用先プロジェクトで置き換える |
| Unit Test         | `<unit-test-command>`                     | 利用先プロジェクトで置き換える |
| Integration Test  | `<integration-test-command>`              | 利用先プロジェクトで置き換える |
| E2E Test          | `<e2e-test-command>`                      | 利用先プロジェクトで置き換える |
| Build             | `<build-command>`                         | 利用先プロジェクトで置き換える |
| Dev Server        | `<dev-server-command>`                    | 利用先プロジェクトで置き換える |

## Rule

- Codexが実行したコマンドは完了報告に含める。
- 実行できなかった場合は、理由と次に実行すべきコマンドを書く。
- 利用先プロジェクトでは、`<...>` の仮コマンドを実際のコマンドに置き換える。
- テストコマンドを変更した場合は、`docs/testing/` と対象specの `test-cases.md` も確認する。
- テンプレートをコピーした後は `docs/development/commands/placeholder-check.md`
  に従って、汎用名や仮IDの置き換え漏れを確認する。
