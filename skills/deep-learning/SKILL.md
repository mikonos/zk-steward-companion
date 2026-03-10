---
name: deep-learning
description: 全能深度阅读工具（All-in-One Deep Reading）。适用于书/长文/研报/论文的深度消化。Use when 用户要深度消化一本书/长文/研报/论文并构建知识网络、产出结构笔记与原子笔记。融合 Mortimer Adler（结构）、Feynman（解释）、Luhmann（网络）、Pragmatist（工具化）、Critics（辩论）；强制 High Fidelity 案例保留与 Actionable 工具提取。关键词：深度阅读、结构笔记、deep learning、卢曼。
---

# 深度阅读 (Deep Reading)

> **核心理念**：不仅要理解世界（Understand），还要改变世界（Act）。
> **适用范围**：Book, Long-form Article, Research Report, Academic Paper.

## 专家座席 (The Council)

1.  **Mortimer Adler** (The Architect): 负责结构化，提取核心命题和逻辑树。
2.  **The Pragmatist** (The Engineer): 负责工具化，提取可执行的 SOP、模板和清单。
3.  **Richard Feynman** (The Teacher): 负责解释力，确保概念去魅，用人话讲清楚。
4.  **Niklas Luhmann** (The Librarian): 负责连接性，确保知识入网，有机生长。
5.  **The Critics** (The Stress Testers): Musk, Socrates, Munger 负责压力测试和辩论。

---

## 核心法则 (The Iron Rules)

1.  **Always Deep**: 无论输入长短，默认按最高规格处理（结构+工具+辩论）。
2.  **Case Fidelity (案例保真)**:
    *   **有原文/书在手**：禁止概括性改写；原子笔记中涉及案例、研究处须保留**具体数字、作者/机构、时间线、原话**（可标页码）。
    *   **无原文、仅摘要或记忆**：在笔记中标注 `来源: 本书/摘要，未核对原文`；保留能确定的专有名词与结论，**禁止编造细节**；Feynman 验收时标「案例保真：部分（无原文）」。
3.  **No Vague Verbs (模糊词禁令)**: 禁止使用 "优化"、"加强"、"适当" 等虚词。必须转化为**具体动作**或**量化指标**。
4.  **Metadata Mandatory (元数据强制)**: 所有笔记必须包含 YAML Frontmatter (type, tags, links, description)。**禁止省略**。`description` 回答两个问题：这张笔记最值得告诉别人的一个洞察是什么？费曼会怎么向别人介绍这张笔记。100字内，供 index-note 归网时快速定性使用。

---

## 归位与入网（与 file-organize 对齐）

本 skill 的产出**归位**与**入网**规则与 file-organize 一致：物理按天落 05_每日记录，MOC 在 03_索引 用链接拉取；入网步骤与 file-organize 共用同一套定义。

| 事项 | 规则 | 详见 |
|------|------|------|
| **归位** | 在 `05_每日记录/YYYY/MM/YYYYMMDD/` 下**新建本次任务文件夹**（若日期目录不存在则先创建），本次任务笔记默认落在该文件夹内。**索引笔记**例外：物理位置在 `03_索引/`，创建后从 05 任务目录**移动**到 03 下（与 file-organize 类型表一致） | Phase 2.5 步骤 2 |
| **入网** | **索引笔记**：在已存在索引中添加入口（挂载），本索引笔记底部链回父索引。**结构/原子/方法笔记**：在 `03_索引/` 的 MOC 里按关键词添加入口 + 笔记底部反链（与 file-organize 入网步骤一致） | 索引笔记入网见 Phase 2.5 步骤 1；结构/原子/方法入网见 **file-organize** `references/03索引实现MOC流程.md`，Phase 6 执行 |

**结构笔记命名**：`YYYYMMDD_00_[标题]_结构笔记.md`。日期文件夹不存在则创建。

---

## 工作流程 (The Workflow)

**执行顺序**：Phase 0 → 1 → 2 → 2.5 → 3 → 4 → 5 → 6 → **6.5（流程执行审查，强制）**，不可跳步；Phase 2.5 须在 Phase 2 完成后立即执行；Phase 6.5 须在 Phase 6 完成后立即执行。

### Phase 0: Pre-game Plan (准备)
在开始 Phase 1 前产出执行计划；落盘为 `YYYYMMDD_01_[书名]_执行计划.md`（与结构笔记同目录），并在 task.md 的 Preparation 下链接该文件。

确保包含：
1.  **TODO List** (≥6 项)：如全书论证骨架、关键概念、论证链、框架提取、方法提取、案例核实、批判性审查、入网连接。
2.  **Context**：读取意图（我要解决什么问题？）。

### Phase 1: Overview & Structure (概览与骨架)
**Agent**: Mortimer Adler

1.  **任务**: 创建结构笔记；产出须符合 `templates/structure_note_template.md`，含核心命题、逻辑支撑链与**阅读顺序 (Reading Sequence)**（每序列列出笔记顺序；该顺序将作为 Phase 3「阅读顺序链」的权威来源）。
2.  **说明**: 强制调用 `structure-note` skill

