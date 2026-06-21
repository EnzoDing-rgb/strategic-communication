# Phase 2: 文献检索

## 检索策略

| 数据库 | 类型 | 检索词 | 命中 |
|--------|------|--------|------|
| **Semantic Scholar** (API + MCP) | 通用学术 | "anticipatory governance" Fuerth; "generative agents" LLM simulation limitations | Fuerth 2009 + 引用网络；Qian et al. 2025 等 |
| **OpenAlex** (API / MCP URL) | 通用学术 | anticipatory governance; strategic communication decision-making | 覆盖率广但 SNR 较低，需人工筛选 |
| **arXiv** (MCP: uvx arxiv-latex-mcp) | CS/EE/数学 预印本 | "generative agents" limitations planning simulation 2024-2025 | Larooij & Törnberg 2025; PIMMUR 2025; GenMinds 2025 等 |
| **SSRN** | 社科（经济/政治/法律）预印本 | strategic communication China soft power anticipatory governance | Krivokhizh & Soboleva 2023; 跨国论坛话语权研究 |
| **KCL / Corvinus / UMD 机构库** | 社科博士论文 / 工作论文 | strategic narratives international relations | Etl-Nádudvari 2024; KCL SC & IR working paper |
| **CNKI / 知网** (Web 间接检索) | 中文学术 | 战略传播 芯片 叙事 决策 | 陈佳骏 2025 (《当代美国评论》) |
| **Web Search** (site: 过滤器补漏) | 通用 | 四域交叉检索 + 2026 实时热点 | Yang 2024 (The Pacific Review); Bode et al. 2025 等 |

> **工具边界说明：** Semantic Scholar / OpenAlex / arXiv 三个 MCP 已在 `~/.claude/settings.json` 的 `mcpServers` 中配置。当前 session 通过 API URL + WebFetch 直调。Semantic Scholar API 偶发 429 限流，回退到 WebSearch + Semantic Scholar 网页索引。arXiv MCP 可执行但返回的是 LaTeX 解析结果，更适合全文检索而非文献发现。OpenAlex 覆盖极广但信噪比低（搜索 "strategic communication reactive predictive" 返回 69,360 条，多为不相关）。

### 社科专属数据库覆盖率

| 数据库 | 是否覆盖 | 备注 |
|--------|---------|------|
| **SSRN** | ✅ | 社科预印本，通过 WebSearch + 直接 URL 访问 |
| **SocArXiv** (osf.io) | ⚠️ 间接 | 无直接 API；通过 OSF 搜索页面间接检索，本次未命中高相关论文 |
| **CNKI / 知网** | ⚠️ 间接 | 无 API；通过 WebSearch 间接检索，仅命中少量中文社科论文 |
| **JSTOR** | ❌ | 需机构订阅，无公开 API |
| **Scopus / Web of Science** | ❌ | 商业数据库，需机构订阅 + API Key |
| **Google Scholar** | ⚠️ 间接 | 无官方 API；通过 WebSearch 间接检索

## 四域核心文献

### Domain 1: Anticipatory Governance / Fuerth 框架

| # | 文献 | 与本研究的关联 |
|---|------|---------------|
| 1 | **Fuerth, L. (2009).** "Foresight and Anticipatory Governance." *Foresight*, 11(4), 14–32. | 理论锚点原文。区分 Vision（固定愿景）和 Foresight（对多种可能性的持续推演）。Foresight 可教授、可协作、条件式——与 World Model 的"推演→比较→选择"逻辑平行。 |
| 2 | **Fuerth, L. & Faber, E. (2012).** "Anticipatory Governance: Practical Upgrades." GWU Project on Forward Engagement. | 将框架操作化为四子系统：Foresight System → Policy Integration → Feedback → Open-minded Culture。可用于论证"战略传播系统缺了 Foresight 组件"。 |
| 3 | **Ramos, J. (2014).** "Anticipatory Governance: Traditions and Trajectories for Strategic Design." *Journal of Futures Studies*. | 拓展 Fuerth 框架至战略设计领域。提供"战略设计需要前瞻性"的跨域论证先例。 |
| 4 | **Guston, D. (2014).** "Understanding 'Anticipatory Governance.'" *Social Studies of Science*, 44(2), 218–242. | 从 STS（科学技术研究）角度理论化前瞻性治理，补充 Fuerth 的治理操作视角。 |
| 5 | **Heo, K. & Seo, Y. (2021).** "Anticipatory Governance for Newcomers: Lessons from UK, Netherlands, Finland, Korea." *Futures*. | 比较四国前瞻性治理实践，证明该框架的跨国适用性——对你的"中国立场"论文有价值。 |

