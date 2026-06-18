# ALL-IN-ONE Usage Guide / 使用教程

## English

### 1. Install

Copy the skill into your user skills directory:

```powershell
Copy-Item -Recurse -Force .\skills\ALL-IN-ONE "$HOME\.agents\skills\ALL-IN-ONE"
```

### 2. Start a Task

Mention ALL-IN-ONE when you want automatic capability routing:

```text
Use ALL-IN-ONE to handle this task: analyze this Google Sheet and build a dashboard.
```

The agent should identify the task type, select relevant skills/tools, and avoid unrelated capabilities.

### 3. Expected Routing Examples

| Task | Expected capabilities |
|---|---|
| Fix a frontend bug and open a PR | Debugging/TDD, frontend, GitHub |
| Analyze a Google Sheet and build a dashboard | Google Drive/Sheets, data analytics, artifact tools |
| Create a new skill | writing-skills, test-driven-development |
| Generate an image | image generation/editing |
| Use a missing plugin | discover candidates first; request install only for an exact explicit request |

### 4. Regenerate the Tutorial Images

The repository uses one English image and one Simplified Chinese image.

English prompt:

```text
Create a clean flat English-only tutorial infographic for a skill named "ALL-IN-ONE". Show a wide left-to-right flow: "1 User Task" -> "2 Analyze" -> "3 Select Capabilities" with two branches "Relevant Skills" and "Plugins / Tools" -> "4 Safe Action". Add the subtitle "Route first, then act". Include guardrails: "Use only what the task needs" and "Never claim unavailable tools". Use a white background, charcoal text, blue and green accents, amber for plugins/tools. No brand logos, no watermarks, no clutter.
```

Chinese prompt:

```text
Create a clean flat Simplified Chinese-only tutorial infographic for a skill named "ALL-IN-ONE". Show a wide left-to-right flow: "1 用户任务" -> "2 分析" -> "3 选择能力" with two branches "相关 Skills" and "插件 / 工具" -> "4 安全执行". Add the subtitle "先路由，再执行". Include guardrails: "只启用任务所需能力" and "不假装工具可用". Use a white background, charcoal text, blue and green accents, amber for plugins/tools. No brand logos, no watermarks, no clutter.
```

## 中文

### 1. 安装

复制技能目录到用户级 skills 目录：

```powershell
Copy-Item -Recurse -Force .\skills\ALL-IN-ONE "$HOME\.agents\skills\ALL-IN-ONE"
```

### 2. 开始任务

当你希望 Agent 自动选择相关技能、插件和工具时，在任务开头提到 ALL-IN-ONE：

```text
Use ALL-IN-ONE to handle this task: analyze this Google Sheet and build a dashboard.
```

Agent 应该识别任务类型，选择相关能力，并避免加载无关能力。

### 3. 路由示例

| 任务 | 期望能力 |
|---|---|
| 修复前端 bug 并创建 PR | 调试/TDD、前端、GitHub |
| 分析 Google Sheet 并生成仪表盘 | Google Drive/Sheets、数据分析、artifact 工具 |
| 创建新技能 | writing-skills、test-driven-development |
| 生成图片 | 图片生成/编辑 |
| 使用未安装插件 | 先发现候选；只有用户明确指定且候选存在时才请求安装 |

### 4. 重新生成教程图

本仓库使用一张英文配图和一张简体中文配图。

英文 prompt：

```text
Create a clean flat English-only tutorial infographic for a skill named "ALL-IN-ONE". Show a wide left-to-right flow: "1 User Task" -> "2 Analyze" -> "3 Select Capabilities" with two branches "Relevant Skills" and "Plugins / Tools" -> "4 Safe Action". Add the subtitle "Route first, then act". Include guardrails: "Use only what the task needs" and "Never claim unavailable tools". Use a white background, charcoal text, blue and green accents, amber for plugins/tools. No brand logos, no watermarks, no clutter.
```

中文 prompt：

```text
Create a clean flat Simplified Chinese-only tutorial infographic for a skill named "ALL-IN-ONE". Show a wide left-to-right flow: "1 用户任务" -> "2 分析" -> "3 选择能力" with two branches "相关 Skills" and "插件 / 工具" -> "4 安全执行". Add the subtitle "先路由，再执行". Include guardrails: "只启用任务所需能力" and "不假装工具可用". Use a white background, charcoal text, blue and green accents, amber for plugins/tools. No brand logos, no watermarks, no clutter.
```
