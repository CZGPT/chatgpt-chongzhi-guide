# GPT-6.2 Astra 实测：3D 和代码能力领先、但写作和沟通被吐槽，成本仅 Fable 5.2 的 5%，GPT-6.2 到底值不值得用？

> 本文是博客原文的摘要，便于在仓库里快速查阅。完整论述、配图和示例请以原文为准。
>
> **博客原文：** [GPT-6.2 Astra 实测：3D 和代码能力领先、但写作和沟通被吐槽，成本仅 Fable 5.2 的 5%，GPT-6.2 到底值不值得用？](https://www.czgptai.com/blog/gpt-6-2-astra-shice-chatgpt-chongzhi-2026)
>
> **数字与出处：** 下文能力描述、官方成本和争议均转述自上述原文及其标明的来源（OpenAI 官方成绩与文档、原文中的评测者示例、开发者 Theo、创业者 Matt Shumer，以及原文提到的其他开发者反馈）。不是本仓库另行测试的结果。OpenAI 所说「约 5% 成本」针对的是专业 / 同等 Agent 任务，不能理解成所有任务的成本都是 Fable 5.2 的 5%。文中关于「为什么难用」的原因是评测作者推测，官方未说明。

## English overview

GPT-6.2 comes in two variants, according to the original CZGPT article: flagship GPT-6.2 Astra and value-oriented GPT-6.2 Sol. OpenAI’s published results, as cited there, say Astra beats Claude Fable 5.2 on professional agent tasks at about 5% of the latter’s cost; that official cost claim should not be generalized to every kind of task. The same article reports that evaluators found Astra strong at 3D, games, aesthetics, and code review—for example, a small FPS level delivered in 17 minutes from a single prompt at Ultra reasoning—while also documenting complaints about overly terse answers, weaker writing, early stops on long jobs, and failures to warn users when something goes wrong. Developer Theo and founder Matt Shumer are cited among the critics. The article’s suggested split is: use Astra with high reasoning for code and 3D; keep Claude or Gemini for writing; Sol can be enough for everyday Q&A.

## 发布了什么

OpenAI 同时推出两款模型：旗舰版 GPT-6.2 Astra，以及主打性价比的 GPT-6.2 Sol。按原文转述的官方成绩：Astra 在专业 Agent 任务上超过了 Claude Fable 5.2，综合成本只有后者的约 5%。这是官方就专业 / 同等 Agent 任务公布的对比，不是「所有任务成本都是 5%」。官方说明见原文所链的 [OpenAI 最新模型文档](https://developers.openai.com/api/docs/guides/latest-model)。

原文配图对二者的整理如下：

| 对比项 | GPT-6.2 Astra | GPT-6.2 Sol |
|---|---|---|
| 定位 | 旗舰，复杂推理与 Agent | 性价比，日常轻量任务 |
| 强项 | 3D、空间推理、代码、审阅 | 速度快、额度省 |
| 推荐人群 | 开发者、设计、重度用户 | 日常问答、轻度使用 |
| 开通方式 | ChatGPT Plus / Pro | ChatGPT Plus / Pro |

## 原文中的能力示例（评测者 / 原文转述，非本仓库亲测）

1. **3D 和游戏。** 原文写：评测者只用一句提示词，让 Astra 做一个画面接近 AAA 大作的小关卡 FPS 游戏；在 Ultra 推理强度下，它 17 分钟就交付了完整项目。其他测试还包括：超写实的「鹈鹕骑自行车」3D 动画；可以走进去的 3D 立体书（纸片旅人沿溪流散步，前方景物从书页上立起，走远后折平）；1980 年代迈阿密风格的开放世界游戏，附带完整的测试报告；可拖动视角、手动控制开屏过程的 3D 孔雀。

2. **审美。** 原文写：让它做「最惊艳的单个 HTML 文件」，它给出了一本带放大镜和水下声景的深海图谱；网页报告和 PPT 也不再是千篇一律的模板风；7 分钟能根据一句话生成一张像素风日式奇幻城市 GIF。

3. **代码和审阅。** 原文写：社交媒体上批评最激烈的长文也承认，Astra 是出色的代码审阅者，能发现其他模型漏掉的问题，偶尔能提出真正新颖的方案；有开发者称它帮自己做了一个每月节省 2.5 万美元的反向代理（这是该开发者的说法，原文未提供可核对的账目）；写给子 Agent 的提示词质量也不错。

## 争议：难用在哪里

原文写：模型上线不到 12 小时，X 上就出现了大量差评。知名开发者 Theo 称它是 OpenAI 史上最糟糕的模型，创业者 Matt Shumer 认为它基本无法使用。集中的问题有四个：

1. 回答过度简洁，交付说明里堆满 SwiftShader、glTF、DNS 等术语，新手看不懂。
2. 写作水平倒退，评测中的议论文和高考作文都偏离题意、短句割裂，同题对比下 Gemini Hydrogen 的文章更通顺。
3. 长程 Agent 任务容易提前停止。
4. 遇到问题不主动告诉用户。

关于原因，原文写明：评测作者的推测是，为了把推理成本压到 Fable 5.2 的 5%，训练时压缩了输出 Token，所以它「不说人话」；长任务卡住则与安全护栏收紧有关。**这两点是评测作者推测，官方未说明。**

原文 FAQ 还提到：将推理强度调高、在提示词里要求详细解释，可以缓解一部分问题。评论区有用户表示 Sol 明显不如 Astra，把推理强度拉满后 Astra 表现会正常很多。

## 该选哪一款

原文的选择表：

| 你的主要用途 | 建议 |
|---|---|
| 写代码、Code Review、Codex | Astra，推理强度开高 |
| 3D、游戏、网页、可视化 | Astra |
| 写文章、写方案、写文案 | 不建议首选 GPT-6.2，可搭配其他模型 |
| 日常问答、翻译 | Sol 足够 |

补充两点，均来自原文：

- 按 OpenAI 官方成绩，Astra 在专业 Agent 任务上超过 Claude Fable 5.2，成本约为后者的 5%；但在沟通、写作和自主交付上，多数评测认为 Fable 5.2 体验更好。
- 写作类任务可以同时备一个 Claude 或 Gemini。日常使用和轻度写代码，原文建议选 ChatGPT Plus；需要长时间跑 GPT-6.2 Astra 高推理强度、大量使用 Codex 的重度用户，建议选 ChatGPT Pro。

GPT-6.2 需要 ChatGPT Plus 或 Pro 会员。国内用户如需开通，原文写的是可用支付宝、微信或 USDT 购买卡密，约 2 分钟开通，享 30 天质保。开通入口见 [ChatGPT充值](https://www.czgptai.com/gptget)。

## 相关链接

- 博客原文：https://www.czgptai.com/blog/gpt-6-2-astra-shice-chatgpt-chongzhi-2026
- OpenAI 最新模型文档（原文所链）：https://developers.openai.com/api/docs/guides/latest-model
- 站点：https://www.czgptai.com