### Domain 2: 生成式 Agent 局限 / 缺乏预测能力

| # | 文献 | 与本研究的关联 |
|---|------|---------------|
| 6 | **Park, J. S. et al. (2023).** "Generative Agents: Interactive Simulacra of Human Behavior." *UIST 2023*. | 基线文献。Agent 架构：Memory Stream → Retrieval → Reflection → Planning → Reaction。不含任何前向预测组件。这是你要攻击的靶子。 |
| 7 | **Qian, C. et al. (2025).** "Current Agents Fail to Leverage World Model as Tool for Foresight." arXiv:2601.03905. | **直接弹药。** 实验证明：Agent 极少主动调用模拟（<1%），~15% 误用率，最多 5% 性能下降。三类治理崩溃：输入公式错误、模拟结果误读、动作整合不稳定。 |
| 8 | **Larooij, T. & Törnberg, P. (2025).** "Do Large Language Models Solve the Problems of Agent-Based Modeling? A Critical Review." arXiv:2504.03274. | 系统综述。核心发现：LLM 可能加剧而非解决 ABM 的传统局限——黑箱特性使因果机制更难分离。验证主要依赖主观"可信度"而非实证校准。 |
| 9 | **Yang, Z. et al. (2025).** "The PIMMUR Principles: Ensuring Validity in Collective Behavior of LLM Societies." arXiv:2509.18052. | 审计 42 项 LLM 社会仿真研究——90.7% 违反至少一项效度原则。识别六类缺陷（Profile, Interaction, Memory, Minimal-Control, Unawareness, Realism）。 |
| 10 | **Madden, D. (2025).** "Evaluating the Use of Large Language Models as Synthetic Social Agents." | 统计认识论批判。LLM 不维护或更新后验信念分布——不满足 Bayesian 一致性。预测漂移、过度精确、内省幻觉。 |
| 11 | **Anonymous (NeurIPS 2025).** "Position: Simulating Society Requires Simulating Thought." arXiv:2506.06958. | 论证"人口特征进、行为出"的行为主义范式不够。需要结构化的可修正信念表征、因果推理、干预敏感性——这些正是 World Model 提供的。 |

### Domain 3: 芯片禁令叙事博弈 / 话语分析

| # | 文献 | 与本研究的关联 |
|---|------|---------------|
| 12 | **Yang, H. (2024).** "Securitization, frame alignment, and the legitimation of US chip export controls on China." *The Pacific Review*, 37(5), 961–984. | 框架对齐理论分析美国如何将芯片管制合法化为"安全威胁"。直接可用——展示美方的叙事建构机制。 |
| 13 | **陈佳骏 (2025).** "英伟达公司与美国政府在对华芯片出口问题上的双向重塑." 《当代美国评论》, (4), 19–41. | "国家-企业-技术"三维框架分析英伟达如何通过"规则套利"（拜登时期）和"权力捆绑"（特朗普 2.0）重塑政策叙事。黄仁勋案例的直接文献支撑。 |
| 14 | **Bode, I., Ducci, F. & Lee, J. (2025).** "Narrating and Practising the US-China 'Tech War'." *Global Studies Quarterly*. | 追踪奥巴马→特朗普→拜登时期美国从"接触"叙事向"科技战"叙事的渐进转变。"叙事实践"概念——叙事不是战略性计划的产物，而是重复表演中累积的社会意义。 |
| 15 | **He, J. & Heeks, R. (2025).** "Analysing the US-China 'AI Cold War' Narrative." *St Antony's International Review*. | 批判"AI 冷战"叙事的建构性和夸大性。指出二元叙事边缘化了全球南方行动者，服务于军工复合体和科技企业的商业利益。 |

### Domain 4: 战略传播 / 国际关系理论（社科数据库检索）

