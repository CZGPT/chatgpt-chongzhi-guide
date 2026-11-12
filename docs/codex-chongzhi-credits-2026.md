---
layout: default
title: "codex 充值怎么选：额度用完后买 credits、等重置还是升级套餐（2026）"
description: "Codex 额度用完了怎么办？对照 OpenAI 官方帮助中心，讲清 credits 怎么扣、12 个月有效期、自动续购、钱包余额和 credits 的区别，以及什么时候该升级 Plus / Pro。"
---

# codex 充值怎么选：额度用完后买 credits、等重置还是升级套餐（2026）

**先说结论：** codex 充值其实有两种完全不同的钱：一种是 ChatGPT 套餐本身（Plus / Pro，决定你每个周期的“包含额度”），另一种是额度用完后按量补充的 **usage credits**。官方规则是先扣套餐内额度，用完后才扣 credits；credits 自购买起 **12 个月有效**，过期作废、不能转让。偶尔超额，买一点 credits 或等重置最省钱；如果每个周期都提前用完，升级套餐通常比反复买 credits 更划算。另外要注意：**礼品卡兑换进钱包的美元余额，并不等于 credits**。

> 核对日期：2026-11-08（Asia/Shanghai）。OpenAI 帮助中心《Using Credits for Flexible Usage in ChatGPT (Personal plans)》在本文核对前约 12 小时刚更新过，下文以当天看到的版本为准；菜单与可用选项以你自己账号的页面为准。

## 一、先分清：套餐额度、credits、钱包余额

很多人搜 codex 充值，是因为 Codex 里弹出了“已达上限”的提示。这时候屏幕上可能同时出现“升级”“Add credits”“等待重置”几个选项，下面这张表先把三种“钱”分开：

