# Google Antigravity 地区限制解决全攻略：从“账号不符合条件”到成功登录!

> 本文是博客原文的摘要，便于在仓库里快速查阅。完整步骤、截图和避坑清单请以原文为准。
>
> **博客原文：** [Google Antigravity 地区限制解决全攻略：从“账号不符合条件”到成功登录!](https://www.czgptai.com/blog/google-antigravity-region-restriction-fix)
>
> **配套脚本：** [`launch_proxy.bat`](launch_proxy.bat)
>
> **重要说明：** 更改 Google 账号关联地区，只应用于按你的真实居住或真实关联情况做纠正，不要填写与实际情况不符的地区。审核是否通过、多久出结果，以 Google 实际处理为准。原文作者写「实测 1～2 小时邮件通过」，那是原文作者的个案，不是时效保证，也不构成对特定地区选择的建议。

## English overview

This summary follows the original CZGPT guide to two separate Google Antigravity login problems. The message “Sorry, this account is ineligible to use Antigravity” is about the country or region associated with the Google account, not about your current IP address; changing VPN or proxy nodes will not fix it. You can check the associated region on Google’s Terms of Service page, then use Google’s official country-association form only to correct it to your actual situation. The original author reported an approval email in about one to two hours in their own case; that timing is not a guarantee, and this summary does not recommend selecting any particular country. A second, different issue is a timeout at `oauth2.googleapis.com/token` when the desktop client exchanges a token: the browser may already be proxied while the client is not. The original article suggests starting the client with `--proxy-server` (or enabling the proxy tool’s TUN mode) and setting `HTTP_PROXY`, `HTTPS_PROXY`, and `NO_PROXY=localhost,127.0.0.1`. After login, review the default-checked data-use box, especially if you work with company code or secrets.

## 先分清两种报错

折腾 Google Antigravity 时，原文指出最常见的拦路虎有两个，长得不一样，原因也不一样，可能同时存在：**先解决地区，再解决代理，顺序别反。**

1. **账号不符合条件。** 提示 `Sorry, this account is ineligible to use Antigravity`。原因是 Google 账号的「关联地区」不受支持，和你当前的 IP、代理节点都没关系。所以只换美国节点，通常仍会提示 ineligible。
2. **登录超时。** 网页认证可能已经通过，桌面客户端在访问 `oauth2.googleapis.com/token` 换取 Token 时超时。这通常不是「IP 被风控了」，而是客户端自己没走代理：浏览器走了本地代理，客户端直连 Google。

## 先确认账号关联的是哪个地区

每个 Google 账号都有一个关联国家/地区，它决定了你适用哪一版服务条款，也决定了 Antigravity 这类按地区开放的产品能不能用。

查看方法（原文）：

1. 在浏览器里登录你要用来登 Antigravity 的那个 Google 账号。
2. 打开 Google 服务条款页：https://policies.google.com/terms
3. 看「生效日期」下方的「国家/地区版本」。

原文作者的观察是：显示中国或其他不受支持的地区就无法使用；作者另一个显示美国的账号则可以正常使用。这是原文作者对自己两个账号的对比，不是「改成美国就一定能通过」的操作建议。

如果浏览器登了多个账号，先点右上角头像确认当前是哪个账号，避免查错、改错号。

## 解法一：用官方表单纠正关联地区（解决 ineligible）

Google 官方提供了申请表单：https://policies.google.com/country-association-form?source=policies-site

提交前请注意：

- 只按你的真实居住地或真实关联情况申请纠正，不要申报不符合实际的地区。
- 关联地区会影响你适用的服务条款版本和其他 Google 服务，提交前要清楚这一点。
- 审核结果出来前不要重复提交；地区一次选准，不要反复改来改去。
- 能不能通过、多长时间出结果，以 Google 的实际审核为准。

原文中的表单步骤可概括为：打开表单并确认右上角是要修改的那个账号；在「您的账号应改为与哪个地区关联」里选择与你实际情况相符的国家/地区（若表单要求选择州/省，也按真实情况填写）；在「为什么您的账号应与这个地区关联」里，只勾选确实符合你情况的选项（原文列出的可选项包括：我住在这里、过去一年内搬到这里、工作地/学习地和居住地分属不同地区、经常旅行、经常使用 VPN、与他人共用设备、其他原因）；提交后页面会显示请求已提交，并说明处理完后会发邮件到账号邮箱。

关于审核时间，原文作者写：自己实测一般 1～2 小时出结果；通过的邮件会写明之前关联的国家/地区，以及当前关联的国家/地区和州。原文作者的个案是从「中国」改成「美国 - 纽约州」。**这只是原文作者的个案经历，不是 1～2 小时通过的保证，也不是建议你选择美国或纽约州。**

验证是否生效：再打开服务条款页，若「国家/地区版本」已变为新地区，说明账号侧已经改好。然后完全退出 Antigravity 客户端（包括托盘图标）再打开，重新走一遍登录。

## 解法二：让客户端走代理（解决 Token 超时）

地区已经符合条件、网页认证也通过，但跳回桌面客户端时在 `oauth2.googleapis.com/token` 超时，再处理代理问题。Antigravity 底层是 Chromium/Electron，认 `--proxy-server` 启动参数。

动手前先在你自己的代理工具里确认本地混合端口。Clash 系常见默认是 7890，但**一定以你自己的为准，不要照抄端口**。

**命令行启动示例（路径和端口都要改成你自己的）：**

Windows：

```bat
"C:\Users\你的用户名\AppData\Local\Programs\Antigravity\Antigravity.exe" --proxy-server=http://127.0.0.1:7890
```

macOS：

```bash
open -a Antigravity --args --proxy-server=http://127.0.0.1:7890
```

路径可右键快捷方式 → 属性 →「目标」查看。如果安装路径含空格，Windows 下请保留引号。

**Windows 启动脚本：** 本目录的 `launch_proxy.bat` 会同时设置本次进程的 `HTTP_PROXY`、`HTTPS_PROXY`、`NO_PROXY=localhost,127.0.0.1`，并用 `--proxy-server` 启动客户端。脚本只用临时环境变量，不用 `setx`，也不要在脚本里填写代理账号或密码。换端口时只改脚本里标注的那一处。把快捷方式指向该 bat 后，不要再直接双击原来的 exe。

**TUN 模式：** 若代理工具支持 TUN / 虚拟网卡模式，打开后整机流量会被接管，可以不改启动参数。

`NO_PROXY` 必须加上 `localhost,127.0.0.1`，避免客户端访问本机服务时也被转到代理；这些变量应只作用于这次启动的进程。

改完启动方式后要彻底退出客户端：只关窗口不够，托盘里的进程也要退出，否则启动参数不生效。

## 登录成功后：检查数据授权勾选框

原文写：登进去后会弹出 Security Notice & Data Use 页，里面有一个默认勾选的选项，内容是同意 Google 收集并使用你的交互数据来改进 Antigravity。

- 如果会在里面处理公司代码、生产密钥、客户资料，建议立刻取消勾选。
- 原文写：取消不影响使用，之后也可以在设置里随时修改。

同一页还有安全提示：AI 编程代理存在数据外泄、代码执行等风险，它做的操作要自己确认。

## 避坑清单（摘自原文，并加上地区申请的边界）

- 换节点解决不了 ineligible：看的是账号关联地区，不是当前 IP。
- 别查错、改错账号。
- 只按真实情况纠正关联地区，不要申报不实地区。
- 审核期间不要重复提交。原文作者个案是 1～2 小时，这不是保证。
- 端口别照抄 7890，以你的代理工具实际本地混合端口为准。
- 改完要彻底重启客户端，包括托盘进程。
- 用了脚本就不要再双击原 exe。
- `NO_PROXY` 要加上本地地址。

## 相关链接

- 博客原文：https://www.czgptai.com/blog/google-antigravity-region-restriction-fix
- Google 服务条款（查看「国家/地区版本」）：https://policies.google.com/terms
- Google 官方地区关联申请表：https://policies.google.com/country-association-form?source=policies-site
- 配套脚本：[`launch_proxy.bat`](launch_proxy.bat)
- 站点：https://www.czgptai.com
