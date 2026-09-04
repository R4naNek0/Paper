# Existence, Uniqueness and Approximation for Lp Solutions of Reflected BSDEs with Generators of One-sided Osgood Type — 精读笔记（/paper.core L2）

- **数据来源**：原文全文（pdftotext 提取）
- **论文元信息**：Acta Mathematica Sinica, English Series, 2017, Vol. 33, No. 6, pp. 807–838；DOI: 10.1007/s10114-016-6281-x（2016-12-30 在线发表）；作者 Sheng Jun FAN（范胜君），中国矿业大学数学学院；MR(2010) 60H10。
- **一句话定位**：在生成元满足单边 Osgood 条件（y）+ 一般增长 + 关于 z 一致连续或线性增长、数据仅 L^p (p>1) 的弱条件下，证明反射 BSDE（RBSDE）L^p 解的存在唯一性与惩罚/近似逼近，并给出障碍增长的必要充分条件；统一并改进 Pardoux–Peng 以来一维情形下的一系列结果。

## 符号速查

| 符号 | 含义 | 位置 |
| --- | --- | --- |
| RBSDE (ξ, g+dV, L) | 反射 BSDE：Y_t = ξ + ∫_t^T g(s,Y_s,Z_s)ds + ∫_t^T dV_s + ∫_t^T dK_s − ∫_t^T Z_s dB_s，Y_t ≥ L_t，K 连续增、K_0=0、∫(Y_t−L_t)dK_t=0 | (1.1) |
| S^p, M^p, V^{+,p} | 解的所属空间：连续过程 sup 的 L^p 范数 / Z 的 L^p 范数 / 增过程有限变差 L^p | §2 |
| (H1) | 单边 Osgood 条件：∃ 凹函数 ρ(0)=0, ρ(u)>0 (u>0), ∫_{0+} du/ρ(u)=+∞，使 (g(y1,z)−g(y2,z))sgn(y1−y2) ≤ ρ( \lvert y1−y2 \rvert ) | §2 |
| (H2) | z 一致连续： \lvert g(y,z1)−g(y,z2) \rvert ≤ φ( \lvert z1−z2 \rvert )，φ 连续、φ(0)=0 | §2 |
| (H2w) | z 线性增长： \lvert g(y,z)−g(y,0) \rvert ≤ f_t + μ \lvert y \rvert + λ \lvert z \rvert | §2 |
| (H3) | y 一般增长：ϕ_·(r)=sup_{ \lvert y \rvert ≤r} \lvert g(·,y,0)−g(·,0,0) \rvert ∈ H，且 g(·,0,0)∈H^p | §2 |
| (H4w)/(H4s) | g(·,·,z) 关于 y 连续 / 更强连续性 | §2 |
| (H5) | ξ∈L^p(F_T)，L·∈S，L_T≤ξ | §2 |
| (H6) | ∃ 半鞅 X∈M^p+V^p，X_t≥L_t 且 g(·,X·,0)∈H^p（障碍增长的必要充分条件，修正 Klimsiak [24] 的错误条件） | §2 |
| (HH) | \lvert g(y,z) \rvert ≤ f_t + ψ_t(ω, \lvert y \rvert ) + λ \lvert z \rvert ，ψ·(r)∈S | §2 |
| (A) | g(y,z)sgn(y) ≤ f̄_t + μ̄ \lvert y \rvert + λ̄ \lvert z \rvert | §2 |

## 核心结果

> **定理 5.2（BSDE，逐字原文）**：Let p > 1, V· ∈ V^p and let g satisfy (H1), (H2), (H3) and (H4w). Then for each ξ ∈ L^p(F_T), BSDE (ξ, g + dV) admits a unique solution in S^p × M^p.
>
> *通俗解释*：单边 Osgood + z 一致连续 + 一般增长的生成元，非反射 BSDE 的 L^p 解存在且唯一。

