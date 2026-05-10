# ADR-0001 Record Architecture Decisions

## Status

accepted

## Context

このscaffoldでは、Codexと開発者が設計判断の背景を追えるようにする必要があります。

仕様やコードだけでは、なぜその構成や制約を選んだのかが失われやすくなります。

## Decision

後から変更しづらい設計判断、複数案から選んだ判断、非機能要件に影響する判断は、ADRとして
`docs/architecture/adr/` に記録します。

## Consequences

- 判断理由をCodexへ明示しやすくなる。
- 過去の制約を知らずに設計を戻すリスクを下げられる。
- ADRの更新コストが増えるため、小さな実装判断はspecのDecision Logに記録する。

## Alternatives Considered

| Option                     | Reason Rejected                      |
| -------------------------- | ------------------------------------ |
| specだけに判断を記録する   | 機能横断の設計判断を追いづらい       |
| READMEだけに判断を記録する | 判断の履歴とステータスを管理しづらい |
