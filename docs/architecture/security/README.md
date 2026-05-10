# Security Architecture

セキュリティ設計全体の方針を記述します。

## Contents

- `authentication.md`: 認証方式
- `authorization.md`: 認可方式
- `threat-model.md`: 脅威モデル

## Rule

- 認証と認可を分けて扱う。
- 権限境界をAPI、UI、データアクセスの各層で確認する。
- 秘密情報、個人情報、監査ログの扱いを明確にする。
