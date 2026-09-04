# Reflected Solutions of Backward SDE's, and Related Obstacle Problems for PDE's — 精读笔记（/paper.core L2）

- **数据来源**：MinerU OCR 转换 Markdown（pdf-converter 技能提取，原文为 JSTOR 扫描件）
- **论文元信息**：N. El Karoui, C. Kapoudjian, E. Pardoux, S. Peng, M. C. Quenez；*The Annals of Probability*, Vol. 25, No. 2 (Apr., 1997), pp. 702–737，Institute of Mathematical Statistics。DOI 未在文本中确认（文本仅给出 JSTOR Stable URL: http://www.jstor.org/stable/2959608）。
- **一句话定位**：在经典 BSDE 上引入障碍约束与递增反射过程，系统建立反射 BSDE（RBSDE）的存在唯一性、比较定理、Skorohod/最优停时表示、混合控制极小极大表示与抛物障碍 PDE 粘性解的概率表示；是反射 BSDE 的奠基性期刊文献（本文件夹 #30 是其同作者的美式期权章节版）。

## 符号速查

| 符号 | 含义 | 位置 |
| --- | --- | --- |
| $B_t$ | $d$ 维标准布朗运动 | §2 |
| $\mathcal{F}_t$ | $B$ 的自然过滤（含 $P$-零集），$\mathcal{P}$ 为可料 $\sigma$-代数 | §2 |
| $\mathbb{L}^2,\mathbb{H}^2,\mathcal{S}^2$ | 终端、可料平方可积、上确界平方可积过程空间 | §2 |
| $\xi$ | 终端值，$\xi\in\mathbb{L}^2$ | §2 |
| $f(t,y,z)$ | 生成元，关于 $(y,z)$ Lipschitz | §2 |
| $S_t$ | 障碍过程（连续、循序可测），$S_T\leq\xi$ a.s. | §2 |
| $(Y,Z,K)$ | RBSDE 解三元组；$Y\in\mathcal{S}^2$，$Z\in\mathbb{H}^2$，$K$ 连续递增且 $K_0=0$ | §2 |
| $\mathcal{T}_t$ | 停时集 $\{v;\ t\leq v\leq T\}$ | §2 |
| $D_t$ | 首次触及障碍 $D_t=\inf\{u\geq t;\ Y_u=S_u\}$ | §2 |
| $(\beta,\gamma)\in\mathcal{A}$ | 有界可料控制过程 | §7 |
| $F(t,\beta,\gamma)$ | $f$ 的共轭（极）函数 | §7 |
| $u(t,x)$ | $u(t,x)=Y_t^{t,x}$，确定性值函数 | §8 |
| $L_t$ | 二阶算子 $\frac12\sum(\sigma\sigma^*)_{ij}\partial_{ij}+\sum b_i\partial_i$ | §8 |
| $g,h$ | 终端函数 $g(x)$、障碍函数 $h(t,x)$，$h(T,x)\leq g(x)$ | §8 |

## 核心结果

