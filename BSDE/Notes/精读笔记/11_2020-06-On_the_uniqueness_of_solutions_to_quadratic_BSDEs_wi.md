# On the uniqueness of solutions to quadratic BSDEs with non-convex generators and unbounded terminal conditions — 精读笔记（/paper.core L2）

- **数据来源**：原文全文（pdftotext 提取）
- **论文元信息**：Shengjun Fan, Ying Hu, Shanjian Tang；*Comptes Rendus Mathématique*, Vol. 358, issue 2 (2020), p. 227–235；DOI: 10.5802/crmath.40；MSC 60H10；收稿 2019-05-28，录用 2020-03-17（Fan 单位中国矿业大学，Hu 单位 Rennes，Tang 单位复旦大学）
- **一句话定位**：在端值无界、生成元 g 对 y 非 Lipschitz、对 z 非凸（非凹）的情形下证明二次增长 BSDE 无界解的唯一性，是 Briand–Hu(2008) 唯一性结果在"非凸 + 严格二次"方向上的推广。

## 符号速查

| 符号 | 含义 | 位置 |
| --- | --- | --- |
| ξ | 无界 FT-可测实值终端条件 | 引言 |
| g(ω,t,y,z) | 生成元（driver），对 (y,z) 连续 | 引言 |
| (Y_t, Z_t) | BSDE 的解，Y∈R，Z∈R^d | 引言 |
| B_t | d 维标准布朗运动 | 引言 |
| ψ(s,x;f,κ,λ) = exp(λ e^{κs} x + λ∫_0^s f(r)e^{κr}dr) | 关键指数权重函数 | (2) |
| α_t | 非负循序可测过程 | §2 |
| β≥0, γ>0, k≥0, k≥0, δ∈[0,1) | 固定常数 | §2 |
| φ(·) | 非降连续函数，φ(0)=0（H2 用） | (H2) |
| S^p, M^p | Y 与 Z 的可积性空间 | 引言 |
| class (D) | 停时族一致可积过程类 | 引言 |
| δ_θ y=(y¹−θy²)/(1−θ), δ_θ z=(z¹−θz²)/(1−θ) | θ-差商（唯一性证明核心） | (H4) |
| h(ω,t,y¹,y²,z¹,z²,δ)=α_t+k( \lvert y¹ \rvert + \lvert y² \rvert )+k( \lvert z¹ \rvert ^{1+δ}+ \lvert z² \rvert ^{1+δ}) | 辅助函数 | (H4) |
| 1_A, sgn(x), a∧b, a⁻, a⁺ | 指标/符号/极小/负部/正部 | 引言 |

## 核心结果

### 假设（逐字）

- **(H1)** dP×dt−a.e.，对每个 (y,z)：sgn(y)g(ω,t,y,z) ≤ α_t(ω) + β|y| + (γ/2)|z|²
- **(H2)** 存在确定性非降连续 φ(·)，φ(0)=0，使 dP×dt−a.e.：|g(ω,t,y,z)| ≤ α_t(ω) + φ(|y|) + (γ/2)|z|²
- **(H3)（严格正二次条件）** dP×dt−a.e.：g(ω,t,y,z) ≥ (γ/2)|z|² − β|y| − α_t(ω)
- **(H4)** dP×dt−a.e.，对每个 (y^i,z^i), i=1,2 及每个 θ∈(0,1)：1_{y¹−θy²>0}[g(ω,t,y¹,z¹) − θg(ω,t,y²,z²)] ≤ (1−θ)(β|δ_θ y| + γ|δ_θ z|² + h(ω,t,y¹,y²,z¹,z²,δ))
  > *通俗解释*：g 在"θ-凸性"意义上的单向（半）凸型控制，由凸/凹函数加 Lipschitz 扰动满足。

> **命题 1（存在性+估计，逐字）**：Proposition 1. Suppose that the function ψ is defined in (2) and that ξ is a terminal condition and g is a generator which is continuous in (y, z) and satisfies assumptions (H1) and (H2). (i) …pγ|Y_t| ≤ ψ_p(t,|Y_t|;α·,β,γ) + (1/2)p(p−1)γ²E[∫_t^T|Z_s|²ds|F_t] ≤ E[ψ_p(T,|ξ|;α·,β,γ)|F_t]. (ii) If E[ψ_p(T,|ξ|;α·,β,γ)] < +∞ for some real p ≥ 1, then BSDE(ξ,g) admits a solution (Y·,Z·) such that (ψ_p(t,|Y_t|;α·,β,γ)) belongs to class (D)… and Z·∈M²; if p>2 then Z·∈M^p.
> *通俗解释*：只要 ξ 有指数矩，就存在满足指数权可积的解。

> **命题 2（Z 的指数矩，逐字）**：Proposition 2. Let ψ be defined in (2), ξ be a terminal condition, g be a generator satisfing (H3), and (Y·,Z·) be a solution to BSDE(ξ,g). If E[sup_{t∈[0,T]} ψ(t,|Y_t|;α·,0,p₀)] < +∞ for some real p₀ > 0, then for each real ε∈(0,ε₀] with ε₀ := γ²/18 ∧ p₀γ/(12+6βT) [UNCERTAIN: 分式排版错乱，按 "3ε(2+βT)≤p₀" 与 "ε≤γ/9" 反推]，we have E[exp(ε∫_0^T|Z_s|²ds)] < +∞. In particular, for each p>0 and δ∈[0,1), E[exp(p∫_0^T|Z_s|^{1+δ}ds)] < +∞.
> *通俗解释*：严格二次 + Y 指数矩 ⇒ Z 的二次变差有指数矩（本文关键观察）。

