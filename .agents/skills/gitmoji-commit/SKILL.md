---
name: gitmoji-commit
description: 审查本仓改动，生成中文 Gitmoji 提交并普通推送；核对公开内容与远端，禁止未经授权改写历史。
---

# Gitmoji 中文提交与推送

从用户 Codes 项目中的中文版 gitmoji-commit 技能移植，按本仓 AGENTS.md 调整。
原技能的其他项目身份表、子仓 DCO、私有 Issue 同步与专属分支规则不适用于本仓。

## 1. 确认仓库与范围

运行 `git rev-parse --show-toplevel`、`git status --short --branch`、`git remote -v`。
目标仅为 `TallMessiWu/arturia-keylab-mk3-apple-fixes`，身份以仓库实际配置为准。
使用真实 Git 作者信息，不伪造身份。遵守根 AGENTS.md 的分支策略。

## 2. 审查与验证

整理本轮实现和文档，保留有效测试结论与未解决限制，不追加无意义的流水账。
只暂存本任务文件；检查 `git diff --cached --name-only` 和 `git diff --cached`。
无暂存内容不创建空提交。检查 LF、空白错误、源码与安装包一致性和相关测试。
这是公开仓库：排除凭据、私人项目、用户路径、MIDI 记录、偏好设置、日志与 dump。
不得把静态检查写成硬件验证；中文与英文 README 的安装和测试范围必须一致。

## 3. 提交格式

`<emoji-code> <type>(<scope>): <subject>`

Subject 和 Body 使用中文，技术标识保持原样。标题动词开头、简洁准确。
使用 `:bug:` 等文本代码，不使用原始 emoji。通常只需一个 `-m`。

| 类型 | 用途 |
| --- | --- |
| `:tada: chore` | 初始化项目 |
| `:bug: fix` | 修复问题 |
| `:sparkles: feat` | 新功能 |
| `:memo: docs` | 文档 |
| `:white_check_mark: test` | 测试 |
| `:wrench: chore` | 配置 |
| `:robot: chore(agents)` | Agent 工作流 |
| `:recycle: refactor` | 重构 |
| `:package: chore` | 安装包更新 |

例：`git commit -m ":bug: fix(mainstage): 补齐 Creator Studio 动作绑定"`

## 4. 提交并推送

展示拟用提交命令，验证完成后直接提交、普通推送，无需额外确认文案。
推送前核对当前分支、追踪分支、pushRemote 与 `git remote get-url --push --all origin`。
所有 push URL 必须指向本仓；不得写入 Arturia 或任何无关仓库。
初次推送可用 `git push -u origin HEAD`，已有追踪关系时使用普通 `git push`。
用户明确要求不推送时遵从。不要只提交后把推送留给用户。

遇到非快进先查原因，不用强推掩盖网络/认证失败。改写已发布历史必须先取得授权；
授权后也只允许核对 lease 后使用 `--force-with-lease`，禁止 `--force`。
不自动创建或更新 Issue。失败如实报告，不假称已同步。
完成后报告真实 SHA、远端分支、实际 ahead/behind 与验证范围。
