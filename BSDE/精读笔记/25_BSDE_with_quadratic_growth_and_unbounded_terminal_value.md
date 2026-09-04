# BSDE with quadratic growth and unbounded terminal value — 精读笔记（/paper.core L2）

- **数据来源**：原文全文（pdftotext 提取）
- **论文元信息**：Philippe Briand, Ying Hu（IRMAR, Université Rennes 1）；arXiv:math.PR/0502002 v1, 1 Apr 2005；Draft 25 Mars 2005。期刊/DOI 未在文本中确认。
- **一句话定位**：放宽二次增长 BSDE 对终值有界的要求——终值只需指数矩（exponential moments），即可构造（最小）解；这是 Kobylanski 二次增长理论向无界终值方向的推广，并把同一局部化方法移植到 L¹ 数据 BSDE。

## 符号速查

| 符号 | 含义 | 位置 |
| --- | --- | --- |
| BSDE(ξ, f) | 终值 ξ、生成元 f 的方程 Y_t = ξ + ∫_t^T f(s,Y_s,Z_s)ds − ∫_t^T Z_s·dB_s | §2 |
| S^p, M^p | 分别是 sup 与平方变差可积的 càdlàg/可料过程空间；S=∪_{p>1}S^p, M=∪_{p>1}M^p | §2 |
| 类 (D) | {Y_τ : τ ≤ T 停时} 一致可积的连续过程 | §2 |
| (H1) | f 对 (y,z) 连续，且 \|f(t,y,z)\| ≤ α + β\|y\| + (γ/2)\|z\|²（α,β≥0, γ>0） | §3 |
| (H2) | E[ e^{γ e^{βT} \|ξ\|} ] < +∞（终值指数矩） | §3 |
| (H3) | ∃λ > γ e^{βT}, E[ e^{λ\|ξ\|} ] < +∞（更强的指数矩） | §3 |
| H(p) | H(p) = p(αγ + β ln p)·1_{[1,+∞)}(p) + γα·1_{(−∞,1)}(p)，凸、局部 Lipschitz | §3 |
| φ_t(z) | ODE φ_t = e^{γz} + ∫_t^T H(φ_s)ds 的解，先验界核心 | §3 |
| ξ^n = ξ∧n（及 ξ^{n,p}=ξ⁺∧n−ξ⁻∧p） | 终值截断近似 | §4 |
| τ_k | 局部化停时 τ_k = inf{t : (1/γ)ln E(φ_0(\|ξ\|)\|F_t) ≥ k} ∧ T | §4 |
| (H1'), (H2') | 超线性增长版本：sup_y e^{−γy}\|f\| ≤ h(\|y\|) + (γ/2)\|z\|²，h 凸且 ∫_0^∞ du/h(u)=∞；φ_0(\|ξ\|) 可积 | §5.2 |
| (H4), (H5) | \|f(t,y,z)\| ≤ c(1+\|y\|+\|z\|^α), α∈(0,1)；ξ ∈ L¹ | §6 |

## 核心结果

> **引理 1（先验估计，逐字）**：Let the assumption (H1) hold and let ξ be a bounded F_T–measurable random variable. If (Y, Z) is a solution to the BSDE(ξ, f) in S^∞ × M² then −(1/γ) ln E(φ_t(−ξ) | F_t) ≤ Y_t ≤ (1/γ) ln E(φ_t(ξ) | F_t).
>
> _通俗解释_：有界终值下，解 Y 被 φ_t 的条件期望的 ln 上下夹住，界只依赖 ξ 与 f 的系数。

> **定理 2（主定理，逐字）**：Let the assumptions (H1) and (H2) hold. Then the BSDE (1) has at least a solution (Y, Z) such that −(1/γ) ln E(φ_t(−ξ) | F_t) ≤ Y_t ≤ (1/γ) ln E(φ_t(ξ) | F_t). If moreover, (H3) holds, then Z belongs to M².
>
> _通俗解释_：终值只需指数矩即得解，且解满足同样的先验界；(H3) 时 Z 平方可积。

