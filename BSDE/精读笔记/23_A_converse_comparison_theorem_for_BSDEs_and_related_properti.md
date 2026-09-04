# A Converse Comparison Theorem for BSDEs and Related Properties of g-Expectation — 精读笔记（/paper.core L2）

- **数据来源**：原文全文（pdftotext 提取，公式部分线性化，乱码处标注 [UNCERTAIN]）
- **论文元信息**：Elect. Comm. in Probab. 5 (2000) 101–117；作者 Philippe Briand、François Coquet、Ying Hu、Jean Mémin（IRMAR, Univ. Rennes 1）、Shige Peng（Shandong University）；AMS 分类 60H10, 60H30；DOI/arXiv 未在文本中确认
- **一句话定位**：回答 Chen(1998) 等号情形"反比较定理"的自然推广——若对所有终端 ξ 两个 BSDE 的解在 t=0 满足 Y₀¹(ξ) ≤ Y₀²(ξ)，能否推出生成元 g₁ ≤ g₂；并研究 g-期望的相关性质（含 Jensen 不等式反例）。

## 符号速查

| 符号 | 含义 | 位置 |
| --- | --- | --- |
| g(t,y,z) | BSDE 生成元，Ω×[0,T]×R×R^d→R | §2.1 |
| (Y,Z) | BSDE(1) 的适应解，Y∈S², Z∈H² | §2.1 |
| E_g(ξ) | g-期望，定义为 Y₀ | §2.1 |
| E_g(ξ\|F_t) | 条件 g-期望，定义为 Y_t | §2.1 |
| (A1)–(A4) | Lipschitz、g(·,0,0)∈H²、g(t,y,0)=0、t↦g 连续 | §2.1 |
| (A5) | b:Rⁿ→Rⁿ, σ:Rⁿ→R^(n×d) Lipschitz，X^{t,x} 为 SDE(4) 之解 | §2.1 |
| β | 先验估计指数 β=2(K+K²) | Prop. 2.2 |
| εY^{t,x,y,p} | 短区间 BSDE(5) 的解 | Prop. 2.3 |
| u(t,x) | 半线性 PDE(8) 的粘性解 | §3.2 |
| α_t | 线性生成元 g=α_s·z 中的有界过程 | Cor. 4.6 |
| ∂F(x) | 凸函数 F 的次微分（区间 [F_g'(x), F_d'(x)]） | Prop. 5.2 |

## 核心结果

> **定理 2.1（Z. Chen, 逐字）**：Let the assumptions (A1), (A3) and (A4) hold for g₁ and g₂ and let us assume moreover that, for each ξ ∈ L²(F_T), E_{g1}(ξ) = E_{g2}(ξ). Then, P−a.s., ∀(t,y,z), g₁(t,y,z) = g₂(t,y,z).
>
> *通俗解释*：所有终端下的 g-期望都相等 ⟹ 两个生成元逐点几乎处处相等。

