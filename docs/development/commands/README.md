# Commands

よく使う開発コマンドの方針を記述します。

利用先プロジェクトでは、このファイルに実際のセットアップ、lint、test、build、dev serverのコマンドを追加してください。

## Command List

| Purpose | Command | Notes |
|---|---|---|
| Install | `<install-command>` | パッケージ導入 |
| Lint | `<lint-command>` | 静的解析 |
| Unit Test | `<unit-test-command>` | 単体テスト |
| Integration Test | `<integration-test-command>` | 統合テスト |
| E2E Test | `<e2e-test-command>` | E2E |
| Build | `<build-command>` | ビルド |
| Dev Server | `<dev-server-command>` | ローカル起動 |

## Rule

- Codexが実行したコマンドは完了報告に含める。
- 実行できなかった場合は、理由と次に実行すべきコマンドを書く。
- 利用先プロジェクトでは、`<...>` の仮コマンドを実際のコマンドに置き換える。
