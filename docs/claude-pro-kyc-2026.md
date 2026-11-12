---
layout: default
title: Claude Pro 开始要求 KYC？2026 年 11 月 Anthropic 风控新政全解读
description: 2026 年 11 月起，大量 Claude Pro 用户在开通或续费时被要求 KYC 身份验证（证件 + 自拍）。本文梳理 Anthropic 官方身份验证政策、11 月 12 日生效的新版使用政策和地区限制。
---

# Claude Pro 开始要求 KYC？2026 年 11 月 Anthropic 风控新政全解读

> 更新时间：2026-11-05 · 原文：[czgptai.com 博客](https://www.czgptai.com/blog/claude-pro-kyc-shenfen-yanzheng-fengkong-2026)

## 一句话结论

2026 年 11 月初，Claude Pro 开通和续费环节触发 KYC 身份验证的情况明显增多，需要上传本人实体证件并现场自拍。这是 Anthropic 自 2026 年 4 月起逐步扩大的官方政策，不是个别账号故障。

与此同时，Anthropic 新版使用政策将于 2026 年 11 月 12 日生效，明确禁止通过未经授权的方式转售或代理 Claude。综合来看，短期内 Claude 的风控只会更严，不会放松。

## czgptai.com 公告：Claude Pro 充值渠道暂停

从 11 月 5 日起，Claude 的风控策略明显加强，Claude Pro 也开始要求 KYC 验证。为避免给大家造成更多损失，[czgptai.com](https://www.czgptai.com/) 已暂时关闭 Claude Pro 的充值渠道。

- 渠道恢复后，会第一时间在站内和群内通知。
- 已有订单遇到问题的，请带上订单号联系客服，会逐单核实处理。
- 暂停期间，请不要在其他渠道反复尝试开通，频繁失败的支付和验证记录本身也可能增加账号风险。

同期社区也有大量反馈：LINUX DO 等论坛 11 月 5 日的讨论中，有用户称注册阶段就弹出 KYC，也有用户称开发者平台账号已被要求验证（[来源](https://linux.do/t/topic/3126895)）。

## 官方政策时间线

Claude 的身份验证不是突然出现的，而是 2026 年 4 月起一步步收紧的结果。

| 时间 | 事件 | 对用户的影响 |
| --- | --- | --- |
| 2026-11-12（即将生效） | 新版使用政策生效，禁止通过未经授权方式转售、代理 Claude（[来源](https://dev.classmethod.jp/en/articles/anthropic-usage-policy-update-bedrock-health/)） | 代充、共享账号等模式的合规风险上升 |
| 2026-11 初 | 社区集中反馈 Pro 开通、新号注册时弹出 KYC（[来源](https://explainx.ai/blog/anthropic-claude-id-verification-persona-fable-5-2026)） | 触发面从“可疑账号”扩大到付费和注册环节 |
| 2026-10-08 | Anthropic 公布 2026 版使用政策（[来源](https://penchan.co/zh-cn/ai/claude/anthropic-usage-policy-2026/)） | 给出约一个月过渡期 |
| 2026-07-08 | 新版隐私政策生效，Free / Pro / Max 用户均可能被要求验证年龄或身份（[来源](https://cybernews.com/ai-news/anthropic-privacy-policy-id-verification/)） | KYC 正式写入个人版条款 |
| 2026-07 初 | 用户反馈升级 Pro / Max 结账前出现“Quick identity check”弹窗（[来源](https://explainx.ai/blog/anthropic-claude-id-verification-persona-fable-5-2026)） | 验证开始与付费流程挂钩 |
| 2026-04-15 | 帮助中心上线《Identity verification on Claude》，部分功能开始要求验证（[来源](https://didit.me/blog/anthropic-claude-kyc-identity-verification/)） | 首次引入证件 + 自拍验证 |

## Claude KYC 验证需要什么

Claude 的身份验证由第三方服务商 Persona 执行，要求本人实体证件加现场自拍，几分钟即可完成。

| 项目 | 官方要求 |
| --- | --- |
| 证件类型 | 护照、驾照、身份证或州/省级身份证件，须为政府签发的实体原件 |
| 不接受 | 复印件、手机电子证件、临时纸质证件；学生证、工牌等也不行 |
| 人脸环节 | 摄像头现场自拍，可能生成面部几何模板（部分地区视为生物识别数据） |
| 数据保管 | 证件图片和自拍由 Persona 保存，Anthropic 只保留验证结果 |
| 数据用途 | 仅用于身份确认、防欺诈和合规，不用于训练模型 |
| 适用范围 | Free、Pro、Max 个人版；Team、Enterprise 和 API 商业条款不在此次隐私政策范围内 |

资料来源：[Didit](https://didit.me/blog/anthropic-claude-kyc-identity-verification/)、[Cybernews](https://cybernews.com/ai-news/anthropic-privacy-policy-id-verification/)、[QWE 实测指南](https://www.qwe.edu.pl/tutorial/identity-verification-on-claude/)、[Techzine](https://www.techzine.eu/news/applications/142185/anthropic-may-require-identity-verification-for-claude-use/)。

官方没有公布具体触发条件。Anthropic 发言人曾表示，验证主要针对显示出潜在欺诈或滥用迹象的少数情况；社区观察到的常见触发点包括新注册账号、异常登录地区和高频自动化调用，但均未获官方确认。

## 为什么这次风控收得这么紧

核心原因有三条：地区政策、转售禁令和更强模型带来的合规压力。

1. **地区政策没有变，只是执行更严。** 根据 Anthropic 的[支持地区政策](https://www.anthropic.com/supported-countries)，未列入名单的地区一律不支持；中国大陆、香港和澳门均不在名单内（[来源](https://aiidelist.com/blog/claude-account-bans-2026-anthropic-regional-policy)）。政策还明确，人在不支持地区时使用 Claude 即属违规，与账号注册在哪里无关。
2. **11 月 12 日起明确禁止未经授权的转售和代理。** 新版使用政策把“通过未经授权的方式转售或代理 Claude”写进了禁止条款（[来源](https://dev.classmethod.jp/en/articles/anthropic-usage-policy-update-bedrock-health/)）。代充、拼车、共享账号这类模式，在官方条款层面已经没有灰色空间。
3. **更强的模型需要更强的身份管控。** 2026 年 6 月，Fable 5 和 Mythos 5 曾因美国出口管制被临时下架，7 月才恢复；业内普遍认为身份验证是 Anthropic 恢复和开放高能力模型的前提之一（[来源](https://www.techzine.eu/news/applications/142185/anthropic-may-require-identity-verification-for-claude-use/)）。

执法力度也在上升：有报道整理 Anthropic 披露数据称，2026 年上半年共封禁约 1140 万个账号，申诉成功约 4.2 万个（[来源](https://aiidelist.com/blog/claude-account-bans-2026-anthropic-regional-policy)）。该报道还提到，疑似未经授权转售、不支持地区使用等行为都可能触发身份验证，验证不通过的账号可能被封禁。

## 对用户的影响和建议

最重要的一条：不要用借来的、购买的或伪造的证件去过 KYC，这既违反条款，也会让账号和个人信息同时暴露在风险中。

- **已开通 Pro 的用户：** 正常使用即可，但要清楚账号随时可能被要求验证。重要的对话、项目文件和代码请定期导出备份。
- **被弹出 KYC 的用户：** 如果你本人身在支持地区并持有合规证件，可以按官方流程验证；如果不满足条件，强行提交只会换来封号。
- **在 czgptai.com 下过 Claude 订单的用户：** 带订单号联系客服，会逐单核实处理。
- **警惕“包过 KYC”的服务：** 任何代过人脸、代提供证件的渠道，本质上都是冒用他人身份，账号随时会被追溯封禁。
- **需要替代方案的用户：** Claude 暂停期间，ChatGPT Plus、Gemini 等订阅充值仍正常开放，可在 [czgptai.com](https://www.czgptai.com/) 选购。

## 常见问题

**Claude Pro 现在一定要 KYC 吗？**
不是所有账号都会被要求，但 2026 年 11 月起触发明显增多，开通、续费和新号注册环节都有用户反馈弹出验证。Anthropic 官方没有公布具体触发条件。

**Claude KYC 需要哪些材料？**
需要本人政府签发的实体证件原件（护照、驾照或身份证），加上摄像头现场自拍。复印件、电子证件和截图都不被接受。

**不通过 KYC 会怎样？**
官方没有逐条说明后果，但根据公开报道，未通过要求验证的账号可能被暂停或封禁，部分功能也会无法使用。

**Claude 会用我的证件照训练模型吗？**
Anthropic 表示不会。证件和自拍由第三方 Persona 保管，仅用于身份确认、防欺诈和合规。

**中国大陆可以使用 Claude 吗？**
根据 Anthropic 支持地区政策，中国大陆、香港和澳门都不在支持名单内，人在不支持地区使用 Claude 属于违反条款。

**11 月 12 日的新政策有什么变化？**
Anthropic 新版使用政策于 2026 年 11 月 12 日生效，新增内容包括禁止通过未经授权的方式转售或代理 Claude，以及禁止长期、无目的地辱骂模型等。

---

更多 AI 订阅充值教程与最新动态：[czgptai.com](https://www.czgptai.com/)