> **定理 5.3（BSDE，逐字原文）**：Let p > 1, V· ∈ V^p and let g satisfy (H1), (HH) and (H4s). Then for each ξ ∈ L^p(F_T), BSDE (ξ, g + dV) admits a maximal (resp. minimal) solution (Y·, Z·) in S^p × M^p, i.e., if (Y·, Z·) is also a solution … then dP-a.s., Y_t ≥ Y_t (resp. Y_t ≤ Y_t) for each t ∈ [0, T].
>
> *通俗解释*：把 z 的一致连续弱化为线性增长后，仍有最大/最小解（非唯一）。

> **定理 5.6（必要条件，逐字原文）**：Assume that p > 1, V· ∈ V^p, the generator g satisfies (H1) and (H2w) with g(·, 0, 0) ∈ H^p, and that (H5) holds for ξ and L·. If RBSDE (1.1) admits a solution (Y·, Z·, K·) ∈ S^p × M^p × V^{+,p}, then g(·, Y·, 0) ∈ H^p. So (H6) holds.
>
> *通俗解释*：(H6) 是 L^p 解存在的必要障碍增长条件，纠正 Klimsiak 的条件不足。

> **定理 5.8（RBSDE 存在唯一 + 惩罚逼近，逐字原文）**：Let p > 1, V· ∈ V^p and let g satisfy (H1), (H2), (H3) and (H4w). Assume that (H5) and (H6) hold for ξ, L· and some X·. For each n ≥ 1, let (Y^n·, Z^n·) ∈ S^p × M^p be the unique solution of the penalization equation (4.1) with (4.2) (recall Theorem 5.2). Then, there exists a triple (Y·, Z·, K·) ∈ S^p × M^p × V^{+,p} such that lim_{n→∞} (‖Y^n· − Y·‖*{S^p} + ‖Z^n· − Z·‖*{M^p} + ‖K^n· − K·‖_{S^p}) = 0. And, (Y·, Z·, K·) is the unique solution of RBSDE (ξ, g + dV, L) in S^p × M^p × V^{+,p}.
>
> *通俗解释*：满足 (H6) 时，惩罚方程唯一解收敛到 RBSDE 的唯一 L^p 解。

> **定理 5.11（RBSDE 存在 + 惩罚逼近，逐字原文）**：Let p > 1, V· ∈ V^p and let g satisfy (H1), (H2w), (H3) and (H4s). Assume that (H5) and (H6) hold for some ξ, L· and X·. For each n ≥ 1, let (Y^n·, Z^n·) ∈ S^p × M^p be the maximal (resp. minimal) solution of the penalization BSDE (4.1) with (4.2) (recall Corollary 5.4). Then, there exists a solution (Y·, Z·, K·) ∈ S^p × M^p × V^{+,p} of RBSDE (ξ, g + dV, L) such that lim_{n→∞} (‖Y^n· − Y·‖*{S^p} + ‖Z^n· − Z·‖*{M^p}) = 0, and there exists a subsequence {K^{n_j}·} of {K^n·} such that dP-a.s., lim_{j→∞} sup_{t∈[0,T]} |K^{n_j}_t − K_t| = 0.
>
> *通俗解释*：z 仅线性增长时，惩罚方程最大/最小解收敛到 RBSDE 的一个解。

> **定理 5.13（RBSDE 最小/最大解 + RBSDE 序列逼近，逐字原文）**：Let p > 1, V· ∈ V^p and let g satisfy (H1), (H2w), (H3) and (H4s). Assume that (H5) and (H6) hold for some ξ, L· and X·. Then, RBSDE (ξ, g + dV, L·) admits a minimal (resp. maximal) solution (Y·, Z·, K·) in S^p × M^p × V^{+,p} …
>
> *通俗解释*：弱条件下 RBSDE 有最小/最大解，可由一列 RBSDE 的解逼近。

