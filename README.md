# ALL-IN-ONE Skill

![ALL-IN-ONE routing tutorial](assets/all-in-one-routing-tutorial.png)

ALL-IN-ONE is a lightweight skill router for AI coding agents. It helps an agent inspect the current task, choose the smallest useful set of skills, plugins, connectors, and MCP tools, then act under the active system, developer, user, and project instructions.

It is not a full-context loader. Loading every skill or plugin would waste context and increase routing errors. ALL-IN-ONE instead follows the rule: route first, then act.

## What It Does

- Reads the user's goal, files, explicit app/plugin mentions, current mode, repo context, and higher-priority constraints.
- Selects process skills before domain skills.
- Uses runtime discovery such as `tool_search` before plugin, connector, or MCP tool use.
- Refuses to claim unavailable tools are installed or enabled.
- Keeps the response short by announcing selected capabilities and the reason.

## Install

Copy the skill folder into your user skills directory:

```powershell
Copy-Item -Recurse -Force .\skills\ALL-IN-ONE "$HOME\.agents\skills\ALL-IN-ONE"
```

Expected layout:

```text
~/.agents/skills/ALL-IN-ONE/SKILL.md
```

Codex also supports user skills from `~/.agents/skills/`.

## Usage

Ask your agent to use ALL-IN-ONE at the start of a task:

```text
Use ALL-IN-ONE for this task: fix the frontend bug and open a PR.
```

Expected behavior:

```text
Using ALL-IN-ONE to route this task: selected debugging/TDD, frontend, and GitHub capabilities because the task is a frontend fix with a PR publish step.
```

## Safety Limits

ALL-IN-ONE does not:

- Load all skills or plugin docs into context.
- Install plugins automatically.
- Bypass system, developer, user, AGENTS.md, sandbox, safety, Plan Mode, or tool schema rules.
- Pretend unavailable skills, connectors, or tools exist.

## Documentation

- [Chinese README](README.zh-CN.md)
- [Bilingual usage guide](docs/usage.md)
- [Skill source](skills/ALL-IN-ONE/SKILL.md)

## License

MIT
