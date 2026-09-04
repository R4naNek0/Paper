# Quadratic BSDEs with convex generators and unbounded terminal conditions — 精读笔记（/paper.core L2）

- **数据来源**：原文全文（pdftotext 提取，公式有乱码，已标 [UNCERTAIN]）
- **论文元信息**：Probab. Theory Relat. Fields (2008) 141:543–567；DOI 10.1007/s00440-007-0093-y；作者 Philippe Briand · Ying Hu（IRMAR, Université Rennes 1）；2007-03-15 投稿，2007-06-27 修订，2007-08-01 在线；MSC (2000) 60H10
- **一句话定位**：为"生成元关于 z 二次增长 + 终端条件无界"的 BSDE 填补唯一性空缺，方法是假设生成元关于 z 凸（或凹），从而得到比较定理、稳定性与非线性 Feynman–Kac 公式。

## 符号速查

| 符号 | 含义 | 位置 |
| --- | --- | --- |
| (Y,Z) | BSDE(ξ,f) 的解（Y 实值，Z 取值 R^d） | 引言 |
| f, ξ | 生成元、终端条件；BSDE(ξ,f) 记方程 | 引言 |
| S^p, M^p | 范数 ‖Y‖_{S^p}=E[sup \lvert Y_t \rvert ^p]^{1/p}；‖Z‖_{M^p}=E[(∫ \lvert Z_s \rvert ^2ds)^{p/2}]^{1/p} | 引言 |
| S, M | ∪_{p>1}S^p、∪_{p>1}M^p | 引言 |
| E；类 (D) | Y^*=sup \lvert Y_t \rvert 各阶指数矩有限；{Y_τ} 一致可积 | 引言 |
| α(t), β, γ, ϕ | 生成元控制参数（见 A.1） | §2 |
| h(t,x)=α(t)+βx；ψ,U | 先验估计的 PDE 解；U=e^{γψ} | §2 |
| δf, δξ | δf(t)=[f−f′](t,Y′_t,Z′_t)，δξ=ξ−ξ′ | §3 定理5 |
| L | 扩散 X 的无穷小生成元 | §5 |

## 核心结果

> **Proposition 3（逐字原文）**：Let (A.1) hold. If |ξ| + |α|_1 has an exponential moment of order γ e^{βT}, then the BSDE (1) has a solution (Y,Z) such that
> ∀t ∈ [0,T], |Y_t| ≤ (1/γ) log E[exp(γ e^{β(T−t)} |ξ| + γ ∫_t^T α(r) e^{β(r−t)} dr) | F_t].
>
> _通俗解释_：ξ 与 ∫α 有 γe^{βT} 阶指数矩即保证存在解，并给出逐点指数先验界。

> **Theorem 5（Comparison theorem，逐字原文）**：Let (Y,Z) be a solution to (1) and (Y′,Z′) be a solution to the BSDE associated to the terminal condition ξ′ and to the generator f′ such that both Y and Y′ belongs to E, namely, ∀λ > 0, E[e^{λY*} + e^{λY′*}] < +∞. We assume that, P-a.s., ξ ≤ ξ′, ∀(t,y,z) ∈ [0,T]×R×R^d, f(t,y,z) ≤ f′(t,y,z). If f verifies (A.2), then P-a.s., for each t ∈ [0,T], Y_t ≤ Y′_t. If moreover, Y_0 = Y′_0, then
> P(ξ′ − ξ = 0, ∫_0^T [f′ − f](t, Y′_t, Z′_t) dt = 0) > 0.
>
> _通俗解释_：生成元对 z 凸时，解在 E 类内可比较，且严格比较"命中即正概率"。

> **Corollary 6（逐字原文）**：Let the assumption (A.2) hold and let us assume moreover that the random variables |ξ| and |α|_1 have exponential moments of all order. Then the BSDE (1) has a unique solution (Y,Z) such that Y belongs to E and Z belongs to M^p for each p ≥ 1.
>
> _通俗解释_：凸生成元 + 各阶指数矩 ⇒ 解的存在唯一性。