> **命题 4.4（比较定理，逐字原文）**：Let p > 1, V^i· ∈ V^p, g^i be a generator, ξ^i and L^i· satisfy (H5) … If ξ^1 ≤ ξ^2, dV^1· ≤ dV^2·, L^1· ≤ L^2·, and either {g^1 satisfies (H1) and (H2); dP×dt-a.e., 1_{Y^1_t>Y^2_t}(g^1(t,Y^2_t,Z^2_t) − g^2(t,Y^2_t,Z^2_t)) ≤ 0} or {g^2 satisfies (H1) and (H2); dP×dt-a.e., 1_{Y^1_t>Y^2_t}(g^1(t,Y^1_t,Z^1_t) − g^2(t,Y^1_t,Z^1_t)) ≤ 0} is satisfied, then dP-a.s., Y^1_t ≤ Y^2_t for each t ∈ [0, T].
>
> *通俗解释*：仅需一个生成元满足 (H1)+(H2) 即可得 RBSDE 的 L^p 比较定理。

## 证明骨架

- **武器库**：Itô/Itô–Tanaka 公式、Burkholder–Davis–Gundy (BDG) 不等式、Hölder 不等式、停时技巧、Fatou 引理、Lebesgue 控制收敛定理、单调极限；先验估计（Lemma 3.1–3.4）、惩罚法（Proposition 4.1）、近似法（Proposition 4.2）、比较定理（Proposition 4.4）、Osgood 唯一性、截断/线性化（gn 的 inf 卷积 inf_u[g(y,u)+(n+2λ)|u−z|]）。
- **核心技巧**：用 inf 卷积把 z 非 Lipschitz 的 g 单调逼近为满足 Lipschitz 的 gn，借比较定理得 Y^n 单调，再靠 (H6) 的先验控制 + Fatou/控制收敛取极限；关键新意在于用单边 Osgood (H1) 替代单调性 (H1s) 后，Klimsiak 用的指数平移变换失效，需改用 (A) 型先验估计与新的惩罚收敛论证。

## 阅读门槛

- 前置背景：随机分析（Itô 公式、BDG 不等式、连续鞅与有限变差过程、停时）；经典 BSDE 理论（Pardoux–Peng 1990 的 Lipschitz 框架）；反射 BSDE（El Karoui et al. 1997，Skorokhod 反射条件）；L^p 空间与范数记号的熟练度；比较定理与单调极限定理（Peng 1999）的基本思想。

## 与其他文献的关联

- 继承并改进：Pardoux–Peng [33]（1990，Lipschitz + 平方可积）；El Karoui et al. [6]（1997，引入 RBSDE）；Briand et al. [4]（2003，L^p BSDE 单调性+一般增长+Lipschitz z）、Briand et al. [5]（2007，单调 y 非 Lipschitz z）；Fan [9]（2015，L^p 多维 BSDE）、Fan–Jiang [11]（2012，单边 Osgood 比较定理）；Lepeltier–Matoussi–Xu [27]、Rozkosz–Słomiński [37]（RBSDE L^p 解）；Klimsiak [24]（障碍增长必要条件，但作者指出其 12–13 页有误、Theorem 7.1 不成立，本文以 (H6) 修正）；Xu [38]（2008，弱系数 RBSDE，本文 Theorem 5.13 改进之）。作者明确称本文一维情形统一并改进 [5][8][9][11][15][24][27][37][38] 等结果（见 Remark 4.6、5.10、5.14）。

## 备注

- 提取质量：pdftotext 将积分号、范数、箭头、括号等符号乱码（如  为 ∫、 为 ‖·‖、−→ 为 →、  为尖括号；作者名 "Rozkosz and S lomiński" 应为 "Słomiński"），上述逐字引用已按原意线性化并保留原文词序，符号替换处未标 [UNCERTAIN]，但均属可推断的排版符号而非公式内容丢失。
- 缺失公式位置：定理 5.3、5.13 陈述中的 "…" 为原文省略号（非丢公式）；§3 Lemma 3.1–3.4、Proposition 3.5–3.6 的先验估计公式较长，正文未逐式复述，仅引用其结论；引言与 §2 的 Osgood 积分 ∫_{0+} du/ρ(u)=+∞、惩罚方程 (4.1)(4.2) 等已核实。