> **引理 3（[Kob00]，单调极限，逐字）**：Let (ξ_n) be a sequence of F_T–measurable bounded random variables and (f_n) a sequence of generators continuous in (y, z). We assume (ξ_n) converges P–a.s. to ξ, (f_n) converges locally uniformly in (y,z) to f, and sup_n ‖ξ_n‖_∞ < +∞; sup_n |f_n(t,y,z)| satisfies (H1). If for each n, BSDE(ξ_n, f_n) has a solution in S^∞×M² such that (Y^{f_n}(ξ_n)) is nondecreasing (resp. nonincreasing), then P–a.s. Y^{f_n}(ξ_n) converges uniformly on [0,T] to Y = sup_n Y^{f_n}(ξ_n) (resp. inf), Z^{f_n}(ξ_n) converges to some Z in M² and (Y,Z) is a solution to BSDE(ξ,f) in S^∞×M².
>
> _通俗解释_：单调、一致有界的一列解可逐点取极限，极限仍是解（Kobylanski 命题的推广）。

> **命题 4（最小解，逐字）**：Let (H1) holds and assume moreover that there exists an integer r ≥ 0 such that P–a.s. f(t,y,z) ≥ −r(1+|y|+|z|). Let us assume also that (H3) holds for ξ⁺ and that, for some p > 1, ξ⁻ ∈ L^p. Then BSDE(ξ,f) has a minimal solution in S.
>
> _通俗解释_：加下界条件（f 不低于线性）时，解可按 ≤ 比较得到最小解。

> **命题 5（推广比较定理，逐字）**：Let (Y,Z) be a solution to BSDE(ξ,f) and (Y′,Z′) a solution to BSDE(ξ′,f′). We assume ξ ≤ ξ′ and that f satisfies, for some constants µ and λ, P–a.s. (y−y′)·(f(t,y,z)−f(t,y′,z)) ≤ µ|y−y′|²  [UNCERTAIN: 原文缺括号，(y−y′) 与 f 差的乘法关系据上下文补]; |f(t,y,z)−f(t,y,z′)| ≤ λ|z−z′|; If (Y−Y′)⁺ belongs to S, then P–a.s. Y_t ≤ Y_t′.
>
> _通俗解释_：不必有界、只需正部属于 S 即可用的比较定理（Tanaka + Girsanov 证明）。

> **定理 7（超线性增长，逐字）**：Let assumptions (H1′) and (H2′) hold. Then the BSDE (1) has at least a solution (Y,Z) such that −(1/γ) ln E(φ_t(ξ) | F_t) ≤ Y_t ≤ (1/γ) ln E(φ_t(ξ) | F_t).  [UNCERTAIN: 左端疑似原文笔误，按对称性应为 φ_t(−ξ)]
>
> _通俗解释_：生成元允许超线性 y 增长（如 y ln y），相应 Osgood 型 ODE 可解时结论仍成立。

> **定理 10（L¹ 数据，逐字）**：Let (H4) and (H5) hold. Then the BSDE (1) has a solution (Y,Z) such that Y belongs to the class (D). Moreover (Y,Z) belongs to S^β × M^β for all 0 < β < 1.
>
> _通俗解释_：生成元 \|f\| ≤ c(1+|y|+|z|^α) 且 ξ∈L¹ 时，解存在且属类 (D)。

## 证明骨架