> **Proposition 7（稳定性，逐字原文摘要）**：若 ξ_n→ξ P-a.s. 且 f_n→f m⊗P-a.e.（对每个 (y,z)），则在 (13) 的可积性条件下，对每个 p ≥ 1，
> E[exp( sup_{0≤t≤T}|Y^n_t−Y_t| )^p + (∫_0^T |Z^n_s−Z_s|^2 ds)^{p/2}] → 0.
>
> _通俗解释_：终端与生成元收敛时，解在指数-范数意义下收敛。

> **Proposition 8（逐字原文）**：Let the assumptions (A.3) and (A.4) hold. The function u defined by (19) is continuous on [0,T]×R^n and satisfies ∀(t,x), |u(t,x)| ≤ C(1+|x|^p). Moreover u is a viscosity solution to (17).
>
> _通俗解释_：u(t,x)=Y^{t,x}_t 是二次 PDE 的粘性解（非线性 Feynman–Kac）。

（另有关键工具性结果：Proposition 1 先验估计、Lemma 2 (Kobylanski) 有界情形的极小/极大解与单调稳定性。）

## 证明骨架

- **武器库**：Itô–Tanaka 公式（含局部时间 L）、特征线法解一阶线性 PDE 得 ψ、指数变换 U=e^{γψ}、局部化停时 τ_k/σ_n、Doob 极大不等式、BDG 不等式、Fatou 引理、比较定理、粘性解定义（sub/supersolution 检验）。
- **核心技巧**：不估计差 Y−Y′，而是对每个 θ∈(0,1) 估计 U_t=Y_t−θY′_t，利用 f 关于 z 的凸性把 f(t,Y′_t,Z_t) 拆成 θ 项与 (1−θ) 二次项；再作指数变换 P_t=e^{c e^{A_t} U_t}（c=γe^{βT}/(1−θ)）消掉二次 |V|^2 项，最后令 θ→1 得到 Y≤Y′。（稳定性 Proposition 7 重复同一技巧双向估计 |Y^n−Y|。）

## 阅读门槛

- 前置背景：BSDE 基本理论（Pardoux–Peng 的存在唯一性、比较定理）、Itô 随机积分与 Itô 公式、BMO-鞅、停时/局部化、Doob 与 BDG 不等式、指数矩与类 (D)、粘性解初步、SDE 与 Markov 性。

## 与其他文献的关联

- 继承 **Pardoux–Peng [1990](14)**：Lipschitz 情形的开创性存在唯一性；本文属"放松生成元假设"脉络。
- 继承 **Kobylanski [2000](10)**：二次增长生成元但**终端有界**下的存在/唯一/比较/稳定性（本文 Lemma 2 直接引用其有界情形结果）。
- 直接填补 **Briand–Hu [2006](4)** 的空白：那里证明无界终端二次 BSDE 的存在性（指数矩充分），但唯一性未解决；本文以 z-凸性补上比较定理与唯一性。
- 稳定性"in the spirit of" **El Karoui–Peng–Quenez [1997](7)** 的先验估计。
- z-凸性假设与 u−θu′ 技巧借鉴 **Da Lio–Ley [2006](6)**（Bellman–Isaacs 二次 PDE 唯一性）；凸生成元在随机控制中自然出现，见 **Fuhrman–Hu–Tessitore [2006](8)**。

## 备注

- 提取质量：pdftotext 丢失积分号（∫ 显示为""或"T"）、希腊字母（Ω→""）、撇号（′→""）、绝对值/范数（|·|→""、‖·‖→""）、映射箭头（↦→"−→"）等。§2 中 Itô 公式的显式微分恒等式（dU/... 与 (3)）及 Proposition 1 的 U、ψ 定义处公式受损最重，本文按上下文线性化重建并标注 [UNCERTAIN]。
- 缺失/受损公式位置：式 (2)(3)、Proposition 1 中的 ψ(t,x)=xe^{β(t−s)}+∫α(r)e^{β(r−s)}dr 及 U=e^{γψ}；式 (4)(5)(6)(12) 相对完整。
- 未在文本中确认：arXiv 编号（正文无 arXiv 号）。
