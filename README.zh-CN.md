# Arturia KeyLab mk3 · Logic Pro 与 MainStage 修复

[![English](https://img.shields.io/badge/Language-English-blue)](README.md) [![简体中文](https://img.shields.io/badge/语言-简体中文-red)](README.zh-CN.md)

适用于 **KeyLab mk3 49、61、88 键**的社区脚本修复。非 Arturia 官方发布，不适用于 KeyLab Essential 或 mkII。

## 已经安装官方脚本，却还是遇到这些问题？

这个项目源于我们安装 Arturia 官方脚本后，在 KeyLab mk3 的 DAW 模式下遇到的两个问题：

- **Logic Pro：**按下主旋钮，打开的却是**智能控制**，而我们期待的是当前轨道的**乐器插件窗口**。检查后发现，原脚本绑定的就是智能控制命令，因此修改了这项绑定。
- **MainStage Creator Studio：**琴的屏幕能显示、浏览预设，但**节拍器、播放/停止、录音、Tap 按钮没有反应**。原脚本的动作字段没有匹配 Creator Studio 的应用名称；补齐对应字段后，这些控制在我们的测试中恢复正常。

这是两个不同的问题：目前没有证据表明 Logic 的绑定问题是 Creator Studio 独有的。这个仓库将修复后的脚本打包，方便遇到相同问题的人直接安装，不必自己改代码；同时包含下文说明的 MainStage Patch 显示修正。

**如果你遇到了上述现象，可以安装下面对应的包。** 如果官方集成已经符合你的使用需求，就不需要替换。

## 安装

1. 退出 **Logic Pro 和 MainStage**。
2. 下载你准备使用的软件对应的安装包：

   | 软件 | 下载 |
   | --- | --- |
   | Logic Pro | [下载 Logic 安装包](https://github.com/TallMessiWu/arturia-keylab-mk3-apple-fixes/raw/refs/heads/main/downloads/KeyLab-mk3-Logic-Fixed.dmg) |
   | MainStage，含 Creator Studio 版 | [下载 MainStage 安装包](https://github.com/TallMessiWu/arturia-keylab-mk3-apple-fixes/raw/refs/heads/main/downloads/KeyLab-mk3-MainStage-Fixed.dmg) |

3. 打开 `.dmg`，双击里面的 **Double-click to Install - KeyLab mk3**。旁边三个 `.device` 文件夹必须保留，不要单独把安装程序移出去运行。如提示需要 Finder 访问权限，请允许。
4. 连接并开启键盘，然后打开对应软件。出现 **自动分配（Auto Assign）** 提示时接受，并将键盘切换到 **DAW 模式**。
5. Logic 的控制表面设置中，输入、输出端口均应为 **KeyLab … mk3 DAW**。MainStage 可先用官方“键盘”Concert 模板检查自动分配。

**切换软件时，要重新安装对应的包。** 两种脚本使用相同安装位置和文件名，后安装的会覆盖之前的，即使不同时运行两款软件也是如此。安装包不要求重置快捷键。

若 macOS 阻止打开安装程序，确认下载来源后，可在“系统设置 → 隐私与安全性”中使用针对该程序的“仍要打开”，无需关闭系统安全功能。也可以使用下文的手动安装方式。

## 修复了什么

| 现象 | 修改 |
| --- | --- |
| Logic：按主旋钮打开智能控制，而不是乐器插件窗口 | 改为“打开/关闭聚焦轨道的乐器插件窗口”。 |
| MainStage Creator Studio：节拍器、播放/停止、录音、Tap 等按键无响应 | 保留原 MainStage 动作字段，增加 Creator Studio 应用名称对应的兼容字段。 |
| MainStage：首次 Patch 显示可能不刷新，滚动时可能显示相邻 Patch 名称 | 修正初始选中状态、列表标题处理及默认 Set/Patch 导航动作定义。 |

MainStage 保留原来的主旋钮行为：进入琴上的 Arturia 编辑模式，**没有额外加入打开插件 GUI 的命令**。

## 测试范围与限制

- 实机测试使用 **KeyLab 88 mk3**。49/61 键版本已同步修改并检查代码一致性，**尚未使用对应硬件实测**。
- 测试软件：**Logic Pro Creator Studio 13.0**、**MainStage Creator Studio 4.3.1**。保留传统 MainStage 字段，但没有另外实测买断版。
- 已实测：Logic 插件窗口开关；MainStage 节拍器、走带、录音、Tap；适当官方模板中的八个旋钮和九根推子。Undo/Redo 及所有 Set/Patch 导航场景尚未逐项实测。
- MainStage 旋钮和推子会匹配 Concert 屏幕控件，实际功能由布局与映射决定。第九推子**不保证在每个 Concert 中都控制总音量**；第九旋钮也不是通用声像控制。工程已有映射可能覆盖导航默认动作。
- **未修复：** Logic 启动后，首次激活某个 Arturia 乐器时，键盘可能在没有按主旋钮的情况下进入 Arturia 模式。Stage-73 V、Analog Lab、B-3 V2 均复现过；按 Back 可返回 DAW 模式，测试期间再次访问相同乐器未再次触发。输入监听没有捕获主旋钮按下信号，怀疑与插件初始化连接有关，但尚未通过电脑发往键盘的消息验证原因。本仓库没有加入强制切模式或禁用插件连接的改动。

## 手动安装与恢复原版

Finder → 前往 → 前往文件夹，输入：

```text
~/Music/Audio Music Apps/MIDI Device Profiles/Arturia/
```

关闭两款软件后，将**其中一种**安装包里的三个 `.device` 文件夹复制到该位置，替换同名文件夹。源码也在 [`profiles/logic`](profiles/logic) 和 [`profiles/mainstage`](profiles/mainstage)。保留 `.device/config.lua` 目录结构；如果你自己改过脚本，请先保存自己的修改。

要恢复原版，从 [Arturia 资源页](https://www.arturia.com/products/hybrid-synths/keylab-mk3/resources) 下载并重新安装对应软件的官方包。此操作替换脚本，不会删除你在 Concert 里自己做的映射。

## 技术说明与开发

Logic 将主旋钮按下的 `keyCmd=1296` 改为测试版本里的 `keyCmd=2397`。命令编号必须针对目标 Logic 版本核对，不应假定所有版本都相同。

MainStage 保留 `action_mainstage`，增加 `action_mainstagecs` 和 `action_mainstagecreatorstudio`。默认动作包括 PanicFull、PlayStop、Record、TapTempo、Metronome、Undo、Redo、PreviousSet、NextSet、PreviousPatch、NextPatch。选中状态初始值改为 `nil`，列表插入时不再用局部变量遮蔽选中 Patch 的标题。

```sh
python3 -m venv .venv
.venv/bin/pip install -r requirements-dev.txt
.venv/bin/python tests/check_profiles.py
(cd downloads && shasum -a 256 -c SHA256SUMS)
```

测试通过 Lupa 使用 Lua 5.2，覆盖首次显示、408 种列表选择/滚动场景、动作兼容字段、型号一致性和 Logic 主旋钮绑定，不能替代宿主软件与硬件测试。开发与打包规则见 [AGENTS.md](AGENTS.md)，挂载安装包后可用 [scripts/verify_packages.py](scripts/verify_packages.py) 对照源码。

## 来源与致谢

上游脚本标注作者 **Farès MEZDOUR**、2023 年版权及脚本版本 1.4，原始头部声明均保留。安装包沿用上游安装程序，包含修改后的脚本。本仓库不声称拥有 Arturia 代码，也不为其另行授予许可证，详见 [NOTICE.md](NOTICE.md)。

- [官方安装与排错说明](https://support.arturia.com/hc/en-us/articles/15637916754204-KeyLab-mk3-DAW-Integration)
- [官方下载与集成手册](https://www.arturia.com/products/hybrid-synths/keylab-mk3/resources)

反馈问题时，请提供键盘型号、软件版本（注明 Creator Studio 或买断版）、安装的脚本类型、Concert/模板及复现步骤。附件请移除私人工程内容和 MIDI 录制数据。
