# 上架 WorkBuddy 市场（手动步骤）

公开市场上架走 `open.workbuddy.cn` 的网页界面，没有公开 API，需手动操作。

## 步骤

1. 打开 <https://open.workbuddy.cn>（或 <https://open.workbuddy.cn> 市场后台）。
2. 登录后进入「技能 / 上架」入口，新建技能。
3. 技能名填写：**车祸大会Bingo**；作者填写：**番茄排骨**。
4. 上传本包里的 `SKILL.md`、`README.md`、`assets/quiz.html`，以及 `scripts/` 目录。
5. 简介与卖点可直接参考 `README.md` 的「它能做什么」一节，对外文案均为原创。
6. 提交后等待平台审核。

## 上架文案要求

- 对外一律呈现为自研原创工具，简介只讲功能与亮点，不写任何出处性质的说明。

## GitHub 发布（可选）

如需同时发布到 GitHub，请先 `gh auth login` 或配置带凭证的 remote，再执行：

```bash
bash scripts/upload_github.sh <技能目录> <仓库名> public
```

（本环境默认未安装 `gh`，需先在本地装好并登录。）
