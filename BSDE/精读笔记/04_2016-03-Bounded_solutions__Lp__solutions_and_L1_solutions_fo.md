# Bounded solutions, Lp (p>1) solutions and L1 solutions for one dimensional BSDEs under general assumptions — 精读笔记（/paper.core L2）

- **数据来源**：原文全文（pdftotext 提取，数学公式多处乱码/线性化）
- **论文元信息**：ShengJun Fan（范胜君，中国矿业大学理学院），*Stochastic Processes and their Applications* 126 (2016) 1511–1552；DOI: 10.1016/j.spa.2015.11.012；MSC 60H10；收稿 2014-02-26，修订 2015-10-31
- **一句话定位**：在"y 方向一般增长 + z 方向二次增长、以单边（超）线性增长替代通常的 y 单调性"这一更弱假设下，系统建立一维 BSDE 的有界解、L^p(p>1) 解、L^1 解的存在性、唯一性与比较定理，且允许有限或无限时间区间；是 Pardoux–Peng(1990) 之后一维 BSDE 弱化假设脉络上的集大成式推进。

## 符号速查

| 符号 | 含义 | 位置 |
| --- | --- | --- |
| (Ω,F,P)、(B_t)、(F_t) | 完备概率空间、d 维布朗运动、自然滤波（增广、F_T=F） | §1 |
| ξ, g(ω,t,y,z) | 终端条件（F_T 可测）、生成元 | (1) |
| y·, z· | 解过程（R 值、R^d 值，循序可测） | Def 1.1 |
| S^p, M^p | ‖Y‖=E[sup \lvert Y_t \rvert ^p]^{1∧1/p}、‖Z‖=E[(∫ \lvert Z_t \rvert ²dt)^{p/2}]^{1∧1/p} | §1 |
| S^∞, 类(D) | 可料有界过程；{Y_τ:τ∈Σ_T} 一致可积 | Def 1.2 |
| ρ(·), φ(·), u(t), v(t) | Osgood 型函数（∫0+ du/ρ(u)=+∞）、z 方向连续模、可积权重 | (2A1)(2A2) |
| l(·), h(·), ϕ(·), f_t, λ(·) | y 增长函数、z² 系数、控制项、α∈(0,1) 次线性指数 | (3A1)(2A5) |

## 核心结果

> **定理 2.1（L^p 解比较，逐字）**：Assume that 0<T≤+∞, ξ and ξ′ are two F_T-measurable random variables, g and g′ are two generators... Assume further that (y·−y·′)^+ ∈ S. If ξ≤ξ′ dP-a.s. and one of the following two statements holds true: (i) g satisfies (2A1) and (2A2), and 1_{y_t>y_t′}(g(t,y_t′,z_t′)−g′(t,y_t′,z_t′))≤0 dP×dt-a.e.; (ii) g′ satisfies (2A1) and (2A2), and 1_{y_t>y_t′}(g(t,y_t,z_t)−g′(t,y_t,z_t))≤0 dP×dt-a.e., then for each t∈[0,T], y_t≤y_t′ dP-a.s.
>
> *通俗解释*：把 Fan–Jiang–Tian[19] 的 L² 比较定理推广到 L^p，并去掉 ρ 的凹性要求。

> **定理 3.1（有界解存在，逐字）**：Assume that 0<T≤+∞ and that g satisfies (2A3), (3A1) and (3A2). Then for each ξ∈L^∞(Ω,F_T,P), BSDE(ξ,g) has both a minimal and a maximal solution among all bounded solutions (Y,Z). Moreover, for each t∈[0,T], L_0≤L_t≤Y_t≤U_t≤U_0 dP-a.s., where (L,U) are the unique solutions of (22) and (23) with a=−‖ξ‖*∞ and b=‖ξ‖*∞.
>
> *通俗解释*：单边超线性+二次增长下有界解存在，且被两条倒向 ODE 界夹住。

> **定理 4.3（有界解存在唯一，逐字）**：Assume that 0<T≤+∞ and that g satisfies (2A3), (3A2) and (2A1). Furthermore, we also assume that one of three assumptions (2A2), (4A1) and (4A2) holds true for g. Then for each ξ∈L^∞(Ω,F_T,P), BSDE(ξ,g) has a unique bounded solution (Y,Z).
>
> *通俗解释*：单边 Osgood + 一般增长 + (z 方向连续/局部 Lipschitz/凸凹) 之一 ⇒ 唯一有界解。

> **定理 5.1（L^p 解存在，逐字）**：Assume that 0<T≤+∞ and g satisfies (2A3), (3A2) and (5A1) with f_t∈L¹([0,T];R+). Then for each ξ∈L^p(Ω,F_T,P), BSDE(ξ,g) has an L^p solution.
>
> *通俗解释*：连续 + 一般增长 + 单边线性增长 ⇒ L^p 解存在（改进 [27][10][8]）。

