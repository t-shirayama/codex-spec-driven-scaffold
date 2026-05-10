# Proposal: Codex Spec-Driven Development Scaffold

## Problem

Codex is powerful when implementation context is explicit. In many repositories, the context Codex needs is scattered across issues, README files, partial comments, test names, and unstated team conventions. That makes implementation quality depend on how much context a user remembers to include in each prompt.

Common failure modes include:

- Implementing behavior that was not requested.
- Missing important edge cases or permission checks.
- Updating code without updating tests, API notes, or design documents.
- Reviewing changes based on style preferences instead of specification risk.
- Losing track of why an implementation decision was made.

## Why Codex Struggles

Codex can reason well over concrete context, but it needs a stable map of the work:

- What user value is being implemented.
- What is explicitly out of scope.
- Which acceptance criteria must be satisfied.
- Which tests verify each criterion.
- Which API, UI, architecture, and operations documents must change.
- Which repository rules constrain edits.

Without that structure, the prompt has to recreate the project process every time.

## Proposed Scaffold

This repository provides a repeatable specification-driven structure that connects requirements, implementation plans, tasks, tests, API changes, design notes, and review criteria through `AGENTS.md`.

Core files:

| Path | Purpose |
|---|---|
| `AGENTS.md` | Codex rules, required reading order, implementation constraints, completion criteria |
| `docs/specs/{feature}/spec.md` | Scope, behavior, acceptance criteria, decisions, open questions |
| `docs/specs/{feature}/plan.md` | Implementation approach, risks, rollout, verification |
| `docs/specs/{feature}/tasks.md` | Codex-friendly execution checklist |
| `docs/specs/{feature}/test-cases.md` | Unit, integration, E2E, and manual checks linked to AC IDs |
| `docs/specs/{feature}/api.md` | API contract and compatibility notes |
| `docs/development/review/README.md` | Review priorities focused on specification and risk |
| `docs/examples/001-user-profile-update/` | Completed example spec package |

## Why This Helps

The scaffold turns implicit project expectations into explicit, reviewable artifacts.

- `status: approved` and `blocking_open_questions: false` prevent implementation before the spec is ready.
- Acceptance Criteria IDs connect product intent to concrete tests.
- `tasks.md` gives Codex an execution path without hiding the spec.
- `api.md`, design docs, ADRs, and operations docs keep behavior changes connected to documentation changes.
- Review guidance prioritizes specification drift, data risk, security, and missing tests.
- Placeholder checks reduce template-copy mistakes before implementation starts.

## Example Workflow

1. Create or copy a spec from `docs/templates/specs/`.
2. Fill in frontmatter, scope, behavior, Acceptance Criteria, and Open Questions.
3. Link each AC to tests in `test-cases.md`.
4. Move the spec to `status: approved` only when blocking questions are resolved.
5. Ask Codex to implement the approved spec using `AGENTS.md`.
6. Run tests and placeholder checks.
7. Review the PR using `docs/development/review/README.md` and `.github/PULL_REQUEST_TEMPLATE.md`.

## Before / After

Before:

```text
Implement profile editing.
Make sure it works.
```

After:

```text
AGENTS.md を読んだ上で、
docs/specs/001-user-profile-update/ の内容に従って実装してください。

対象specは status: approved、blocking_open_questions: false です。
AC-001 から AC-005 を満たし、test-cases.md の Verified AC 対応を維持してください。
```

## Expected Benefits

- Fewer specification-drift changes.
- Clearer review scope for humans and Codex.
- Better test coverage for acceptance criteria.
- Easier onboarding for new contributors.
- Safer AI-assisted edits in repositories with existing conventions.
- More consistent documentation updates when behavior changes.

## Evidence Plan

This scaffold can be evaluated with small implementation tasks across comparable repositories.

Suggested measurements:

| Measurement | Before | After |
|---|---|---|
| Missing acceptance criteria in final diff | Count review findings | Count review findings |
| Missing tests for requested behavior | Count review findings | Count review findings |
| Out-of-scope changes | Count changed files and reviewer findings | Count changed files and reviewer findings |
| Prompt length needed to get reliable output | Manual prompt notes | Reused prompt template |
| Review time | Reviewer estimate | Reviewer estimate |

The included `docs/examples/001-user-profile-update/` package provides a concrete baseline for testing the workflow.

## Adoption Path

1. Use this repository as a template or copy `docs/`, `AGENTS.md`, and `.github/` into an existing repository.
2. Replace placeholders and project-agnostic names.
3. Add project-specific commands and repository structure.
4. Start with one feature spec and one PR.
5. Compare review findings against a similar non-scaffolded change.

## Positioning

This is not a replacement for product management, architecture review, or tests. It is a lightweight structure for making those inputs explicit enough for Codex to use consistently.

## Short Message

Codexの実装精度は、与える文脈の品質に強く依存します。

このscaffoldは、要件、仕様、実装計画、タスク、テスト、API差分、レビュー観点を `AGENTS.md` 中心に接続し、Codexが一貫した前提で実装、検証、ドキュメント更新まで行えるようにするテンプレートです。