### Phase 2: Index Design (索引设计)
**Agent**: Niklas Luhmann
> "不要问它属于哪个分类，问它和谁对话。"

1.  **任务**: 为本书/本文创建索引笔记；产出须符合 `templates/index_note_template.md`，含关键词与多入口。
2.  **索引命名（强制）**：索引**文件名与标题**必须按**领域**命名，与 **file-organize** `references/03索引实现MOC流程.md` 的「索引层级与命名约定」一致：
    *   **必须**：从材料内容提炼**知识领域**（如「AI产品观与能力观」「多Agent与一人公司」），用领域名作为 `索引_<主题>_<领域>.md` 中的 `<领域>`。
    *   **禁止**：用材料名（书名/文章名/作者/来源/活动名/日期）作为索引名；这些信息只写在索引正文的「**来源说明**」或 frontmatter，不得进入文件名。
    *   **执行顺序**：先定领域名 → 再创建索引笔记 → 正文内写来源说明（例：「本索引内容主要来自 [书名/访谈名]，深度阅读产出见 [路径]」）。
3.  **说明**: 强制调用 `index-note` skill；调用前先完成「领域名」决策。

### Phase 2.5: 索引笔记入网（挂载）+ 归位
**Agent**: Niklas Luhmann

索引笔记创建完成后立即执行：**入网**（在已存在索引中挂载）→ **归位**（物理移动到 03_索引）。

1.  **入网（挂载）**：在 `03_索引/` 下选定一个（或多个）与本书主题相关的**已存在索引**，在其中添加入口指向本索引笔记（如子专题表追加 `- [[本索引笔记名]] — 领域简述，YYYYMMDD`；**说明用领域简述，不用书名/来源**）。本索引笔记底部链回该父索引。
2.  **归位**：将本索引笔记**文件**从当前任务目录（`05_每日记录/.../`）**移动**到 `03_索引/` 下合适位置（根目录或某主题子文件夹）。移动后父索引中的 `[[本索引笔记名]]` 仍有效（仅文件名，不依赖路径）。
3.  **多索引挂载检查**延后至 Phase 6：本索引内提到的笔记还可挂到哪些其他索引，届时统一检查并添加入口。

### Phase 3: Recursive Growth (递归生长)
**Agent**: Luhmann & Feynman
> 核心创新：边创建边发现 (Luhmann Scan)。

**流程**:
1.  **Round 1 (骨架)**: 从结构笔记出发，创建所有显式链接的 **Atomic Note (概念)**。
2.  **Luhmann Scan (每张必做)**：见 `references/luhmann_scan.md`。三项——前置依赖、潜在连接、**方法论发现**（若概念附带可执行 how → 记入 task，Phase 4 创建详细的 Method Note）。在 task.md 中每张卡记录格式：`前置 → Round 2: [[A]]. 连接 → Round 3: [[B]]. 方法论 → [[方法名]] (Phase 4).`
3.  **Round 2 (血肉)**: 创建发现的新笔记，继续 Luhmann Scan。
4.  **Round 3+ (边缘)**: 直到完成或超出范围。

**Atomic Note 规范**:
*   **模板**: `templates/atomic_note_template.md`
*   **聚焦**: 定义 (Definition)、机制 (Mechanism)、语境 (Context)。
*   **验收**: 费曼测试 (外行能听懂)。

**阅读顺序链 (Reading-Order Chain)**（强制）:
*   **卢曼策略**：阅读路径应长在**网络里**，而非只存在于结构笔记这一张「地图」。Folgezettel 思维——序列本身是一条链，每张卡带「上一张 / 下一张」，读者无需回到结构笔记即可顺次阅读。
*   **技能契约**：凡被列入结构笔记「阅读顺序」的笔记，**必须在笔记内**建立序列内前后链接（见 atomic 模板「阅读顺序导航」）。结构笔记是入口；一旦进入某 Sequence，由各笔记的「上一张 / 下一张」承担延续阅读。
*   **执行**：Round 1 创建完某 Sequence 中的笔记后，逐张检查并补全「阅读顺序导航」：首张无上一张、末张无下一张可标「—」或省略；中间张必须含 `← [[上一张]] | [[下一张]] →`。

### Phase 4: Methodology Consolidation (方法论整理)
**Agent**: The Pragmatist

将 Phase 3 发现的方法论创建为 Method Note。

**Method Note 规范** (*高优先级*):
1.  **模板**: `templates/method_note_template.md`
2.  **聚焦**: 可执行步骤 (SOP)、模板 (Template)、检查清单 (Checklist)。
3.  **约束**:
    *   **No Vague Verbs**: 无模糊动词。
    *   **Mechanism & Leverage**: 为什么有效？
    *   **MVE**: 下一步最小可行性实验。