| 名称 | 是什么 | 怎么获得 | 关键规则 | 官方来源 |
| --- | --- | --- | --- | --- |
| 套餐包含额度 | Plus / Pro 每个周期自带的 Codex 与 Work 用量 | 订阅 ChatGPT 套餐 | 按周期重置，优先被扣 | [Using Codex with your ChatGPT plan](https://help.openai.com/en/articles/11369540-using-codex-with-your-chatgpt-plan) |
| usage credits | 超出套餐后按量计费的补充额度 | Settings > Usage 或 Codex 应用的 Usage & Billing 里购买 | 12 个月有效；不可退（法定或特定例外除外）；不可转让 | [Credits 帮助文](https://help.openai.com/en/articles/12642688-using-credits-for-flexible-usage-in-chatgpt-personal-plans) |
| ChatGPT 钱包余额 | 以美元计的余额，可包含兑换的礼品卡金额 | 兑换礼品卡等 | 兑换礼品卡本身**不会**增加 credits；部分一次性购买 credits 的结账页可能抵扣钱包余额 | 同上 |

最容易踩的坑是第三行：官方原话的意思是“钱包余额看得到，不代表每笔 credits 购买都能用钱包付”。结账页没显示钱包抵扣，就不要默认会扣钱包。

## 二、credits 是怎么扣的

根据官方 credits 帮助文，扣费顺序和细节如下：

1. **先扣套餐内额度**，用完后才从 credits 余额扣。
2. **多个功能共用一池 credits**：Codex、ChatGPT Work、Word、Excel、PowerPoint 等支持的功能都能用同一份余额，比如在 Codex 里买的 credits，套餐额度用完后也能用在其他支持的功能上。
3. **余额可能变成负数**：任务开始时余额为正，但并发任务把余额用光，结束时可能为负；之后购买或自动续购会先补上负数部分。
4. **自动续购（automatic reload）**：可设置最低余额和目标余额，低于最低值时自动补到目标值，可设每月上限。注意开启时如果余额已低于最低值，**可能立刻扣款**。官方例子：最低 100、目标 500、当前 40，开启后会补 460 credits。
5. **auto-review 安全检查免费**：用 ChatGPT 账号登录时，Codex 的自动审查安全检查不计入套餐额度，其他 Codex 活动照常计费。

需要具体每个模型大概能跑多少条消息，可以看官方 [Codex Pricing 页](https://chatgpt.com/codex/pricing/)，那里按模型列了 Plus 的估算区间；官方也建议日常任务换成更低成本的模型，让额度撑得更久。

## 三、额度用完了：四个选项怎么选

[Using Codex with your ChatGPT plan](https://help.openai.com/en/articles/11369540-using-codex-with-your-chatgpt-plan) 写明，额度用完时当前这一轮任务通常还能跑完（受公平使用限制），之后可以在用量页或提示横幅里看到你的账号可用的选项：加 credits、使用可用的重置、升级套餐，或等待重置。

| 你的情况 | 建议 | 原因 |
| --- | --- | --- |
| 一个月只超额一两次 | 等重置，或少量买 credits | 套餐不变，按需付费 |
| 赶工期、今天必须跑完 | 买 credits，必要时开自动续购并设月上限 | 立即可用，月上限防止失控 |
| 有可用的免费重置 | 先用掉重置 | 官方 6 月 11 日的更新为符合条件的 Plus / Pro 用户加入了重置“存储”机制，存下的重置 30 天内有效 |
| 每个周期都提前用完 | 升级套餐 | 长期看比反复买 credits 稳定 |

关于升级：官方 [ChatGPT 更新日志](https://help.openai.com/en/articles/6825453-chatgpt-release-notes) 显示，2026 年 10 月 29 日起 **Pro 100 和 Pro 500 的 Work 与 Codex 额度翻倍**，Pro 200 取消了此前宣布的额度下调，低额度用户也被提到同一水平。所以重度 Codex 用户现在升级 Pro 的性价比比 10 月以前更高。各档月费见 [About ChatGPT Pro tiers](https://help.openai.com/en/articles/9793128-about-chatgpt-pro-tiers)。

还有一个时间点要记住：根据 [Understanding ChatGPT and Codex usage limits](https://help.openai.com/en/articles/20001625-understanding-chatgpt-and-codex-usage-limits)，**从 2026 年 12 月起**，Plus、Pro、Business 的 ChatGPT 与 Codex 用量会合并按 token 计量（Instant chat 不计入）。如果你现在正纠结是否充值或升级，可以先看我们之前整理的[共享额度解读](chatgpt-chongzhi-gongxiang-edu-2026.md)，再决定。

## 四、codex 充值的正确操作步骤（给自己的账号）

1. 在 ChatGPT 网页打开 **Settings > Usage**，或在 Codex 应用里打开 **Usage & Billing**，确认是哪一项额度用完、什么时候重置、当前 credits 余额是多少。用 Codex CLI 时可输入 `/status` 查看。
2. 判断是短期超额还是长期不够用，按上一节的表格选“等重置 / 买 credits / 升级”。
3. 如果要升级套餐，国内银行卡常在官网被拒付。可以在 [czgptai.com](https://www.czgptai.com/) 用支付宝或微信购买卡密，在**你自己的账号**上自助完成升级，不需要交出密码。
4. 回到 Codex，执行 `codex logout` 再用同一个账号重新登录，刷新套餐状态。
5. 如果买了 credits 但余额对不上，先登录付款时用的那个个人账号，对比同一时间段的购买记录与用量；仍然对不上，再带上购买日期和收据编号联系 OpenAI 支持。

Codex 订阅档位怎么选、订阅和 API Key 的区别，可以用我们的 [Codex 充值速查 Space](https://huggingface.co/spaces/czgptai/codex-chongzhi) 快速对照；登录时遇到手机号验证，可参考 [Codex 验证说明](https://huggingface.co/spaces/czgptai/codex-yanzheng)。

## 五、几个容易被忽略的规则

- **credits 不是 API 余额。** 官方明确这里的 credits 不是 API credits；用 API Key 调用要在 API 平台单独付费。
- **credits 不能转让或转卖。** 官方写明余额没有现金价值，不能转给他人、转售或赠送；如开放了礼物功能，只能另外购买 credit gift。所以不要相信“转余额”“共用额度”之类的说法，也不要和别人共用账号。
- **账号被盗用导致 credits 被消耗**，应立即通过官方 Unauthorized Activity 表单报告并联系支持，官方核实后可恢复损失的 credits。
- **Free / Go 用户**目前只有有限范围可以购买 credits；买了也不会改变套餐或提高包含额度。

更多充值与报错教程，见 [CZGPT 教程站](https://www.czgptai.com/)。

## FAQ

**1. codex 充值是给 Codex 单独开会员吗？**
不是。Codex 包含在 ChatGPT 各档套餐里，额度跟着 Plus / Pro 等套餐走；额度用完后的按量补充才是 usage credits。

**2. Codex 的 credits 会过期吗？**
会。官方规定 credits 自购买起 12 个月有效，到期未用完的部分作废，不会顺延。

**3. 我兑换了礼品卡，为什么 credits 还是 0？**
因为礼品卡兑换的是 ChatGPT 钱包里的美元余额，不是 credits。部分一次性购买 credits 的结账页可能抵扣钱包，但要以结账页显示为准。

**4. 开启自动续购会不会突然扣很多钱？**
可能会立刻扣一次：如果开启时余额已低于你设的最低值，系统会补到目标值。建议同时设置每月上限，它只限制自动续购，不限制一次性购买。

**5. 经常用完额度，该买 credits 还是升级 Pro？**
偶尔超额买 credits 更灵活；如果每个周期都提前用完，升级更稳妥。10 月 29 日起 Pro 100 和 Pro 500 的 Work 与 Codex 额度已经翻倍。

**6. credits 能不能分给同事或朋友用？**
不能。官方规定 credits 不可转让、转售或赠送，团队请每人用自己的账号和套餐。
