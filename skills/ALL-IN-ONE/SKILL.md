---
name: ALL-IN-ONE
description: Use when starting any task that may need skills, plugins, connectors, MCP tools, or automatic capability routing
---

# ALL-IN-ONE

## Overview

Capability router for the current task. Select the smallest relevant set of skills, plugin tools, connectors, and MCP capabilities.

Core rule: route first, then act. Never claim a skill, plugin, connector, or tool is available until the runtime exposes it.

## When to Use

Use when a task may need more than one capability, an explicit skill/plugin/app is mentioned, or the correct tool path is not obvious.

Do not use for trivial single-step answers, simple shell lookups, or tasks where a higher-priority instruction already names the exact skill or tool.

## Routing Contract

1. Identify the goal, explicit mentions, files, apps, plugins, current mode, repo context, and higher-priority constraints.
2. Select process skills before domain skills:
   - Planning/spec: planning, brainstorming, writing-plans, project-planner.
   - Debugging/fixing: systematic-debugging, test-driven-development, verification-before-completion.
   - Skills: writing-skills plus test-driven-development.
   - Frontend/product UI: frontend-design, interaction-design, web framework skills.
3. Select domain skills and tools only when the task calls for them:
   - GitHub/PR/CI/review: GitHub skills/tools.
   - Drive/Docs/Sheets/Slides: Google Drive skills/connectors.
   - OpenAI API/key/platform: OpenAI developer/platform skills/tools.
   - Reports/dashboards/charts: data analytics and artifact tools.
   - Images/video/design: image, Canva, Figma, creative production, HeyGen, invideo, HyperFrames.
   - Web apps/deployments: frontend, Next.js, Vercel, Supabase, Stripe.
4. Discover plugins, connectors, and MCP tools before use. Request plugin installation only for an exact user request and an available candidate.
5. Announce selected capabilities briefly, then follow their instructions exactly. If none match, say so and use base tools.

## Runtime Discovery

| Runtime | Discovery path |
|---|---|
| Codex | Use `tool_search` for deferred plugin, connector, and MCP tools. |
| Claude/Copilot/Gemini | Use the runtime's native skill/plugin activation or discovery tool. |
| Unknown | State the limitation and continue with exposed base tools. |

## Hard Limits

- Do not load all skills or plugin docs into context.
- Do not install, enable, or invoke unavailable plugins by assertion.
- Do not bypass user instructions, AGENTS.md, system/developer rules, permissions, sandboxing, Plan Mode, safety policy, or tool schemas.
- Do not use file reads instead of proper skill/tool activation.
- Do not keep searching once the relevant capability set is clear.

## Output Shape

When using this skill, start with one concise status line:

```text
Using ALL-IN-ONE to route this task: process=[...]; domain=[...]; tools=[...]; unavailable=[...]; reason=[...].
```

Keep it short. Use `none` for empty slots. If discovery fails, say what was unavailable and use the best safe fallback.

## Validation Scenarios

Use these checks when editing this skill:

| Scenario | Expected routing |
|---|---|
| "Fix this frontend bug and open a PR" | Debugging/TDD/verification, frontend if relevant, GitHub only if available |
| "Analyze this Google Sheet and build a dashboard" | Google Drive/Sheets, data analytics, artifact tools |
| "Create a new skill" | writing-skills plus test-driven-development background |
| "Generate an image" | image generation/editing capability, no unrelated coding skills |
| "Use a plugin that is not installed" | Discover candidates; request install only for an exact explicit plugin request |

Pass means relevant routing without full-context loading.

## Common Mistakes

| Mistake | Correction |
|---|---|
| "ALL-IN-ONE means load everything" | It means route to the smallest relevant set. |
| Assuming a plugin exists | Discover it through available tooling first. |
| Treating installation as automatic | Require an exact user request and available candidate. |
| Skipping process skills | Load them before domain skills. |
| Ignoring higher-priority instructions | Higher-priority instructions always win. |
