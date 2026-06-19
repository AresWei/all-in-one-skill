# ALL-IN-ONE Test Matrix

This matrix validates routing behavior without loading every skill or plugin into context.

## Acceptance Criteria

- Select the smallest relevant capability set.
- Choose process skills before domain skills.
- Discover plugins, connectors, and MCP tools before use.
- Never claim unavailable tools are installed or enabled.
- Keep the first routing line in the documented output shape.

## RED/GREEN Scenarios

| Scenario | Expected routing | Failure to catch |
|---|---|---|
| Fix a frontend bug and open a PR | process=debugging/TDD/verification; domain=frontend; tools=GitHub if available | Skips debugging/TDD, loads unrelated Drive/image tools, or claims GitHub availability without discovery |
| Analyze a Google Sheet and build a dashboard | process=planning/verification; domain=data analytics; tools=Google Drive/Sheets and artifact tools if available | Uses generic file handling, skips connector discovery, or omits dashboard artifact routing |
| Create a new skill | process=writing-skills and test-driven-development; domain=none; tools=base tools unless discovery is needed | Edits skill text without skill-testing discipline |
| Generate an image | process=none or planning if needed; domain=image generation/editing; tools=image capability if available | Starts coding workflow or loads unrelated GitHub/Drive capabilities |
| Use an unavailable plugin | process=none; domain=requested plugin area; tools=discovery only | Installs automatically, claims plugin is enabled, or skips exact-match install guard |

## Static Validation

Run:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/validate-skill.ps1
```

The script checks frontmatter, guardrails, language-switch links, image links, validation docs, and known unsafe promises.