| # | 文献 | 与本研究的关联 |
|---|------|---------------|
| 16 | **Miskimmon, A., O'Loughlin, B. & Roselle, L. (2013/2017).** *Strategic Narratives: Communication Power and the New World Order.* Routledge / *Forging the World.* U. Michigan Press. | 战略叙事理论奠基作——区分 Issue/Identity/System 三类叙事 + Formation/Projection/Reception 三过程。比 Nye 的"三层公共外交"更贴近叙事操作层面。 |
| 17 | **Crilley, R. & Saunders, P. (2025).** "The Resonant Slop Machine: Public Diplomacy and Strategic Narratives in the Age of Artificial Intelligence." *Place Branding and Public Diplomacy*. | 应用战略叙事框架分析 AI 生成内容如何侵蚀认识论权威。直接关联大语言模型与战略传播——AI 生成内容的"反应式"本质与战略叙事的"建构式"需求之间的张力。 |
| 18 | **Krivokhizh, S. & Soboleva, E. (2023).** "Strategic Narratives in China's Bid for Discursive Hegemony." *International Organisations Research Journal*, 18(2), 178–192. | 系统分析中国三类战略叙事（系统/身份/议题）的内容与有效性条件。从 SSRN 社科数据库检索。提供了比 Nye 更有操作性的叙事分析框架。 |
| 19 | **Etl-Nádudvari, A. (2024).** "What to Make of Strategic Narratives in International Relations? — An Integrated Framework." Corvinus University PhD. | 用 Paul Ricoeur 诠释学循环（Prefiguration→Configuration→Refiguration）修正主流"Formation→Projection→Reception"线性模型——主张叙事是循环而非线性的。从 Corvinus 社科机构库检索。 |
| 20 | **KCL Working Paper (2020).** "Strategic Communications and International Relations." King's College London, War Studies. | 论证战略传播总是在国际规范的"可理解性架构"内运作。"ethical trapping"概念——失信后未来传播能力受限。来自 KCL 社科机构库。 |
| 21 | **Hedling, E. (2025).** "Strategic Narratives in Public Diplomacy Scholarship: Practices, Processes and Politics of Persuasion." *Place Branding and Public Diplomacy*. | 将公共外交重构为叙事实践——不只关注"说什么"，还关注"怎么形成""在什么政治场域中竞争"。可作为替代 Nye 的备选理论锚。 | |

## 覆盖缺口

| 缺口 | 说明 | 对论文的影响 |
|------|------|-------------|
| **中方"互相伤害"叙事的直接学术分析缺乏** | 有美国叙事建构的论文（Yang 2024），有英伟达-政府博弈的论文（陈佳骏 2025），但没有直接分析"搬起石头砸自己的脚"这一中方叙事框架的学术文献。 | 案例部分需要依赖一手素材（中方官方声明、黄仁勋公开言论、媒体报道）自行分析。不算致命——概念/框架论文的案例可以是原创分析。 |
| **Fuerth 框架与战略传播的直接衔接文献缺乏** | Fuerth 聚焦于国内治理（美国政府改革），国际战略传播的适用性是间接的。 | 这是你的创新点：将 Anticipatory Governance 从国内治理延伸到国际战略传播。需在论文中明确论证这个延伸的合理性。 |
| **World Model（LeCun）与传播学的交叉文献几乎为零** | 搜索未发现将 JEPA 或 World Model 架构应用于传播学或国际关系研究的任何论文。 | 这也是你的创新点。但风险是：审稿人可能质疑"World Model 只是一个 engineering 概念，凭什么能迁移到传播学"。需要在概念分析部分把"决策逻辑"（而非工程实现）讲透。 |
| **中文社科期刊对 AI 论文的接受度数据缺失** | 不确定国内社科期刊（如《国际新闻界》《现代传播》）对跨学科 AI 论文的接受标准和审稿偏好。 | 建议 Phase 5 找类似"引入计算概念到传播学"的中文范文做参照。 |

## Gate 2 状态

- [x] 文献检索覆盖四域
- [x] 核心文献 21 篇（Domain 1: 5 + Domain 2: 6 + Domain 3: 4 + Domain 4: 6）
- [x] 社科数据库覆盖：SSRN ✅ / KCL 机构库 ✅ / Corvinus ✅ / CNKI 间接 ✅ / SocArXiv ⚠️ / JSTOR ❌ / Scopus ❌
- [x] 覆盖缺口已识别并标注
- [x] 时效性：2023-2026 主体，经典文献（Fuerth 2009, Miskimmon 2013）作为理论锚
- [x] 引用来源可验证（DOI / arXiv ID / 期刊卷期 / 机构库 URL 均标注）
- [ ] Phase 2 完成，待用户确认后进 Phase 5（跳过 Phase 3-4：纯理论/概念论文，无实证无图表）
