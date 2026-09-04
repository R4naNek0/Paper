# Convexity, Translation Invariance and Subadditivity for G-Expectations and Related Risk Measures — 精读笔记（/paper.core L2）

- **数据来源**：原文全文（pdftotext 提取，数学公式基本可读，个别上标/下标线性化）
- **论文元信息**：The Annals of Applied Probability, 2008, Vol. 18, No. 1, 245–258；作者 Long Jiang（中国矿业大学 / 复旦大学）；DOI: 10.1214/105051607000000294；arXiv:0801.3340v1 [math.PR]（2008-01-22）；AMS 分类 60H10（主）/60H30, 91B30（次）
- **一句话定位**：去掉 Briand–Coquet–Hu–Mémin–Peng(2000) 与 Rosazza Gianin(2006) 中额外的连续性假设 (A4)，在仅 (A1)+(A3) 下给出 g-期望的平移不变性 / 凸性 / 次可加性 / 正齐次性等价于生成元 g 对 y 无关且对 z 凸 / 次线性，从而刻画经 g-期望诱导的风险测度。

## 符号速查

| 符号 | 含义 | 位置 |
| --- | --- | --- |
| (Y_t(g,T,ξ), Z_t(g,T,ξ)) | 以 (g,T,ξ) 为参数的 BSDE 唯一解 | §1.2 |
| E_g[ξ] := Y_0(g,T,ξ) | g-期望 | Def 1.1 |
| E_g[ξ \mid F_t] := Y_t(g,T,ξ) | 条件 g-期望 | Def 1.2 |
| (A1) | Lipschitz：\|g(t,y1,z1)−g(t,y2,z2)\| ≤ K(\|y1−y2\|+\|z1−z2\|) | §1.2 |
| (A2) | (g(t,0,0)) ∈ H²_F(0,T;R) | §1.2 |
| (A3) | dP×dt-a.s.，∀y，g(·,y,0)≡0 | §1.2 |
| (A4) | P-a.s.，∀y,z，t ↦ g(t,y,z) 连续（本文要消去的附加假设） | §1.2 |
| H²_F(0,T;Rⁿ), S²_F(0,T;R) | 平方可积适应过程空间 / 连续且 sup 平方可积空间 | §1.2 |
| L^p − lim | L^p 意义下的极限 | §2 |
| S^{y,z}(g) / S^z(g) | 表示引理对给定 (y,z) / z 成立的时间集 | §3 开头 |
| ρ_g(ξ) := E_g[−ξ]；ρ^g_t(ξ) := E_g[−ξ \mid F_t] | 静态 / 动态风险测度 | (1.2) |

## 核心结果