> **定理 5.5（L^p 解唯一，逐字）**：Assume that 0<T≤+∞ and that g satisfies (2A1)–(2A3) and (3A2). Then for each ξ∈L^p(Ω,F_T,P), BSDE(ξ,g) has a unique L^p solution.
>
> *通俗解释*：单边 Osgood + 连续 + 一般增长 ⇒ 唯一 L^p 解。

> **定理 6.1（L¹ 解存在，逐字）**：Assume that 0<T≤+∞ and g satisfies (2A3), (3A2) and (6A1) with f_t∈L¹([0,T];R+). Then for each ξ∈L¹(Ω,F_T,P), BSDE(ξ,g) has an L¹ solution.
>
> *通俗解释*：一般增长 + 单边线性/次线性增长 ⇒ L¹ 解存在（改进 [6][5]）。

> **定理 6.5（L¹ 解唯一，逐字）**：Assume that 0<T≤+∞ and that g satisfies (2A1)–(2A3) and (3A2). Assume further that g satisfies (2A5) with f_t∈L¹([0,T];R+) or (2A5′). Then for each ξ∈L¹(Ω,F_T,P), BSDE(ξ,g) has a unique L¹ solution.
>
> *通俗解释*：单边 Osgood + 次线性 z 控制 ⇒ 唯一 L¹ 解。

另含一批"极大小解比较"：定理 2.2/2.3、3.2/3.3、5.3/5.4、6.3/6.4 及其推论（2.1、3.1、5.1、5.2、6.1、6.2），以及极大/极小解存在定理 5.2、6.2。

## 证明骨架

- **武器库**：Tanaka 公式；Girsanov 换测度（构造概率 P_n/Q 把 |z|² 或 v(t)|z| 项吸收进漂移，令布朗运动变 BMO 鞅）；BMO-鞅理论（Kazamaki[25]：BMO 鞅的随机指数是一致可积鞅）；Bihari 不等式与 Osgood 条件；单调逼近 + 截断（κ_n 光滑截断、生成元 G_n↓G）；局部化过程（停时 τ_k 局部化 z）；倒向 ODE 比较引理（Lemma 3.1）；指数变换 y↦e^{γy}；双重逼近 ξ_{n,p}=ξ⁺∧n−ξ⁻∧p。
- **核心技巧**：比较定理证明中先 Tanak 取正部，再用 Girsanov 换测度消掉 z 项、把不等式化为 Lemma 2.1（Osgood 型迭代收敛引理）的形式取极限 ŷ⁺=0；存在性证明中"有界解↔L^p↔L¹"逐级用单调逼近 + 局部化递推。

## 阅读门槛

- 一维 BSDE 定义与 Pardoux–Peng 经典 Lipschitz 框架；
- 随机分析：Tanaka 公式、Girsanov 定理、BMO-鞅及其随机指数；
- Osgood 条件 ∫0+ du/ρ(u)=+∞ 与 Bihari 不等式；
- L^p(Ω)、S^p、M^p 空间与类 (D) 过程。

## 与其他文献的关联

- 继承 Pardoux–Peng[32]（1990 Lipschitz 起点）；比较定理沿 El Karoui–Peng–Quenez[14]、Cao–Yan[9]、Chen–Wang[11]、Briand–Hu[6] 而来。
- 有界解存在改进 Kobylanski[26]、Lepeltier–San Martín[27,28]、Briand–Hu[7]、Briand–Lepeltier–San Martin[8]（给出反例 g₁=|z|²e^y+y cos y 等说明旧条件不覆盖新条件）。
- L^p 解改进 Lepeltier–San Martín[27]、Chen[10]；L¹ 解改进 Briand–Hu[6] 与 Briand–Delyon–Hu–Pardoux–Stoica[5]。
- 直接发展范胜君本人系列：Fan–Jiang–Tian[19]、Fan–Jiang[16,17]、Fan–Liu[20]、Xiao–Li–Fan[39]、Tian–Jiang–Shi[38]，并去掉 [19] 中 ρ 的凹性条件。
- 应用例：Shamarova–Ramos–Aguiar[35]（基因表达）、Kreps–Porteus 效用（El Karoui–Peng–Quenez[14]）。

## 备注

- 提取质量：pdftotext 丢失全部真积分/范数排版，公式被线性化且多处乱码（如 ‖Y‖_S^p、∫、Σ_T、上标 α 等），定理逐字引用已尽量按可读线性形式还原，无法还原处未标注细节；分页页眉"1512 S. Fan / ..."残留。
- 缺失公式位置：(3A1)/(3A2) 中 h(y)|z|²、u(t)l(y) 结构清晰，但 ∫0+ 与积分限 ±∞ 的 Osgood 条件仅以 "0+ (1/ρ(u))du = +∞" 形式出现，上限已按上下文补记为 ∫0+，[UNCERTAIN: 原式积分限乱码]。
- 引理 2.1（Osgood 收敛引理）是全篇核心工具，其证明用了 Bihari 不等式与 ψ_n 的 inf-卷积 Lipschitz 化。
