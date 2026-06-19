# ALL-IN-ONE v2 Optimization Notes

## Why v2

v1 established the core rule: route first, then act. The v2 update improves stability and reuse by making the trigger boundary, runtime discovery path, output contract, and validation evidence explicit.

## What Changed

- Added `When to Use / Do not use` guidance so the router does not trigger for trivial one-step tasks.
- Added a runtime discovery table for Codex and other agent runtimes.
- Tightened the output line to include process skills, domain skills, tools, unavailable capabilities, and reason.
- Added a test matrix for common routing scenarios and failure modes.
- Added a static validator for repeatable repository checks.
- Added `.gitattributes` to reduce line-ending churn across platforms.
- Updated README and usage docs with cross-platform install commands and validation entry points.

## What Stayed Out

- No full list of every skill or plugin. Runtime discovery is more accurate and less likely to go stale.
- No automatic plugin installation. Installation still requires an exact user request and an available candidate.
- No real subagent pressure test in this update. The test matrix documents scenarios; live subagent testing should be run only when explicitly requested.

## How to Verify

Run:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/validate-skill.ps1
```

Then review:

- `skills/ALL-IN-ONE/SKILL.md`
- `docs/test-matrix.md`
- `README.md`
- `README.zh-CN.md`

The expected result is a small, reusable router skill with clear guardrails and repeatable validation.