- **武器库**：指数变换（P_t = e^{γY_t}, Q_t = γ e^{γY_t} Z_t，把二次项 \|z\|² 与 γ²\|z\|²/2 抵消）；凸函数 H 与线性 ODE φ_t 的先验比较；Itô 公式 + Fatou 引理（得 Z ∈ M²）；截断近似 ξ∧n / ξ^{n,p}；停时局部化 τ_k；Kobylanski 单调极限（引理 3）；比较定理与推广比较定理（命题 5，Tanaka + Girsanov）；inf-卷积 + Dini 定理的 Lipschitz 逼近（命题 4）；类 (D) 与 [BDH⁺03] 的 L¹ 理论（§6）。
- **核心技巧**：一步——用指数变换把二次生成元"吸收"成被凸函数 H 支配的项，从而把解的先验上下界化归为 ODE φ_t 的条件期望（与 n 无关），随后在局部停时区间 [0, τ_k] 上解一致有界，用 Kobylanski 单调极限先对 n→∞ 再对 k→∞ 得到整体解。
- **两条主线**：§3–5 走"二次增长 + 指数矩终值"；§6 把同一"截断 + 局部化 + 单调极限"套路用于 L¹ 数据，上界用 Lipschitz 控制生成元 g = 2c(1+|y|+|z|^α∧|z|) 与引理 9（L¹ 比较）取得。

## 阅读门槛

- Pardoux–Peng 意义下 BSDE 解的定义与 Itô 公式、Brown 鞅表示定理；
- 二次增长 BSDE 基本事实：Kobylanski 对**有界终值**的存在性（[Kob00] Thm 2.3、Prop 2.4）；
- 比较定理、Tanaka 公式、Girsanov 定理（证明命题 5 必需）；
- 条件期望与凸函数的 Jensen 不等式、类 (D) 与一致可积；
- 单调收敛定理 / Fatou 引理、Dini 定理（Lipschitz 逼近）。

## 与其他文献的关联

- **Pardoux–Peng [PP90]**：BSDE 存在性起点，本文框架的源头。
- **Kobylanski [Kob97, Kob00]**：二次增长 BSDE 的奠基（有界终值），本文直接引用其 Thm 2.3（截断方程最小解存在）与 Prop 2.4 的推广（引理 3）；本文把"终值有界"弱化为"指数矩"。
- **Lepeltier–San Martin [LSM97, LSM98]**：连续系数/超线性二次系数的存在性，§5.2 的超线性 y 增长即沿 [LSM98] 思路；§6 用 [LSM97] 取连续生成元最小解。
- **Briand–Delyon–Hu–Pardoux–Stoica [BDH⁺03]**：L¹ 数据的 BSDE（假设 (A)、类 (D)、引理 3.1），§6 是其结果的推广——把 \|f(t,y,z)−f(t,y,0)\| ≤ δ(g_t+|y|+|z|)^α 换成更自然的 \|f\| ≤ c(1+|y|+|z|^α)，并给出一维情形的存在性（引理 8、9 均引自它）。
- **应用侧**：Bismut [Bis78]、El Karoui–Rouge [EKR00]、Hu–Imkeller–Müller [HIM05]（控制与金融中的二次 BSDE，文中仅作背景引用）。
- **范胜君**：文中**未引用**，不作关联（依要求无依据不写）。

## 备注

- 提取质量：pdftotext 整体可读，主要公式（α、β、γ、ξ、φ_t、H(p) 等）大多保留，但存在乱码/断裂，集中在：
  1. 定理 2 后半段 Itô 公式处（u(x)=(1/γ²)(e^{γx}−1−γx)、u″−γu′ 的逐项推导与期望不等式多行断裂）[UNCERTAIN: 乱码，未逐字引用]；
  2. §5.2 中 c = sup_{p∈(0,1)} γp·h(−ln p/γ) 与 p₀ = inf{p ≥ 1 : γp·h(ln p/γ) ≥ c} 定义排版破碎 [UNCERTAIN]；
  3. 命题 5 第一条件缺括号（见上）；定理 7 左端疑似缺 φ_t(−ξ) 的负号。
- 缺失公式位置：引理 3 证明中 ρ(x)=x·r/max(r,|x|) 的截断与 g_n 的增长控制基本完整；§4 一般情形（ξ 变号）的 Y^{n,p} 单调关系 Y^{n,p+1} ≤ Y^{n,p} ≤ Y^{n+1,p} 完整。