4.  **实战化要求（"操作手册版"而不是学术交流）**:
    *   **步骤用表格**：若工具有多步骤，每步用 `| 步骤 | What（做什么） | How（怎么做） | Why（为什么） |` 表格，清晰区分动作要点、具体操作与目的机制；禁止只用纯段落描述步骤。
    *   **卡点随步走**：每步之后嵌入「常见问题 → 即时对策」，不要把所有避坑集中到最后；末尾的避坑指南保留作为全局性反模式总结。
    *   **使用者自评清单**：除了产出验收清单（结果是否达标），再加一份「我自己做得对不对」的执行行为自检（如过程质量、判断质量、协作质量等维度，按方法论领域调整）。
    *   **准备阶段独立**：前置条件之外，需有独立的「准备阶段清单 (Pre-flight)」——开始前需确认的环境、材料、心态等事项。

### Phase 5: Final Review (终极审视)
**Agent**: Richard Feynman

用 Feynman 标准审视整个知识网络：
1.  **去魅检验**: 术语是否已"翻译"为日常语言？
2.  **比喻检验**: 复杂概念是否有恰当比喻？
3.  **逻辑检验**: 论证链是否有断裂？
4.  **拓扑检验**: 是否形成了"意外的惊喜"连接？

### Phase 6: Network Review (入网审视)
**Agent**: Niklas Luhmann

1.  **检查**: 确认每张笔记（非结构父子）至少有 2 条双向链接。
2.  **入网**: 结构笔记与原子笔记（及方法笔记）在 `03_索引/` 相关 MOC 中完成接入。**按 file-organize 的入网步骤执行**（与 file-organize 共用同一套定义）：提取关键词 → 索引候选发现 → 在选中索引中添加入口（Inbox 或关键词条目）→ 笔记底部加反链。详见 **file-organize** 的 `references/03索引实现MOC流程.md`；无需调用其他 skill。
3.  **多索引挂载检查**: 针对本索引内提到的笔记，逐条评估是否还应挂到 `03_索引/` 下**其他**索引；若某笔记也是其他主题的优质入口，则在对应索引中添加入口。输出简要清单：`[[笔记A]] → 已入 索引_X；建议补充入 索引_Y（理由）`。

### Phase 6.5: 流程执行审查（强制）

**Phase 6 完成后必须执行**。调用 **workflow-audit** skill，以德明+葛文德视角对本流程执行完成度逐项核对与系统闭环检查：

1. **审查对象**：本 skill（deep-learning）；**产出**：本次任务目录（执行计划、结构笔记、索引、原子笔记、task.md 等）。
2. **产出**：落盘审查报告（`YYYYMMDD_[任务名]_流程审查报告_德明与葛文德视角.md`），含逐项清单、系统闭环、DoD 勾选、多索引挂载清单；对审查中标为 ❌ 的项**必须补执行**，直至 DoD 全部通过。
3. **workflow-audit 主文件**：`.cursor/skills/workflow-audit/SKILL.md`；报告模板：`workflow-audit/references/audit_report_template.md`。

> 不可跳过。未通过流程执行审查并补全漏项，则本流程视为未完成。

---

## 任务追踪 (Task Tracking)

在 `task.md` 中维护进度：

```markdown
# Preparation
- [ ] Pre-game Plan Created (≥6 项 TODO + Context；对话内区块或落盘文件)

# Structure & Index
- [ ] Structure Note Created (Adler)
- [ ] Index Note Created (Luhmann)
- [ ] Index Note Onboarding (Phase 2.5): 挂载到已存在索引 + 归位到 03_索引

# Extraction Loop (Phase 3)
- [ ] [[笔记A (Concept)]] + Luhmann Scan
- [ ] [[笔记B (Concept)]] + Luhmann Scan

# Methodology (Phase 4)
- [ ] [[工具A (Method)]] (SOP/Checklist/MVE)

# Review (Phase 5 & 6)
- [ ] Feynman Check (De-jargon check)
- [ ] Network Check (2+ Links per note；入网按 file-organize 的 03索引实现MOC流程；多索引挂载检查)

# Workflow Audit (Phase 6.5，强制)
- [ ] 调用 **workflow-audit** 做流程执行审查（德明+葛文德视角），产出审查报告并对 ❌ 项补执行，直至 DoD 全部通过
```

---

## 质量验收清单 (Definition of Done)

- [ ] **Phase 0**: 执行计划已产出（≥6 项 TODO + Context）。
- [ ] **Overview**: 5个问题回答清晰，费曼测试通过。
- [ ] **Fidelity**: 有原文时案例含数字/专有名词/原话；无原文时已标注来源限制且未编造细节。
- [ ] **Actionability**: Method Note 包含无模糊词的步骤 + 可复制模板 + 实战化检查（步骤有 What/How/Why 表格、每步有卡点、有使用者自评清单、有准备阶段清单）。
- [ ] **Network**: 所有笔记双向可达 (≥2 links)；已按 file-organize 入网步骤在 03_索引 相关 MOC 中接入；本索引已挂载并位于 03_索引 下；多索引挂载检查已完成。
- [ ] **阅读顺序链**：凡出现在结构笔记「阅读顺序」中的笔记，已含「阅读顺序导航」（上一张 / 下一张），读者可不回结构笔记顺次阅读。
- [ ] **Insight**: 产生了新的连接或意外发现。
- [ ] **流程执行审查**：Phase 6.5 已执行，workflow-audit 已产出审查报告，且所有 ❌ 项已补执行、DoD 全部通过。
