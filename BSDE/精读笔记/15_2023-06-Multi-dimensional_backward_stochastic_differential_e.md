# Multi-dimensional backward stochastic differential equations of diagonally quadratic generators: The general result — 精读笔记（/paper.core L2）

- **数据来源**：原文全文（pdftotext 提取，4385 行）
- **论文元信息**：
  - 期刊：Journal of Differential Equations, 368 (2023) 105–140
  - 作者：Shengjun Fan（中国矿业大学）、Ying Hu（Univ. Rennes）、Shanjian Tang（复旦大学）
  - DOI：10.1016/j.jde.2023.05.041；收稿 2020-07-08，录用 2023-05-24；MSC 60H10
- **一句话定位**：放松 Hu–Tang [15] 对生成元与终端的假设，给出"对角二次"生成元多维 BSDE 在**有界终端**（局部解 + 两个全局解）与**无界终端**（指数矩任意阶）下的可解性一般理论，回应 Peng [25] 提出的多维二次 BSDE 无界终端公开问题。

## 符号速查

| 符号 | 含义 | 位置 |
| --- | --- | --- |
| $Y_t, Z_t$ | 解过程，取值 $\mathbb{R}^n \times \mathbb{R}^{n\times d}$ | (1.1) |
| $\xi$ | 终端值，$F_T$-可测 $n$ 维随机向量 | (1.1) |
| $g(\omega,t,y,z)$ | 生成元，$(F_t)$-循序可测 | (1.1) |
| $y^i, z_i, g^i$ | $y$ 的第 $i$ 分量、$z$ 的第 $i$ 行、$g$ 的第 $i$ 分量 | §2.1 |
| $S^p, S^\infty, H^p, \mathrm{BMO}$ | 解空间（连续可料 / 本质有界 / $p$ 次可积 / 有界平均振动） | §2.1 |
| $E(\mathbb{R}^n), M(\mathbb{R}^{n\times d})$ | $\exp( \lvert Y \rvert )\in \cap_p S^p$；$Z\in\cap_p H^p$ | §2.1 |
| $\alpha_t$ | 非负循序可测过程（生成元"截距"） | §2.2 |
| $\varphi(\cdot)$ | 非降连续函数，$\varphi(0)=0$（$y$ 方向的增长/连续性模） | §2.2 |
| $\beta,\ \bar\gamma\le\gamma,\ \lambda,\ \delta\in[0,1)$ | 实常数（线性、二次、次二次系数） | §2.2 |
| $C_1, C_2$ | $\|\xi\|_\infty,\ \|\int_0^T\alpha_t dt\|_\infty$ 的界 | (H3) |

## 核心结果

> **定理 2.1（逐字原文）**：Theorem 2.1. Let assumptions (H1)-(H3) hold. Then, there exist a real $\varepsilon > 0$ (depending only on constants $(n, \gamma, \lambda, \delta, C_1, C_2)$ and function $\varphi(\cdot)$) and a bounded subset $B_\varepsilon$ of the product space $S_{[T-\varepsilon,T]}^\infty(\mathbb{R}^n) \times \mathrm{BMO}_{[T-\varepsilon,T]}(\mathbb{R}^{n\times d})$ such that BSDE (1.1) has a unique local solution $(Y,Z)$ on the time interval $[T-\varepsilon, T]$ with $(Y,Z)\in B_\varepsilon$.
>
> *通俗解释*：有界终端下，对角二次生成元存在唯一局部解（临近终端的小区间）。

其中假设 (H1)–(H3)（逐字、公式线性化）：

- **(H1)**：$|g^i(\omega,t,y,z)| \le \alpha_t(\omega) + \varphi(|y|) + \frac{\gamma}{2}|z_i|^2 + \lambda\sum_{j\ne i}|z_j|^{1+\delta}$；
- **(H2)**：$|g^i(\omega,t,y,z) - g^i(\omega,t,y,\bar z)| \le \varphi(|y|\vee|\bar y|)[(1+|z|+|\bar z|)|y-\bar y| + |z_i-\bar z_i| + (1+|z|^\delta+|\bar z|^\delta)\sum_{j\ne i}|z_j-\bar z_j|]$ [UNCERTAIN: 原文中 $|y-\bar y|$ 项与 $z$ 相关项的归属及求和下标排版混乱]；
- **(H3)**：$\|\xi\|_\infty\le C_1$ 且 $\|\int_0^T \alpha_t dt\|_\infty \le C_2$。

> **定理 2.4（逐字原文）**：Theorem 2.4. Let assumptions (H1)-(H4) be satisfied. If the constant $\lambda$ in (H4) vanishes, then BSDE (1.1) admits a unique global solution $(Y,Z)\in S^\infty(\mathbb{R}^n)\times \mathrm{BMO}(\mathbb{R}^{n\times d})$ on $[0,T]$.
>
> *通俗解释*：加"单边线性"条件且 $\lambda=0$ 时，有界终端有唯一全局解。

> **定理 2.5（逐字原文）**：Theorem 2.5. Let assumptions (H1)-(H5) hold. Then BSDE (1.1) admits a unique global solution $(Y,Z)\in S^\infty(\mathbb{R}^n)\times \mathrm{BMO}(\mathbb{R}^{n\times d})$ on $[0,T]$.
>
> *通俗解释*：加"严格对角二次"条件 (H5) 时，有界终端有唯一全局解。

其中：

