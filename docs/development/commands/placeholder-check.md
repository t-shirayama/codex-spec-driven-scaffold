# Placeholder Check

テンプレートを利用先プロジェクトへコピーした後、汎用名、仮ID、仮コマンドの置き換え漏れを確認します。

## Command

```sh
sh scripts/check-placeholders.sh
```

スクリプトを使わずに直接実行する場合:

```sh
rg -n \
  "FR-XXX|NFR-XXX|SPEC-XXX|Feature Name|<[A-Za-z0-9_-]+>|YYYY-MM-DD|001-feature-name|screen-0[0-9]|feature-area-[0-9]{2}" \
  README.md AGENTS.md docs .github \
  -g '!docs/templates/**' \
  -g '!docs/examples/**' \
  -g '!docs/specs/001-feature-name/**' \
  -g '!docs/development/commands/placeholder-check.md'
```

## Expected Result

利用先プロジェクトで実運用するファイルには、検索結果が残らない状態を目指します。検索結果がある場合、スクリプトはexit
code 1で終了します。

このscaffoldリポジトリ自体では、コピー元として意図的に汎用名や仮IDを含むため、検索結果が出ます。

## Notes

- `docs/templates/**` はコピー元なので検索対象から外します。
- `docs/examples/**` は完成例なので検索対象から外します。
- `docs/specs/001-feature-name/` はサンプルなので検索対象から外します。
- `<install-command>` などは、`docs/development/commands/README.md`
  で実際のコマンドに置き換えてください。