> **命题 3（H4 充分条件，逐字）**：Proposition 3. Assumption (H4) holds for the generator g as soon as it is continuous in (y,z) and satisfies (H1) together with anyone of the following conditions: (i) dP×dt−a.e., g(ω,t,·,·) is convex; (ii) g is Lipschitz in y and δ-locally Lipschitz in z…; (iii) …g(ω,t,·,z) is Lipschitz, and g(ω,t,y,·) is convex; (iv) …g(ω,t,·,z) is convex, and g(ω,t,y,·) is δ-locally Lipschitz.
> *通俗解释*：凸、Lipschitz-y+局部Lipschitz-z、及二者的 y/z 混合情形都满足 H4。

> **定理 5（主结果，逐字）**：Theorem 5. Suppose that the function ψ is defined in (2) and that ξ is a terminal condition, g is a generator which is continuous in the state variables (y,z) and satisfies assumptions (H1) and (H2), and E[ψ_p(T,|ξ|;α·,β,γ)] < +∞ for each real p ≥ 1. Then, we have (i) If g also satisfies assumption (H4) with k=0, then BSDE(ξ,g) admits a unique solution (Y·,Z·) such that for each p≥1, E[sup_{t∈[0,T]} ψ_p(t,|Y_t|;α·,β,γ)] < +∞. Moreover, Z·∈M^p for each p≥1. (ii) If g also satisfies assumptions (H3) and (H4), then BSDE(ξ,g) admits a unique solution (Y·,Z·) such that for each p≥1, E[sup_{t∈[0,T]} ψ_p(t,|Y_t|;α·,β,γ)] < +∞. Moreover, E[exp(ε∫_0^T|Z_s|²ds)] < +∞ for some real ε>0.
> *通俗解释*：端值有任意阶指数矩时，(i) H4 得唯一性+Z 的各阶矩；(ii) 再加 H3 得 Z 的指数矩。

## 证明骨架

- **武器库**：Itô–Tanaka 公式（对 |Y| 的局部时处理）、指数权重函数 ψ 的构造（使 (3)(4) 两式成立的超解型核）、停时局部化 + Fatou 引理、Doob 极大不等式、Hölder/Young 不等式、θ-差商技术（来自 [2]）、H⁺ 正鞅的指数鞅估计。
- **核心技巧**：
  1. *存在性*：ψ 是"拟线性化"权重，Itô–Tanaka 后用 (H1)(H2) 使漂移项被 ψ 的时间导数吸收，得到命题 1 的逐点估计；存在性沿用 [2] 的局部化论证。
  2. *Z 的指数矩*（命题 2，本文关键观察）：由 (H3) 把 (γ/2)∫|Z|² 从方程中"解放"出来，配指数鞅 H(t)=exp(3ε∫Z·dB − (9/2)ε²∫|Z|²) 与 Hölder，递推得到 E[exp(ε∫|Z|²)]<∞；再用 Young 不等式升到 |Z|^{1+δ}。
  3. *唯一性*：对两个解做 θ-差商 (δ_θU, δ_θV)，(H4) 给出 1_{δ_θU>0} 的二次漂移控制 (14)，再对 ψ(s,δ_θU⁺) 用 Itô–Tanaka 得 γδ_θU⁺ ≤ E[ψ(T,ξ⁺)|F_t]，令 θ→1 得 Y≤Y′，交换两解位置得反向。
- **最关键的一步（一句话）**：用严格二次条件把 Z 的二次变差指数矩（命题 2）证出来，作为唯一性证明中 δ_θU 的可积性前提。

## 阅读门槛

- 前置背景：BSDE 基本理论（Pardoux–Peng 1990 的适定性）；二次增长 BSDE（Kobylanski 2000 有界端值）；Briand–Hu 2006/2008 的无界端值存在性与凸生成元唯一性；Itô–Tanaka 公式与局部时；指数鞅（Doléans–Dade 指数）；Doob 不等式、Hölder/Young 不等式；停时与 class (D)。

## 与其他文献的关联

- **Pardoux–Peng(1990)**：非线性 BSDE 适定性之源（文中 [7]），本文问题在其框架之外（二次、无界端值）。
- **Kobylanski(2000)**：二次 BSDE 有界端值首研（文中 [6]），本文属其无界端值延伸。
- **Briand–Hu(2006)**：无界端值二次 BSDE 首个存在性结果（文中 [1]），命题 1 是其推广。
- **Briand–Hu(2008)**：凸生成元 + 无界端值的唯一性（文中 [2]），本文定理 5 直接推广它（见 Remark 6），且 θ-差商技术取自 [2]。
- **Delbaen–Hu–Richou(2011, 2015)**（[4][5]）：凸生成元唯一性及其临界情形，本文把凸性放宽为非凸。
- **Briand–Richou(2017, arXiv)**（[3]）、**Richou(2012)**（[8]）：此前处理非凸生成元但需对 ξ 加额外假设；本文不额外限制 ξ，改为对 g 加 (H4)+(H3)。

## 备注

- 提取质量：pdftotext 整体可读，公式基本线性化完整；但分式与上下标多处错乱，已标 [UNCERTAIN]。
- 缺失/可疑公式位置：命题 2 中 ε₀ 的表达式 "ε0 := 18 ∧ 12+6βT" 为分式排版残片（含 γ²、p₀γ 分子），需对照 PDF 页 230；命题 2 证明末尾 Young 不等式中含 1−δ、1+δ、2ε 的复杂分式幂亦残乱，未逐字复现；引言 (1) 式 Z_s·dB_s 的随机积分符号、H4 中 k（带下划线 k）与 δ 的排版需回原文核对。
- 文末 Example 9 给出两个非凸非 Lipschitz 具体生成元 g₁、g₂ 分别满足 (H1)–(H4) 与 (H1)(H2)(H3′)(H4′)，验证了条件的非空性与非凸性。
