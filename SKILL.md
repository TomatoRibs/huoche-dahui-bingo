---
name: 车祸大会Bingo
display_name: 车祸大会Bingo
display_name_en: Crash Convention Bingo
description: 生成可离线打开的「车祸大会Bingo」单文件网页——会中勾职场奇葩事、连成线即翻车，散会生成横排一屏的毒舌事故报告，可一键保存 PNG 转发。当用户说要做会议宾果 / 翻车 / 职场摸鱼工具时触发。
description_zh: 生成可离线打开的「车祸大会Bingo」单文件网页——会中勾职场奇葩事、连成线即翻车，散会生成横排一屏的毒舌事故报告，可一键保存 PNG 转发。
description_en: Generate an offline single-file "Crash Convention Bingo" webpage. Tick workplace clichés during a meeting, a completed line means the meeting crashes, and a landscape one-screen savage report is generated afterward, exportable as a PNG.
category: productivity
version: 1.1.0
author: 番茄排骨
license: MIT
allowed-tools:
  - Read
  - Write
  - Edit
  - Bash
  - Glob
  - Grep
  - present_files
---

# 车祸大会Bingo

（一句话：这是一个离线单文件网页，把「开会时的荒唐事」做成宾果游戏，连成线就判定这场会翻车，散会后再生成一份毒舌事故报告。用户说「做个会议宾果 / 翻车工具 / 摸鱼自评」时，把 `assets/quiz.html` 交给他们即可。）

## 这个 Skill 做什么

- **核心产物**：一份单文件 HTML（`assets/quiz.html`），离线双击即可使用，零外部依赖、不联网、不上传。
- **结构要点**：开场选会议长度与模式 → 会中勾格（连成一线当场弹出翻车横幅 + 音效 + 高亮，右栏四轴实时计数与命中进度条）→ 散会多选现场状况并留吐槽 → 生成横排一屏的事故报告（主因 / 元凶 / 翻车指数 / 四等评级 / 毒舌评语），可一键保存 2480×1520 PNG 转发，也可复制 URL hash 分享链接。
- **数据边界**：全部计算在浏览器端完成，仅存 localStorage，封存后即清除；分享链接只带勾选结果与吐槽文本。
- **无障碍**：盘面格子与全部选项为原生 button（aria-pressed），键盘可玩，尊重系统减弱动效。

## 何时使用

- 用户说「想做个会议宾果」「生成翻车网页」「我要这个摸鱼 / 职场自评工具」。
- 用户想把这份网页发给同事、嵌进文章或自己的产品。

## 如何使用（给智能体的工作流）

1. 把 `assets/quiz.html` 复制到用户当前工作区（默认文件名 `quiz.html`）。
2. 用 `present_files` 打开预览，让用户直接使用。
3. 若用户要改题 / 改色 / 改四轴命名 / 导出 PDF，在本文件同目录的代码基础上调整。

## 说明与免责

- 这是按「会议行为观察」思路自制的**娱乐自评工具**，不是标准化量表，未做信效度检验，不做任何临床诊断。
- 全部计算在本地浏览器完成，不联网、不上传。
