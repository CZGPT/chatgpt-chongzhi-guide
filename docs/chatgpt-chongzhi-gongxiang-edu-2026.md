---
layout: default
title: chatgpt 充值前必看：12 月起 Plus / Pro 将与 Codex 共用额度（2026）
description: OpenAI 官方确认从 2026 年 12 月起，Plus、Pro、Business 的用量将在 ChatGPT 与 Codex 之间共享。本文对照官方帮助中心说明额度怎么算、Instant chat 是否计入，以及国内用户做 chatgpt 充值前该怎么选套餐。
---

# chatgpt 充值前必看：12 月起 Plus / Pro 将与 Codex 共用额度

**先说结论：** 根据 [OpenAI 帮助中心《Understanding ChatGPT and Codex usage limits》](https://help.openai.com/en/articles/20001625-understanding-chatgpt-and-codex-usage-limits)，**从 2026 年 12 月起**，Plus、Pro、Business 套餐的用量额度会在 ChatGPT 与 Codex 之间共享，按 token 计量；更强的模型和更复杂的任务会吃掉更多额度。**Instant chat（即时对话）不计入这笔共享用量。** 你在 Settings → Usage 里能看到合并后的剩余用量和重置时间。额度用完后，可以等重置、升级套餐，或购买 credits 继续用支持的功能。若你正打算升级付费套餐，选 Plus 还是 Pro，要比以前更认真地算一下：日常聊天够不够、Codex / Work 会不会把额度“抢”走。

## 一、官方说了什么（可核实要点）

以下内容直接来自 OpenAI 帮助中心，核对日期为 2026 年 11 月 6 日：

| 要点 | 官方表述（意译） | 来源 |
|---|---|---|
| 生效时间 | Starting in December（从 12 月起） | [usage limits 帮助文](https://help.openai.com/en/articles/20001625-understanding-chatgpt-and-codex-usage-limits) |
| 覆盖套餐 | Plus、Pro、Business | 同上 |
| 计量单位 | token（模型处理与生成的信息单位） | 同上 |
| Instant chat | **不**从该用量池扣除 | 同上 |
| 查看方式 | Settings → Usage（剩余用量与重置时间） | 同上 |
| 用完之后 | 等重置、升级套餐，或买 credits | 同上 |
| 官方预期 | 多数用户不必比现在更频繁地等重置 | 同上 |

补充说明（同一主题相关官方文）：

1. [Using Codex with your ChatGPT plan](https://help.openai.com/en/articles/11369540-using-codex-with-your-chatgpt-plan) 写明：Codex 已包含在各档 ChatGPT 计划里（含 Free、Go）；接近上限时可在 Settings / 用量面板查看，CLI 里也可输入 `/status`。
2. [Managing usage with GPT-6 Astra in Work and Codex](https://help.openai.com/en/articles/20001516-managing-usage-with-gpt-6-astra-in-work-and-codex) 说明：Work 与 Codex 共用套餐内额度；Plus / 部分 Business 可能同时有约五小时窗口与每周窗口；Pro 100 / 200 / 500 在 Work 与 Codex 上**目前没有**五小时窗口限制，但仍有套餐内总用量。
3. 桌面端侧，OpenAI 正在向部分用户合并 Chat 与 Work 标签（Codex 仍保持独立入口）。媒体报道见 [TechCrunch（2026-11-02）](https://techcrunch.com/2026/11/02/openai-is-finally-merging-chatgpts-chat-and-work-tabs/)，具体以你账号收到的官方邮件 / 产品界面为准。

**没有在官方文里写死的数字，本文一律不编造。** 例如「合并后具体有多少 token」「你个人会不会更常撞上限」，OpenAI 尚未给出统一公开数字，只能以 Settings → Usage 为准。

## 二、这对选套餐与付款升级意味着什么

很多人搜 **chatgpt 充值**、**gpt 充值**、**chatgpt plus 购买**，核心问题其实是：我要不要付钱、付哪一档、付了会不会马上不够用。

12 月规则变化后，可以这样理解：

1. **只偶尔聊天、几乎不用 Codex / Work**  
   Instant chat 不进共享池，日常问答影响相对小。多数人继续选 Plus 即可。
2. **聊天 + 轻度 Codex（改几段代码、偶发长任务）**  
   仍可从 Plus 起步；但要养成看 Settings → Usage 的习惯，避免高峰期把额度全砸在一次长 Codex 任务上。
3. **Codex / Work 是主力（长会话、多工具、复杂推理）**  
   更该认真考虑 Pro。根据 [About ChatGPT Pro tiers](https://help.openai.com/en/articles/9793128-about-chatgpt-pro-tiers)，Pro 分三档月费：**Pro 100 = $100**、**Pro 200 = $200**、**Pro 500 = $500**；Pro 100 / Pro 500 的 Work 与 Codex 额度已提高，Pro 200 也按更新后的额度执行。**Ultrafast 仅 Pro 500**，在 Pro 100 / 200 上买积分也解锁不了。

价格对照（官方）：

| 套餐 | 月费（美元） | 来源 |
|---|---|---|
| Plus | $20 | [What is ChatGPT Plus?](https://help.openai.com/en/articles/6950777-what-is-chatgpt-plus) |
| Pro 100 | $100 | [About ChatGPT Pro tiers](https://help.openai.com/en/articles/9793128-about-chatgpt-pro-tiers) |
| Pro 200 | $200 | 同上 |
| Pro 500 | $500（含 Ultrafast） | 同上 |

Plus 与 Pro 目前都是**按月计费**，官方说明里写明不支持年付、也不能一次预付多个月（见 Plus / Pro 帮助文）。

## 三、chatgpt 充值怎么做更稳妥（自助、给自己的账号）

国内用户官网绑卡常遇到拒付（`Your credit card was declined` 等），所以会搜 chatgpt 充值。这里只讲**给自己账号升级**的路径，不涉及转让或共享账号——OpenAI 在 Pro 说明里写明：**共享账号凭据、转售访问权限都是禁止的**，违规可能被限制使用。

以 [CZGPT 官网](https://www.czgptai.com/) 的自助卡密为例，流程一般是：

1. **确认账号**：用自己的邮箱登录 [chatgpt.com](https://chatgpt.com)，还没有账号可先看 [ChatGPT 注册指南（Hugging Face）](https://huggingface.co/spaces/czgptai/chatgpt-zhuce)。
2. **对照官方定价页选档**：打开 [chatgpt.com/pricing](https://chatgpt.com/pricing/)，结合上文「会不会重度用 Codex」做决定。
3. **支付宝 / 微信购买对应卡密**：在 [czgptai.com](https://www.czgptai.com/) 付款后拿到卡密。
4. **自助兑换**：按页面提示在自己的账号上完成兑换，**不要把密码交给任何人**。
5. **核对生效**：Settings → My Plan 看套餐名称与续费日期；用量方面可提前熟悉 Settings → Usage，方便 12 月后查看合并额度。

更细的图文步骤见 [ChatGPT 充值教程 Space](https://huggingface.co/spaces/czgptai/chatgpt-chongzhi)。

### 充值前检查清单

| 检查项 | 原因 |
|---|---|
| 登录的是要升级的主账号 | 官方排障说明里，「扣了款仍显示 Free」常见原因是登错账号 |
| 没有在 App Store / Google Play 重复订阅同一权益 | 避免多渠道重复扣款 |
| 已对照官方当前价格 | 以 chatgpt.com/pricing 与帮助中心为准 |
| 不交出密码、不买「现成已登录号」 | 符合条款，也保护聊天记录 |

## 四、12 月前可以做的三件小事

1. **打开 Settings → Usage 看一眼当前结构**  
   熟悉界面后，12 月合并显示时不会懵。
2. **把「重推理 / 长 Codex」和「随口问一句」分开**  
   Instant chat 不进共享池；能短问短答的，不必每次都上最重模型。
3. **真要升档，先升再养习惯**  
   若你已经经常撞 Plus 上限，又同时跑 Codex，直接在付款升级时考虑 Pro 100 起步，比等到 12 月再慌更稳。

## 常见问题（FAQ）

### 1. 12 月起 chatgpt 充值买 Plus 还会不会值？
对大多数「以对话为主、偶尔用一下 Codex」的人，Plus（每月 20 美元）仍然是合理起点。共享额度主要影响「对话 + 重度 Codex / Work」叠加的人。以 [官方 usage limits 文](https://help.openai.com/en/articles/20001625-understanding-chatgpt-and-codex-usage-limits) 为准：Instant chat 不计入共享池，官方也预期多数人不必比现在更常等重置。

### 2. Instant chat 到底算不算进共享额度？
官方写明：Instant chat will not draw from your usage（即时对话不从该用量扣除）。普通随手问答与重度 agent / Codex 任务，消耗逻辑不同。

### 3. 额度用完了怎么办？
官方给出的路径是：等待重置、升级套餐，或购买 credits 继续使用符合条件的功能。可在 Settings → Usage 查看剩余量与重置时间。Support 不能随意帮你「清零」限制（见 Pro 帮助文）。

### 4. Pro 100、200、500 怎么选？和 Ultrafast 有关吗？
月费分别为 100 / 200 / 500 美元。额度与会话长度大致随档位升高；**Ultrafast 只在 Pro 500**，Pro 100 / 200 买积分也解锁不了。详见 [About ChatGPT Pro tiers](https://help.openai.com/en/articles/9793128-about-chatgpt-pro-tiers)。

### 5. gpt 充值一定要交出密码吗？
正规的自助升级应是卡密兑换到你自己的账号，不需要提供密码。任何索要密码、验证码，或推销「成品已登录账号」的服务，都应直接拒绝。

### 6. 国内为什么官网付不了款，还要另寻付款路径？
官方定价页写明可用主流信用卡；但国内发行的卡在支付环节常被拒。因此很多人改用支付宝 / 微信的自助卡密路径，在自己的账号上升级。流程说明见 [CZGPT](https://www.czgptai.com/) 与 [充值 Space](https://huggingface.co/spaces/czgptai/chatgpt-chongzhi)。

---

*本文信息核对日期：2026 年 11 月 6 日（Asia/Shanghai）。价格、生效时间与功能以 [OpenAI 帮助中心 usage limits](https://help.openai.com/en/articles/20001625-understanding-chatgpt-and-codex-usage-limits)、[Plus 说明](https://help.openai.com/en/articles/6950777-what-is-chatgpt-plus)、[Pro 套餐说明](https://help.openai.com/en/articles/9793128-about-chatgpt-pro-tiers) 以及 [chatgpt.com/pricing](https://chatgpt.com/pricing/) 为准。需要给自己的账号升级，可访问 [CZGPT 官网](https://www.czgptai.com/)。*
