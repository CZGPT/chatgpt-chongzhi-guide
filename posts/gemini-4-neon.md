# Gemini 4 Neon 发布：智商 61 分反超 Opus 5.5，成本砍半，Gemini 4 家族到底怎么选？

> 本文是博客原文的摘要，便于在仓库里快速查阅。完整论述、配图和表格请以原文为准。
>
> **博客原文：** [Gemini 4 Neon 发布：智商 61 分反超 Opus 5.5，成本砍半，Gemini 4 家族到底怎么选？](https://www.czgptai.com/blog/gemini-4-neon-fabu-gemini-chongzhi-2026)
>
> **数字与出处：** 下文跑分、API 定价和“实测”均转述自上述原文及其标明的来源（Artificial Analysis、谷歌官方 Demo、博主 Chubby、博主 JAZII、企业客户 Glean、谷歌安全报告），不是本仓库另行测试的结果。API 价格不等于订阅价格。

## English overview

Gemini 4 Neon is Google’s new workhorse model, released about three weeks after Gemini 4 Carbon. According to the original CZGPT article, it landed the same day on Google AI Studio, the Gemini app, the API, and Google Antigravity, with no waitlist. Artificial Analysis’s Intelligence Index scores Neon at 61, above Claude Opus 5.5 (59) and GPT-6.2 Sol (57). The article lists API pricing at $3 per million input tokens and $15 per million output tokens ($0.15 for cached input), with a 1 million token context window; those figures are API rates, not Google AI Pro or Ultra subscription prices. The same article’s comparison table places Hydrogen at 54 (everyday coding; available to everyone), Neon at 61 (software engineering and scientific reasoning; Pro and Ultra), and Carbon at 60 (very long-horizon projects; mainly Ultra). For most readers, the article recommends Google AI Pro with Neon; choose Ultra if you need Carbon or Genie 4.

## 发布了什么

Gemini 4 Neon 是谷歌在 Gemini 4 Carbon 之后三周推出的主力模型。原文写明：发布当天即全量上线，不需要排队申请，覆盖 Google AI Studio、Gemini App、企业端 API，以及谷歌自家的编程环境 Google Antigravity。它的定位是对标 Claude Opus 5.5 和 GPT-6.2 Sol 的高性价比主力。

Gemini 4 一代改用化学元素命名：1 号氢 Hydrogen、18 号氩 Argon、6 号碳 Carbon，以及这次的 10 号氖 Neon。原文提醒：名字本身看不出档位高低，需要按官方定位来选。

Artificial Analysis 智商指数：Neon 61 分，高于 Claude Opus 5.5（59）和 GPT-6.2 Sol（57）。标配 100 万上下文。Google AI Pro 和 Ultra 订阅用户都能直接使用 Neon。

## Gemini 4 家族怎么分

原文配图按官方定位整理如下（API 定价是「每百万 Token，输入 / 输出」，不要把它理解成 Pro / Ultra 的订阅价）：

| 模型 | 定位 | AA 智商指数 | API 定价（每百万 Token，输入 / 输出） | 可用人群 |
|---|---|---|---|---|
| Gemini 4 Hydrogen | 日常高频编程、轻量 Agent | 54 | 1.5 / 7.5 美元 | 所有人 |
| Gemini 4 Neon | 软件工程、知识工作、科学推理 | 61 | 3 / 15 美元（缓存输入 0.15 美元） | Pro、Ultra |
| Gemini 4 Carbon | 超长程大项目、深度研究 | 60 | 4 / 20 美元（11 月 30 日前促销 2 / 10） | 主要面向 Ultra |

原文还说明：Neon 比 Carbon 多开放了一档 xhigh 极限思考级别，所以智商指数反而高出 Carbon 1 分，标准价却便宜四分之一。Ultra 用户这次还能体验 Project Genie 和世界模型 Genie 4，在浏览器里生成并进入可交互的 3D 世界。文中提到了 Argon 这一命名，但原文家族对照表没有给出 Argon 的定位或定价，这里不做补充。

## 跑分：对比 Claude Opus 5.5 和 GPT-6.2 Sol

原文强调三家互有胜负，并且没有给出 Terminal-bench、FrontierCode、Chartography 的具体分数，只作相对描述：

- Claude Opus 5.5 在命令行和前沿代码（Terminal-bench 4.1、FrontierCode 2.0）上小幅领先。
- GPT-6.2 Sol 在密集图表阅读（Chartography）上小胜。
- Neon 的优势集中在原文配图列出的项目，其中可逐条核对的数字如下。

原文跑分配图（GraphWalks 标注为 256K–1M 长上下文检索）：

| 测试 | Gemini 4 Neon | Claude Opus 5.5 | GPT-6.2 Sol |
|---|---|---|---|
| AA 智商指数 | 61 | 59 | 57 |
| GraphWalks（256K–1M 长上下文检索） | 95.2% | 66.8% | 80.1% |

原文另外写到：Neon 在 CursorBench 上拿到 65.4%，在数学科学推理和网络安全漏洞挖掘上也有明显优势（原文未给出这两项的具体分数）。谷歌的安全报告显示，Neon 在 Terminal-Bench 4.0 中的作弊率为 0%，内部防偷懒测试的走捷径比例降到 2.45%，是历史最低。

## 原文引用的 Demo 与实测（均非本仓库亲测）

**谷歌官方 Demo（原文转述）：** 谷歌在 Antigravity 里让 Neon 做了用 Blender 建模的 3D 化学实验室、照档案还原的图灵 1936 年剑桥书房，还从零写了 10200 行 Shader，做出一款带雪崩和空间音频的 WebGL2 滑雪游戏。一组 Neon 智能体不插图、不写脚本，只靠 50 多万条表格公式，就在 10 万单元格的 Google 表格里实现了边缘检测、深度映射和六种打光模式。

**博主 Chubby（原文转述）：** AI 博主 Chubby 用 Neon 一天生成了 17 个交互 Demo。他只要求做破坏和重置功能，Neon 却主动补上了三种建筑和三种破坏工具，浏览器里稳定 60 帧；另一个飞行游戏里还自己加了自动驾驶演示模式。

**博主 JAZII 同题对决（原文转述）：** 博主 JAZII 让两者都开最高推理档做同一个任务：

| 模型 | 用时 | 费用 |
|---|---|---|
| Gemini 4 Neon | 20 分钟 | 3.5 美元 |
| Claude Opus 5.5 | 18 分钟 | 7.2 美元 |

原文结论是：Opus 5.5 的上限仍略高一筹，但 Neon 的成本不到一半。这是该博主这一次同题任务的费用对比，不是所有任务、也不是订阅费用的对比。

**企业客户 Glean（原文转述）：** Neon 交付同等质量的速度是 Carbon 的 3 倍、成本是 60%，单任务开销比顶尖竞品低 50%–80%。

## 该选哪一款

原文的选择表：

| 你的需求 | 建议 |
|---|---|
| 日常问答、轻度写代码 | Hydrogen，免费即可用 |
| 软件开发、长文档分析、数学科研 | Neon，开 Google AI Pro 就够 |
| 超长程项目、深度研究、想玩 Genie 4 | Carbon，需要 Ultra |

原文建议：大多数人开 Google AI Pro 用 Neon，性价比最高。需要 Gemini 4 Carbon 做超长程项目，或想体验 Project Genie 和 Genie 4 世界模型，再选 Ultra。

Neon 需要 Google AI Pro 或 Ultra 订阅。国内用户如果没有海外信用卡，原文的开通步骤是：打开 CZGPT 充值页，选择 Pro 或 Ultra，用支付宝、微信或 USDT 付款，按页面教程激活；原文写的是约 2 分钟开通，享 30 天质保，可开购买收据。开通入口见 [Gemini充值](https://www.czgptai.com/gptget)。

## 相关链接

- 博客原文：https://www.czgptai.com/blog/gemini-4-neon-fabu-gemini-chongzhi-2026
- 站点：https://www.czgptai.com