> **Lemma 2.1（Representation lemma，逐字原文）**：Let (A1) and (A2) hold for g. Let 1 ≤ p < 2. Then for each (y, z) ∈ R × R^d, the equality g(t, y, z) = L^p − lim_{ε→0+} [1/ε](Y_t(g, t+ε, y + z·(B_{t+ε} − B_t)) − y) holds for almost every t ∈ [0, T[.
>
> *通俗解释*：只靠 Lipschitz 与平方可积，用解 Y 的差商即可局部恢复生成元 g。*

> **Proposition 2.2（逐字原文）**：Let q > 1; let 1 ≤ p < q. Set H^q_F(0,T;R) := {ψ ∈ M_F(R); E[∫₀^T |ψ_t|^q dt] < ∞}. Then for any ψ ∈ H^q_F(0,T;R), we have ψ_t = L^p − lim_{ε→0+} (1/ε)∫_t^{t+ε} ψ_s ds a.e. t ∈ [0,T[.
>
> *通俗解释*：适应过程的时间均值在 L^p 下几乎处处收敛回自身。*

> **Theorem 3.1（Translation invariance for g-expectation，逐字原文）**：Let (A1) and (A3) hold for g. Then the following three statements are equivalent: (i) E_g[ξ + c] = E_g[ξ] + c, ∀ξ ∈ L²(F_T), c ∈ R. (ii) For ∀ξ ∈ L²(F_T), c ∈ R, ∀t ∈ [0,T], E_g[ξ + c|F_t] = E_g[ξ|F_t] + c, P-a.s. (iii) g is independent of y.
>
> *通俗解释*：静态平移不变 ⇔ 动态平移不变 ⇔ 生成元不含 y。*

> **Theorem 3.2（Convexity for g-expectation，逐字原文）**：Let (A1) and (A3) hold for g. Then the following three statements are equivalent: (i) E_g[·] is convex. (ii) For any t ∈ [0,T], E_g[·|F_t] is convex, that is, ∀ξ, η ∈ L²(F_T), α ∈ [0,1], E_g[αξ + (1−α)η|F_t] ≤ αE_g[ξ|F_t] + (1−α)E_g[η|F_t], P-a.s. (iii) g is independent of y and g is convex with respect to z, that is, for any z1, z2 ∈ R^d, α ∈ [0,1], g(t, αz1 + (1−α)z2) ≤ αg(t, z1) + (1−α)g(t, z2), dP×dt-a.s.
>
> *通俗解释*：g-期望（静态/动态）凸 ⇔ g 与 y 无关且对 z 凸。*

> **Theorem 3.3（Subadditivity for g-expectation，逐字原文）**：Let (A1) and (A3) hold for g. Then the following three statements are equivalent: (i) E_g[·] is subadditive. (ii) For any t ∈ [0,T], E_g[·|F_t] is subadditive, that is, ∀ξ, η ∈ L²(F_T), E_g[ξ + η|F_t] ≤ E_g[ξ|F_t] + E_g[η|F_t], P-a.s. (iii) g is independent of y and g is subadditive with respect to z, that is, for any z1, z2 ∈ R^d, g(t, z1 + z2) ≤ g(t, z2) + g(t, z2), dP×dt-a.s.（原文此处右端印作两个 z2，应为 g(t,z1)+g(t,z2) 之误）
>
> *通俗解释*：g-期望次可加 ⇔ g 与 y 无关且对 z 次可加。*

> **Theorem 3.4（Positive homogeneity for g-expectation，逐字原文）**：Let (A1) and (A3) hold for g. Then the following three statements are equivalent: (i) E_g[·] is positively homogeneous. (ii) For any t ∈ [0,T], E_g[·|F_t] is positively homogeneous, that is, ∀ξ ∈ L²(F_T), α ≥ 0, E_g[αξ|F_t] = αE_g[ξ|F_t], P-a.s. (iii) g is positively homogeneous with respect to (y, z), that is, for any (y, z) ∈ R × R^d, α ≥ 0, g(t, αy, αz) = αg(t, y, z), dP×dt-a.s.
>
> *通俗解释*：g-期望正齐次 ⇔ g 对 (y,z) 正齐次。*

> **Theorem 4.1（逐字原文）**：Let (A1) and (A3) hold for g. Let the set G of risks be L²(F_T). Let ρ_g and (ρ^g_t)*{t∈[0,T]} be defined as in equality (1.2). Then the following statements are equivalent: (i) ρ_g is a convex measure of risk. (ii) (ρ^g_t)*{t∈[0,T]} is a dynamic convex measure of risk. (iii) E_g is convex. (iv) g is independent of y and is convex with respect to z.
>
> *通俗解释*：静态凸风险 ⇔ 动态凸风险 ⇔ 期望凸 ⇔ g 与 y 无关且对 z 凸。*

> **Theorem 4.2（逐字原文）**：Let g, G, ρ_g and (ρ^g_t)*{t∈[0,T]} be as in Theorem 4.1. Then the following statements are equivalent: (i) ρ_g is a coherent measure of risk. (ii) (ρ^g_t)*{t∈[0,T]} is a dynamic coherent measure of risk. (iii) E_g is sublinear, that is, E_g is positively homogeneous and subadditive. (iv) g is independent of y and is sublinear with respect to z.
>
> *通俗解释*：静态一致风险 ⇔ 动态一致风险 ⇔ 期望次线性 ⇔ g 对 z 次线性。*

## 证明骨架

- **武器库**：
  - 表示引理（Lemma 2.1，经 Proposition 2.2 的 L^p-平均收敛 + 引文 [15] 的等价刻画 Proposition 2.1 合成）；
  - Lebesgue 微分 / 平均收敛引理（引 [12] Lemma 18.4）+ Hölder 不等式 + Fubini 定理（证一致可积，Proposition 2.2）；
  - 比较定理（Theorem 3.2 的 (iii)⇒(ii)，类比 El Karoui–Peng–Quenez [8] Proposition 3.5 的凹 BSDE 论证）；
  - g-期望基本性质 Lemma 1.1（单调性、常数平移、y-无关时的加法平移）；
  - 生成元唯一性：由静态期望相等 E_{g̃}[ξ]=E_g[ξ] 推出条件期望逐点相等，再经表示引理 + Lipschitz 得到生成元重合（引 [13] Proposition 3.4）。
- **核心技巧**：Theorem 3.2 最关键一步是"凸性先推平移不变性"——对 αξ+(1−α)c 取 α=(1−1/n)、n→∞ 用连续性得 E_g[ξ+c]≤E_g[ξ]+c，再反向代入得等号，从而把凸性问题化归到 Theorem 3.1（g 与 y 无关），随后用反证法（构造 F_t-可测事件 A，借助 E_g[1_A X|F_t]=1_A E_g[X|F_t]）把静态凸性传递到动态凸性 (3.12)，最后经表示引理在时间集 S^{z}(g) 上点态读出 g 对 z 的凸性 (3.16)。

## 阅读门槛

- 前置背景清单：BSDE 的存在唯一性与比较定理（Pardoux–Peng 1990）；g-期望基本定义与性质（Peng 1997）；随机过程的 L^p-局部平均 / Lebesgue 微分定理；凸 / 一致风险测度的公理（Artzner et al. 1999；Föllmer–Schied 2002）；动态风险测度定义（Rosazza Gianin 2006）。

## 与其他文献的关联

- 仅依据文中引用：
  - 直接推广 **Briand–Coquet–Hu–Mémin–Peng(2000)**（引 [3]）Proposition 2.3 及 Lemmas 4.2–4.3：其等价结论需额外连续性假设 (A4) 且用条件 g-期望刻画，本文 Lemma 2.1 在 (A1)+(A2) 下推广该表示，Theorem 3.1 在 (A1)+(A3) 下达到同样等价。
  - 直接推广 **Rosazza Gianin(2006)**（引 [21]）Propositions 8–11：本文在去掉 (A4) 下复现 Theorems 3.2–3.4 与 4.1–4.2 的等价刻画。
  - 方法承继：**Jiang(2005)**（引 [15]）Theorem 3.3（表示定理的等价刻画）与 **Jiang(2004)**（引 [13]）Proposition 3.4（生成元唯一性）为关键工具；比较定理步骤类比 **El Karoui–Peng–Quenez(1997)**（引 [8]）的凹 BSDE 命题；风险测度框架取自 **Artzner et al.(1999)**、**Föllmer–Schied(2002)**、**Peng(2004)** 等。
  - 未在文中出现的其他关联不列入。

## 备注

- 提取质量：pdftotext 整体干净，数学公式线性化可读（如 L^p − lim、dP×dt-a.s. 均清晰）；个别下标/上标丢失（H²_F、S²_F、∫ 积分上下限部分塌缩），无影响理解的重大乱码。
- 缺失/疑点公式位置：① Theorem 3.3 右端原文印作 "g(t, z1 + z2) ≤ g(t, z2) + g(t, z2)"，应为 g(t,z1)+g(t,z2)，已按原文标注；② Proposition 2.2 证明中 Hölder 推导块（约原文 lines 321–360）部分被截断成竖排零散符号，具体不等式链标 [UNCERTAIN: pdftotext 将 (q−p)/q 次幂与积分符号排版混乱]，但结论 (2.5) 一致可积性成立、不影响主定理；③ Definition 4.2 中 "ρ(λX + (1−λ)Y) ≤ λρ(Y X) + (1−λ)ρ(Y)" 的 "ρ(Y X)" 疑为 "ρ(X)" 之 OCR/原刊笔误。
