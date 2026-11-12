---
layout: default
title: "codex 代充前先分清：套餐直充还是按量额度？登录方式选错等于白充｜Plus 168 元、30 天质保"
description: "codex 代充有两种：给 ChatGPT 账号升级 Plus/Pro（用 ChatGPT 登录 Codex），或购买按 API 费率扣的按量额度（用 API Key 登录）。按 OpenAI 官方文档讲清两者区别、codex login status 自查、5 小时与每周额度怎么看，以及 CLI 0.167 登录入口变化。"
---

# codex 代充前先分清：套餐直充还是按量额度？登录方式选错等于白充｜Plus 168 元、30 天质保

**先说结论：** codex 代充其实是两种不同的东西：一种是给你自己的 ChatGPT 账号升级 Plus / Pro，Codex 要用 **Sign in with ChatGPT** 登录才能吃到套餐额度；另一种是按量计费的额度，按 API 费率扣，要用 **API Key** 登录。官方文档写得很清楚：用 API Key 登录时，Codex 按标准 API 价格计费，**不会**用 ChatGPT 套餐里的额度（[Codex Authentication](https://developers.openai.com/codex/auth)）。所以充之前先想好自己用哪种登录方式，否则就会出现“钱付了、Codex 还是提示没额度”。

> 核对日期：2026-11-12（Asia/Shanghai）。规则以 OpenAI 帮助中心与开发者文档为准，下文每条都附了来源。

## 一、为什么今天要讲这个

11 月 6 日到 11 日，Codex CLI 连发了 [0.167.0、0.167.1、0.167.2](https://github.com/openai/codex/releases) 三个版本。0.167.0 有一条和充值直接相关：API Key 和云服务商的登录选项被收进了 **“Sign in another way”（用其他方式登录）** 里，终端的会话选择器也可以在已连接的后端之间切换（[官方更新日志](https://learn.chatgpt.com/docs/changelog)）。

登录入口一变，最常见的问题就是：用 ChatGPT 账号升级了套餐，结果 CLI 里登录的还是 API Key；或者反过来，买的是按量额度，却一直用 ChatGPT 账号登录。同时，X 上也有中文用户在吐槽“5 小时额度显示 100%，跑一条就提示已达每周限额”，这其实是两个额度窗口没分清。下面一次讲明白。

## 二、两种 codex 代充对比

| 对比项 | 套餐直充（Plus / Pro） | 按量额度（API 费率） |
| --- | --- | --- |
| 充到哪里 | 你自己的 ChatGPT 账号 | 按量计费的余额 / Key |
| Codex 登录方式 | Sign in with ChatGPT（`codex login`） | API Key（`codex login --with-api-key`） |
| 怎么扣 | 先扣套餐包含额度，按周期重置 | 按 API 实际用量扣，用多少扣多少 |
| Codex Cloud（云端任务） | 支持（Plus 及以上，视推送情况） | 不支持，云端必须用 ChatGPT 登录 |
| 适合谁 | 天天写代码、要用桌面端和云端任务的人 | 写脚本、CI/CD、偶尔用、想精确控制花费的人 |
| 官方来源 | [Using Codex with your ChatGPT plan](https://help.openai.com/en/articles/11369540-using-codex-with-your-chatgpt-plan) | [Codex Authentication](https://developers.openai.com/codex/auth) |

几点补充：

1. **Codex 现在所有套餐都能用**，包括 Free 和 Go，但额度按套餐不同；Codex Cloud 只给符合条件的 Plus、Pro、Business 等，Free 和 Go 不含（同上帮助文）。
2. **API Key 登录会少一些功能。** 官方说明，依赖 ChatGPT 工作区或云服务的功能在 API Key 下会受限或不可用；官方也推荐把 API Key 用在 CI/CD 这类程序化场景。
3. **套餐额度用完后还有第三条路：** 符合条件的 Plus / Pro 用户可以不换套餐直接买 credits。credits 的扣费规则我们之前写过，见 [codex 充值怎么选](https://czgpt.github.io/chatgpt-chongzhi-guide/docs/codex-chongzhi-credits-2026.html)。

## 三、充值前后 3 条命令自查

不管买哪种，先在终端跑这几步，能避开大多数“充了没用”：

1. **`codex login status`**：看当前用的是哪种登录方式。官方文档写明这条命令会显示活动的认证方式。显示 API Key，但你买的是套餐，就要换成 ChatGPT 登录。
2. **`codex logout` 再 `codex login`**：切换登录方式，或者升级套餐后刷新状态。只有 API Key 的话用 `printenv OPENAI_API_KEY | codex login --with-api-key`。CLI 和 IDE 插件共用同一份登录缓存，一边退出，另一边也要重新登录。
3. **在会话里输入 `/status`**：帮助中心建议，接近或达到额度上限时，在 CLI 会话里用 `/status`，或去 Settings 的用量页，看清是**哪一项**额度用完了、什么时候重置。

**关于“5 小时 100%、每周 6%”：** Codex 套餐额度有 5 小时和每周两个窗口（官方在讲“重置”时写明，一次完整重置会同时刷新这两个窗口）。5 小时窗口满着，不代表本周还有余量；每周额度用完就会停，只能等重置、用已有的重置次数、买 credits 或升级。另外，**OpenAI 客服不能帮你重置额度**，帮助中心明确写了这一点，别花钱找人“重置”。

## 四、按用途选：3 种人 3 个答案

- **每天写代码、用桌面端或云端任务**：选套餐直充，用 ChatGPT 登录。经常提前用完的，可以看看 Pro。官方[更新日志](https://help.openai.com/en/articles/6825453-chatgpt-release-notes)显示，10 月 29 日起 Pro 100 和 Pro 500 的 Work 与 Codex 额度翻倍。
- **只在脚本、CI 里调用，或者一个月只用几次**：按量额度更灵活，用 API Key 登录，按实际用量扣。
- **已经是 Plus，只是偶尔超额**：先等重置或少量买 credits，不必为了一两次超额升级。

## 五、国内下单前的 4 步检查

1. **想好登录方式**，对照第二节的表，确认买的是套餐还是按量额度。
2. **确认账号**：套餐直充是充到**你自己的 ChatGPT 账号**，先在网页 Settings → Account 看清邮箱。正规的直充不需要你交出账号密码。
3. **核对价格和售后**：国内银行卡在官网常被拒付，可以选支付宝或微信付款的渠道。以 [czgptai.com 套餐页](https://www.czgptai.com/gpt-checkout)为例，目前公开标价 ChatGPT Plus ¥168/月，写明 2 分钟开通、30 天质保、可提供购买收据。同页的“Codex 额度充值”属于按量额度，标注 20 档 ¥168（500 积分，页面写“1 美元 = 25 额度”），按 OpenAI 标准 API 费率消耗（2026-11-12 核对）。按量额度具体怎么接入 Codex，以下单页说明为准。站点目前提示“支付宝暂时限额无法支付较大金额”，大额建议用微信。售后规则可以先看它的 [常见问题](https://www.czgptai.com/faq)。
4. **充完马上验证**：套餐直充后 `codex logout` 再 `codex login`，用 `/status` 看额度；按量额度用 `codex login status` 确认显示的是 API Key。

如果 Codex 弹出要验证手机号，官方的验证流程和不支持的号码类型可以看 [Codex 手机号验证教程 Space](https://huggingface.co/spaces/czgptai/codex-yanzheng)；套餐档位速查可以看 [Codex 充值 Space](https://huggingface.co/spaces/czgptai/codex-chongzhi)。

## 常见问题 FAQ

**1. codex 代充后，Codex 还是提示没有额度，怎么办？**
先跑 `codex login status` 看登录方式。买的是 Plus / Pro 套餐，就要用 Sign in with ChatGPT 登录同一个账号；如果显示的是 API Key，Codex 会按 API 价格计费，不会用套餐额度。切换后 `codex logout` 再 `codex login` 刷新。

**2. 用 API Key 登录 Codex 和用 ChatGPT 登录有什么区别？**
ChatGPT 登录用的是套餐包含额度，支持 Codex Cloud；API Key 登录按标准 API 价格计费，适合脚本和 CI，部分依赖 ChatGPT 工作区或云服务的功能不可用。

**3. Free 和 Go 能用 Codex 吗？**
能。OpenAI 帮助中心写明 Codex 包含在所有 ChatGPT 套餐里，包括 Free 和 Go，只是额度不同；但 Codex Cloud 云端任务不包含在 Free 和 Go 里。

**4. 为什么 5 小时额度还满着，却提示已达每周限额？**
Codex 有 5 小时和每周两个额度窗口，每周额度用完就会暂停，与 5 小时窗口还剩多少无关。可以等每周重置、使用已有的重置次数、购买 credits 或升级套餐。

**5. 能找 OpenAI 客服帮我重置 Codex 额度吗？**
不能。帮助中心写明客服不提供额度重置；只有用量明显算错，或过了重置时间仍未恢复时，才建议带截图联系客服排查。

**6. 升级 Codex 套餐需要提供 ChatGPT 密码吗？**
在自己账号上直充不需要密码。按 OpenAI 的说明，Codex 本地登录凭据会缓存在 `~/.codex/auth.json`，这个文件要像密码一样保管，不要发给任何人。

---

*本文为信息整理，不构成购买建议；价格与功能以 OpenAI 官方页面和下单页实时显示为准。*