- **(H4)**（逐字）：$sgn(y^i)\,g^i(\omega,t,y,z) \le \alpha_t(\omega) + \beta|y| + \lambda|z|^{1+\delta} + \frac{\gamma}{2}|z_i|^2$；
- **(H5)**（逐字，二选一）：$g^i(\omega,t,y,z) \ge \frac{\bar\gamma}{2}|z_i|^2 - \alpha_t(\omega) - \beta|y| - \lambda|z|^{1+\delta}$ **或** $g^i(\omega,t,y,z) \le -\frac{\bar\gamma}{2}|z_i|^2 + \alpha_t(\omega) + \beta|y| + \lambda|z|^{1+\delta}$。

> **定理 2.8（逐字原文）**：Theorem 2.8. Let assumptions (B1)-(B4) be in force. Then BSDE (1.1) admits a unique global solution $(Y,Z)\in E(\mathbb{R}^n)\times M(\mathbb{R}^{n\times d})$ on $[0,T]$.
>
> *通俗解释*：无界终端（指数矩任意阶）下，凸/凹对角二次生成元有唯一全局解——本文自述为首个此类一般可解性结果。

其中 (B1)–(B4)（逐字、线性化）：

- **(B1)**：$g^i$ 仅依赖 $z$ 的第 $i$ 行 $z_i$，且 $|g^i(\omega,t,y,z)| \le \alpha_t(\omega) + \beta|y| + \frac{\gamma}{2}|z|^2$；
- **(B2)**：$g$ 对 $y$ 一致 Lipschitz：$|g(\omega,t,y,z)-g(\omega,t,\bar y,z)| \le \beta|y-\bar y|$；
- **(B3)**：对每个 $i,y$，$g^i(\omega,t,y,\cdot)$ 关于 $z$ 是凸的或凹的；
- **(B4)**：$\forall p\ge 1,\ E[\exp(p(|\xi|+\int_0^T \alpha_t dt))] < +\infty$。

## 证明骨架

- **武器库**：标量二次 BSDE 的一致先验估计（附录 Lemma A.1/A.2，源自 Hu–Tang [15, Lemma 2.1] 的推广）；压缩映射/不动点论证构造局部解；局部解**拼接（stitching）**得全局解（追随 Cheridito–Nam [7, Theorem 4.1]）；BMO 鞅理论（Kazamaki [18]）、BMO 鞅能量不等式与 Girsanov 变换；Briand–Hu [6] 的 Corollary 6/Theorem 2（无界终端标量二次 BSDE）；迭代算法 + 一致先验估计 + **θ-方法**（凸函数）+ Doob 极大不等式 + Hölder/Jensen 不等式（处理无界终端）。
- **核心技巧**：无界终端情形最关键一步——用迭代 (5.2) 定义解序列，证明其为 $S^q\times H^q$（$\forall q\ge1$）Cauchy 列；对凸/凹生成元引入 θ-方法（对 $m,p,\theta$ 构造 $\delta_\theta Y^{(m,p)}:=\frac{Y^{(m+p)}-\theta Y^{(m)}}{1-\theta}$ 等），把凸性转化为递推不等式，从而同时得到存在性与唯一性（凸分量直接处理、凹分量通过 $(y^i,z_i)\mapsto(-y^i,-z_i)$ 化为凸）。

## 阅读门槛

- BSDE 基础：Pardoux–Peng (1990) Lipschitz 存在唯一性、解空间 $S^p\times H^p$；
- 二次增长 BSDE：Kobylanski 标量情形、有界/无界终端两类理论；
- BMO 鞅与 Girsanov 变换、条件期望（$\exp(\gamma|Y_t|)\le E_t[\cdots]$ 型估计）；
- 凸函数 θ-方法、Doob 极大不等式、Hölder/Jensen 不等式等随机分析基本功。

## 与其他文献的关联（仅依文内引用）

- **直接继承 Hu–Tang [15]**：本文是其"续篇与推广"；放松 [15, Theorem 2.2, p.1072] 对生成元关于 $y$ 的增长与连续性假设；通过 (H5) 严格二次条件**消除了** [15] 中"$g^i$ 关于 $z_j\,(j\ne i)$ 有界"的限制。
- **Cheridito–Nam [7]**：局部解拼接、[7, Theorem 4.1] 的证明思路被用于推出定理 2.4/2.5。
- **Briand–Hu [6]**：无界终端标量二次 BSDE 的 Corollary 6、Theorem 2 被直接引用作迭代基础。
- **Fan 及其合作者 [11]**：附录 Lemma A.3/A.4 由 Fan et al. [11, Proposition 2] 派生。
- **脉络定位**：Pardoux–Peng [24]（Lipschitz 多维）→ Kobylanski [19]（标量二次）→ Tevzadze [26]（小终端、BMO+压缩映射）→ Frei–Dos Reis [13]（多维二次无全局有界解的反例）→ Peng [25, Section 5, p.270]（多维二次无界终端列为公开问题）→ 本文给出首个一般可解性答案。

## 备注

- 提取质量：pdftotext 对公式、范数符号（$\|\cdot\|_\infty$、$\|\cdot\|_{S^p}$ 等）、求和号 $\sum_{j\ne i}$、期望/条件期望、积分上限等大量乱码或丢失；(H2) 与 (H4)/(H5) 的不等式右端、Lemma A.1 的 (A.2) 先验估计式、以及 (5.3)–(5.4) 的指数矩常数 $K(q), A(q)$ 等关键公式需对照原 PDF 核验。
- 定理陈述均已按文本逐字引用，乱码/排版不清处以 [UNCERTAIN] 标注，未编造公式。
- 主要缺失公式位置：§2.1 空间范数定义（第 180–190 行附近）、(H1)/(H2) 求和项、(H4)/(H5)、附录 (A.1)–(A.2)、(5.3)–(5.4) 递推常数。