> **引理 2.1（Skorohod 引理，逐字）**：Let $x$ be a real-valued continuous function on $[0,\infty[$ such that $x_0 \geq 0$. There exists a unique pair $(y,k)$ such that (a) $y=x+k$; (b) $y$ is positive; (c) $\{k_t\}$ is continuous and increasing, $k_0=0$ and $\int_0^\infty y_t dk_t=0$. The function $k$ is moreover given by $k_t=\sup_{s\leq t} x_s^{-}$.
>
> *通俗解释*：把 $x$ 反射为正函数 $y$，反射量 $k$ 是 $x$ 负部的上确界。

> **命题 2.2（逐字）**：Let $\{(Y_t,Z_t,K_t), 0\leq t\leq T\}$ be a solution of the above RBSDE satisfying conditions (vi) to (viii). Then for each $t\in[0,T]$,
> $$K_T-K_t=\sup_{t\leq u\leq T}\Big(\xi+\int_u^T f(s,Y_s,Z_s)ds-\int_u^T(Z_s,dB_s)-S_u\Big)^{-}.$$
>
> *通俗解释*：反射增量 = 未反射情形"下穿障碍负部"的上确界。

> **命题 2.3（逐字）**：Let $\{(Y_t,Z_t,K_t),0\leq t\leq T\}$ be a solution of the above RBSDE satisfying conditions (v) to (viii). Then for each $t\in[0,T]$,
> $$Y_t=\operatorname{ess}\sup_{v\in\mathcal{T}_t} E\Big[\int_t^v f(s,Y_s,Z_s)ds+S_v\mathbf{1}_{\{v<T\}}+\xi\mathbf{1}_{\{v=T\}}\mid\mathcal{F}_t\Big].$$
>
> *通俗解释*：$Y$ 是停时收益的 ess sup 值函数；$D_t$ 为最优停时。

> **定理 4.1（比较定理，逐字）**：Let $(\xi,f,S)$ and $(\xi',f',S')$ be two sets of data, each one satisfying all the assumptions (i), (ii), (iii) and (iv) [with the exception that the Lipschitz condition (iii) could be satisfied by either $f$ or $f'$ only], and suppose in addition the following: (i) $\xi\leq\xi'$ a.s.; (ii) $f(t,y,z)\leq f'(t,y,z)\ dP\times dt$ a.e., $\forall(y,z)\in\mathbb{R}\times\mathbb{R}^d$; (iii) $S_t\leq S_t',0\leq t\leq T$ a.s. Let $(Y,Z,K)$ be a solution of the RBSDE with data $(\xi,f,S)$ and $(Y',Z',K')$ a solution with data $(\xi',f',S')$. Then $Y_t\leq Y_t', 0\leq t\leq T$ a.s.
>
> *通俗解释*：终端、生成元、障碍都更小则 $Y$ 处处更小。

> **命题 4.2（障碍为半鞅时，逐字要点）**：若 $S_t=S_0+\int_0^t U_s ds+\int_0^t(V_s,dB_s)$，则 $Z_t=V_t,\ dP\times dt$ a.e. 于 $\{Y_t=S_t\}$，且 $0\leq dK_t\leq\mathbf{1}_{\{Y_t=S_t\}}[f(t,S_t,V_t)+U_t]^{-}dt$。
>
> *通俗解释*：接触集上 $Z=V$，$K$ 绝对连续且可显式界出。

> **定理 5.2（存在唯一性，逐字）**：Under the above assumptions, in particular (i), (ii), (iii) and (iv), the RBSDE with (v), (vi), (vii), (viii) has a unique solution $(Y,Z,K)$.
>
> *通俗解释*：Picard 迭代（每步解 BRP）得 RBSDE 唯一解。

> **定理 7.2（凹生成元极小极大表示，逐字）**：For each $(\beta,\gamma)\in\mathcal{A}$,
> $$Y_t^{\beta,\gamma}=\operatorname{ess}\sup_{v\in\mathcal{T}_t} E[\Phi(t,v,\beta,\gamma)\mid\mathcal{F}_t],$$
> 且 $Y_t=\operatorname{ess}\inf_{(\beta,\gamma)\in\mathcal{A}}Y_t^{\beta,\gamma}=\operatorname{ess}\inf_{(\beta,\gamma)\in\mathcal{A}}\operatorname{ess}\sup_{v\in\mathcal{T}_t}E[\Phi(t,v,\beta,\gamma)\mid\mathcal{F}_t]=\operatorname{ess}\sup_{v\in\mathcal{T}_t}\operatorname{ess}\inf_{(\beta,\gamma)\in\mathcal{A}}E[\Phi(t,v,\beta,\gamma)\mid\mathcal{F}_t]$；$(\beta^*,\gamma^*,D_t)$ 最优。
>
> *通俗解释*：凹情形解 = 最优停时与控制混合的 minimax 值函数。

> **定理 8.5（逐字）**：Defined by (25), $u$ is a viscosity solution of the obstacle problem (24).
>
> *通俗解释*：$u(t,x)=Y_t^{t,x}$ 是抛物障碍 PDE 的粘性解。

> **定理 8.6（逐字）**：Under the above assumption, including condition (27), the obstacle problem (24) has at most one viscosity solution in the class of continuous functions which grow at most polynomially at infinity.
>
> *通俗解释*：多项式增长连续函数类中粘性解唯一。

## 证明骨架

- **武器库**：Skorohod 反射引理（K 的上确界表示）；Itô 公式 + Lipschitz + Gronwall（比较定理与先验估计）；Davis–Burkholder–Gundy 不等式（可积性）；Snell 包络 / 最优停时理论（BRP 存在性，引 Delacherie–Meyer [7][8] 与 El Karoui [10]、Karatasov–Shreve [16]）；Banach 压缩映射（§5 Picard 迭代）；$n(Y-S)^{-}$ 惩罚逼近（§6）；凹函数共轭与可测选择（§7）；Crandall–Ishii–Lions 粘性解理论（§8，转引 [4]）。
- **核心技巧**：比较定理中，反射条件 $\int(Y-S)dK=0$ 使交叉项 $\int(Y-Y')^{+}(dK-dK')$ 在 $\{Y>Y'\}$ 上化为 $-\int(Y-Y')^{+}dK'\leq0$，从而把 RBSDE 的差压回经典 BSDE 型 Gronwall 估计，比较定理与 $K$ 的极小性"免费"得到，是全篇枢纽。

## 阅读门槛

- 经典 BSDE（Pardoux–Peng 1990 存在唯一性、比较定理、先验估计，及 1992 BSDE↔拟线性 PDE）；
- 随机分析：Itô 公式、Itô–Tanaka 公式与局部时、可料过程、$\mathbb{H}^2/\mathcal{S}^2$ 空间、BDG 不等式；
- Skorohod 一维反射问题；
- 最优停时与 Snell 包络、Doob–Meyer 分解、本质上下确界；
- 粘性解与二阶抛物障碍 PDE、superjet/subjet；
- 凸/凹函数共轭（Fenchel 对偶）。

## 与其他文献的关联

- **Pardoux–Peng [17](1990)、[18](1992)**：BSDE 的创立与 BSDE↔拟线性 PDE 粘性解对应；§8 证明 $u_n$ 是惩罚 PDE 粘性解直接转引 [18]，本文将该对应推广到障碍（反射）情形。
- **Crandall–Ishii–Lions [4](1992)**：粘性解"用户指南"，本文借用其 super/subjet 语言、Lemma 6.1、Theorem 8.3（唯一性中的极大值原理）。
- **El Karoui–Peng–Quenez [13](1994)**：金融 BSDE 与比较定理，本文 §4 比较定理与之平行；§7 凹/凸 BSDE 的共轭表示亦源于此。
- **Barles [1](1994)、Barles–Burdeau [2](1995)**：§8 唯一性证明的技巧来源。
- **与 #30 笔记的关系**：#30（El Karoui–Pardoux–Quenez，《Reflected Backward SDEs and American Options》，Cambridge UP 章节）是本文的姊妹/导论版，侧重美式期权定价应用（5 节）；本文是其完整期刊版（8 节），补充了 Picard 迭代（§5）、惩罚逼近（§6）、极小极大控制（§7）与障碍 PDE 粘性解（§8）的完整证明，两者核心设定与定理一一对应。

## 备注

- MinerU OCR 质量较好，公式基本可读；主要瑕疵：数学空格被拆分（如 "$f(t,y,z)\leq f'(t,y,z)dP\times dt$"、$\mathbf{1}_{\{v< T\}}$ 多余空格）、偶有 $\dot{|Z_t^n|^2}$ 之类的点号残留、§6 中 "$n\in N$" 应为 $\mathbb{N}$、$\mathcal{S}^2$ 定义里 "predictable" 与 $\mathcal{S}^2$（应为 cadlag 适应过程空间）在 OCR 中表述不完全精确。
- 命题 2.2 正文说明"从 (1) 看不出 $\{K_t\}$ 适应，$Z$ 的作用正是使 $(Y,K)$ 适应"，OCR 对该段表述清晰，无缺失。
- 定理 8.6 唯一性证明中 (28) 的常数 $\varepsilon/t^2$ 与 "$v(T,x)=g(x)=v(T,x)-T/\varepsilon$"（应指变换后函数）OCR 处有轻微不一致，建议对照原 PDF 核实 [UNCERTAIN]。
- 文中 §6 引理 6.1 无独立编号陈述（正文仅写 "LEMMA 6.1." 后接收敛式），已按其收敛结论记录。