> **命题 2.3（逐字，生成元的局部表示）**：Let the assumptions (A1), (A2) and (A4) hold for the function g … Let us assume moreover that E[sup_{0≤t≤T}|g(t,0,0)|²] is finite. Then, for each (t,x,y,p) ∈ [0,T[×Rⁿ×R×Rⁿ, we have:
> L²−lim_{ε→0⁺} (1/ε)(εY_t^{t,x,y,p} − y) = g(t, y, σᵗ(x)p) + p·b(x).
>
> *通俗解释*：g-期望对"终端 = y+p·(X^{t,x}_{t+ε}−x)"做一阶展开，极限恰为生成元在 (y, σᵗ(x)p) 处之值加漂移项 p·b(x)。

> **定理 3.2（确定性情形的反比较，逐字）**：Let the assumptions (A1), (A3) and (A4) hold for g_i, i=1,2. Assume moreover that, ∀ξ ∈ L²(F_T), E_{g1}(ξ) ≤ E_{g2}(ξ). Then, we have, ∀t ∈ [0,T], ∀(y,z) ∈ R×R^d, g₁(t,y,z) ≤ g₂(t,y,z).
>
> *通俗解释*：生成元确定时，期望序 ⟹ 生成元逐点序；证法取 ξ_n=y+z·(W_{t+1/n}−W_t) 并取极限。

> **命题 3.3（PDE 应用，逐字）**：Assume (A6) holds for f₁ and f₂ and that b and σ satisfy (A5). If, for (x,y,p)∈Rⁿ×R×Rⁿ, there exists η>0 s.t. ∀ε<η, u₁(ε,x) ≤ u₂(ε,x), where u_i is the viscosity solution of the PDE (8) with semilinear part f_i and initial condition h(·)=y+p·(·−x), then f₁(x,y,σᵗ(x)p) ≤ f₂(x,y,σᵗ(x)p).
>
> *通俗解释*：两个半线性 PDE 的粘性解在初始值 y+p·(·−x) 下满足局部序 ⟹ 非线性项 f 满足逐点序。

> **定理 4.1（本文主定理：反比较定理，逐字）**：Let the assumptions (A1), (A3) and (A4) hold for g_i, i=1,2. Assume moreover that, ∀ξ ∈ L²(F_T), ∀t ∈ [0,T], Y_t¹(ξ) ≤ Y_t²(ξ), then, we have, P−a.s., ∀t ∈ [0,T], ∀(y,z) ∈ R×R^d, g₁(t,y,z) ≤ g₂(t,y,z).
>
> *通俗解释*：解过程逐时刻比较成立（对所有 ξ）⟹ 生成元逐点几乎处处比较成立。

> **定理 4.4（y 无关情形，逐字）**：Let us assume that (A1), (A3) and (A4) hold for g_i, i=1,2, and let us suppose that: ∀ξ ∈ L²(F_T), E_{g1}(ξ) ≤ E_{g2}(ξ), then, P−a.s., we have ∀s ∈ [0,T], ∀z ∈ R^d, g₁(s,z) ≤ g₂(s,z).
>
> *通俗解释*：生成元不依赖 y 时，只需 t=0 处的期望序即可推出生成元逐点序。

> **推论 4.6（逐字要点）**：Under the assumptions of Theorem 4.4, if moreover P−a.s., for each s, z↦g₁(s,z) is convex (resp. z↦g₂(s,z) is concave), then if ∀ξ, E_{g1}(ξ) ≤ E_{g2}(ξ), there exists a progressively measurable bounded process (α_t)_{t∈[0,T]} s.t. P−a.s., ∀s ∈ [0,T], ∀z ∈ R^d, g₁(s,z) = g₂(s,z) = α_s·z.
>
> *通俗解释*：一个凸一个凹且满足期望序 ⟹ 两生成元必相等且为线性（有界过程 α 与 z 内积）。

> **命题 5.2（Jensen 不等式成立条件，逐字要点）**：If P−a.s., ∂F(E_g(ξ|F_t)) ∩ ]0,1[^c ≠ ∅, then P−a.s. F(E_g(ξ|F_t)) ≤ E_g(F(ξ)|F_t).
>
> *通俗解释*：g 凸且不依赖 y 时，若凸函数 F 的次微分与区间 ]0,1[^c 相交，则 g-期望满足 Jensen 不等式。

## 证明骨架

- **武器库**：
  - Itô 公式 + Burkholder–Davis–Gundy 不等式（先验估计，Prop. 2.2）；
  - Lipschitz + Hölder 不等式控制余项 R_ε、Q_ε（Prop. 2.3）；
  - Lebesgue 控制收敛 + (A4) 连续性（Prop. 2.3 末段）；
  - 平移（shift）法 + 唯一性（Prop. 3.1）；
  - 经典比较定理 + 严格比较定理（[8, Thm 35.3]，Thm 4.4）；
  - Peng 的 Doob–Meyer 型非线性分解定理（[9]，Thm 4.1 的替代证明）；
  - 凸函数有上界则常值（Lemma 4.5）与凸函数引理（Lemma 5.1）；
  - 次微分/凸分析（Rockafellar [11]，Prop. 5.2）。

- **核心技巧**：把"期望序"转化为"生成元逐点序"的钥匙是命题 2.3 的一阶展开——取终端 ξ_n = y + z·(W_{t+1/n}−W_t)（或 y+p·(X^{t,x}_{t+ε}−x)），两端各乘 n 相减，令 n→∞，把 E_g(ξ) 的差收敛为 g 在 (t,y,z) 处的差，从而从期望层面的比较"降维"到点态比较。

- **关键一步**：Thm 4.4 由 t=0 的期望序升级到逐时刻 Y_t¹≤Y_t² 时，构造 η = E_{g2}(ξ|F_t) − E_{g1}(ξ|F_t)，用 Lemma 4.2（g-期望的平移性质）与严格比较定理把 η1_{η<0} 逼成 0，得到 η≥0 P−a.s.，再套用 Thm 4.1。

## 阅读门槛

- BSDE 基本理论：Pardoux–Peng 存在唯一性、S²×H² 空间、比较定理；
- 随机分析：Itô 公式、BDG 不等式、条件期望、停时/平移法；
- g-期望基础（Peng [8]）：单调性、E_g(c)=c、条件 g-期望定义；
- 半线性 PDE 的粘性解与非线性 Feynman–Kac 公式（§3.2）；
- 凸分析基础：凸函数性质、次微分（§5）。

## 与其他文献的关联

- **Z. Chen [1] (C. R. Acad. Sci. 1998)**：等号情形的反比较定理（Thm 2.1），本文是"≤"情形的推广，并多处沿用其"取特定 ξ 做展开"的思路。
- **S. Peng [7, 8, 9]**：比较定理（[7]，SIAM J. Control Optim. 1992）是本文"正向"方向；g-期望与条件 g-期望框架（[8]，1997）是全文基础语言；[9] 的 Doob–Meyer 型非线性分解定理给出 Thm 4.1 的替代证明。
- **El Karoui–Peng–Quenez [2] (Math. Finance 1997)**：先验估计、线性 BSDE 显式解（Girsanov 反例）与比较定理 2.2 的来源。
- **Pardoux–Peng [4, 5] (1990/1992)**：BSDE 存在唯一性与 PDE 粘性解联系（§3.2 的 Feynman–Kac 背景）。
- **Pradeilles [10] (Ann. Probab. 1998)**：§3.2 PDE 应用设置相近。
- 范胜君：**未在本文中确认**（文本无此引用）。

## 备注

- 提取质量：整体良好，定理/命题/引理/推论语句完整；个别数学符号线性化变形（如 σ 转置 σᵗ(x)p、次微分的区间记号 ]0,1[^c、Lemma 4.5 中凸性不等式），已按原意标注。
- 缺失公式位置：§2.1 空间 S²、H² 定义中的花括号/范数符号有 OCR 噪声（""残留）；Prop. 2.2 中先验估计不等式的系数与指数 β 已线性化；§5 反例中 BSDE 解 (−σ²t+σW_t, σ) 与 (σW_t/2−σ²T/2+σ²(T−t)/2, σ/2) 的写法为线性化，未逐符号核实上标/下标。
- 引理 4.2（Peng）第二条结论原文写为 E_g(ξ − E_g(ξ|F_t) | F_s) = 0，此处减号/嵌套位置为线性化转写。
