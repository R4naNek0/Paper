# Reflected Backward SDEs and American Options — 精读笔记（/paper.core L2）

- **数据来源**：原文全文（pdftotext 提取）
- **论文元信息**：N. El Karoui, E. Pardoux, M. C. Quenez，收录于 *Numerical Methods in Finance*（L. C. G. Rogers, D. Talay 编），Cambridge University Press，pp. 215–231；章节 DOI: 10.1017/CBO9781139173056.012（Book DOI: 10.1017/CBO9781139173056）。arXiv 未在文本中确认。
- **一句话定位**：把美式期权的定价问题归结为一类新的倒向方程——"反射 BSDE"（RBSDE），解被障碍过程 S 从下方强制约束、由递增过程 K 上推；系统建立其存在唯一性、比较定理、Skorohod 表示、最优停时/控制表示、粘性解障碍问题表示与金融定价应用，是 El Karoui–Quenez(1997) 经典 BSDE 框架向美式/反射情形的基础推广。

## 符号速查

| 符号 | 含义 | 位置 |
| --- | --- | --- |
| ξ（原文 £） | 终端值，∈ L² | §2 |
| f | 标准生成元（Lipschitz） | §2 |
| S_t（原文 St） | 障碍，连续适应、L² 有界，S_T ≤ ξ a.s. | §2 |
| (Y, Z, K) | RBSDE 解三元组，取值 R、Rⁿ（原文 IRn）、R₊ | §2 |
| K_t | 递增连续过程，K₀=0，"上推"量，∫(Y−S)dK=0 | §2 |
| H², S², L² | 过程空间（原文 H 2 / S2 / 1L2、IL2，提取失真） | §2 |
| T_t | 被 T 支配的停时集 {ν∈T; t≤ν≤T} | §3.2 |
| D_t | D_t = inf{t≤s≤T; Y_s = S_s}（最优停时） | §3.2 |
| Γ_{t,s}（原文 Tt,s / rs） | 伴随过程，dΓ=Γ(βds+γ* dB)，Γ_{t,t}=1 | §3.4 |
| (β, γ) ∈ A | 可行控制过程，A={∫₀ᵀ F(t,β,γ)dt<∞} | §3.5 |
| F(t,β,γ) | f 的共轭/极函数 | §3.5 |
| f^{β,γ} | 线性生成元 F(t,β,γ)+β·y+γ·z | §3.5 |
| b(t,x,π) | 财富-组合生成元（凸） | §5 |
| X, π | 财富过程与组合策略 | §5 |
| u(t,x) | Y^{t,x} 的确定性函数 | §4 |
| h(t,x), g(x) | 障碍函数、终端函数，h(T,x)≤g(x) | §4 |
| L_t | 状态过程 S^{t,x} 的无穷小生成元 | §4 |
| B(t,β,γ) | b 的极过程 | §5 |

## 核心结果

> **定理 2.1（比较定理，逐字）**：Let (ξ, f, S) and (ξ′, f′, S′) be two sets of standard data, and suppose in addition that ξ ≤ ξ′ a.s.; f(t, y, z) ≤ f′(t, y, z) dP×dt a.e., ∀(t,y,z)∈R×Rᵈ; S_t ≤ S′_t, 0≤t≤T, a.s. Let (Y,Z,K) be a solution of the RBSDE with data (ξ,f,S), and (Y′,Z′,K′) a solution with data (ξ′,f′,S′). Then Y_t ≤ Y′_t, 0≤t≤T, a.s.
>
> *通俗解释*：终端、生成元、障碍都更小的 RBSDE，其 Y 分量处处更小。

> **推论 2.2（K 的极小性）**：任取满足 (i)(ii)(iii) 但 K′ 不必满足 ∫(Y′−S)dK′=0 的三元组，则 Y_t ≤ Y′_t, 0≤t≤T, a.s.
>
> *通俗解释*：满足反射条件(iv)的解是"最小上推"，K 极小。

> **推论 2.3（唯一性）**：给定标准数据，至多存在一个满足 RBSDE 的可测三元组。
>
> *通俗解释*：RBSDE 解唯一。

> **定理 2.4（先验估计与存在性）**：(A priori estimates) 对相同障碍 S¹=S² 的两组标准数据及对应解，先验估计成立；(Existence) 给定标准数据，RBSDE (i)(ii)(iii)(iv) 有唯一解。
>
> *通俗解释*：有先验估计，再用不动点定理得存在唯一解。

> **命题 2.5（惩罚逼近）**：对每个 n∈N，设 (Yⁿ,Zⁿ) 满足 Yⁿ_t = ξ + ∫_t^T f(s,Yⁿ_s,Zⁿ_s)ds + n∫_t^T (Yⁿ_s − S_s)⁻ ds − ∫_t^T (Zⁿ_s, dB_s)。则递增序列 Yⁿ 依 a.s. 和 S² 收敛到 Y，Zⁿ 在 H² 中收敛到 Z，Kⁿ 在 S² 中收敛到 K，其中 Kⁿ_t = n∫₀^t (Yⁿ_s − S_s)⁻ ds。
>
> *通俗解释*：用 n(Y−S)⁻ 惩罚下穿障碍，得解的另一构造法。

> **命题 3.1（Skorohod 引理，逐字）**：Let x be a real-valued continuous function on [0,∞[ such that x₀>0. There exists a unique pair (y,k) such that (a) y=x+k; (b) y is positive; (c) k is continuous and increasing, k₀=0, and ∫ y_t dk_t = 0. The function k is given by k_t = sup_{s≤t} x⁻_s.
>
> *通俗解释*：把 x 反射为正函数 y，反射量 k 是 x 负部的上确界。

> **命题 3.2（K 的上确界表示）**：K_T − K_t = sup_{t<u≤T} ( ξ + ∫_u^T f(s,Y_s,Z_s)ds − ∫_u^T (Z_s,dB_s) − S_u )⁻。
>
> *通俗解释*：K 的增量等于"未反射情形下穿障碍负部"的上确界。

> **命题 3.3（最优停时表示）**：Y_t = ess sup_{ν∈T_t} E[ ∫*t^ν f(s,Y_s,Z_s)ds + S_ν 1*{ν<T} + ξ 1_{ν=T} | F_t ]。
>
> *通俗解释*：Y 等于停时收益的 ess sup 值函数。

> **命题 3.4（给定生成元的存在性）**：若 f(t) 是给定的可料过程（∈L²），则 RBSDE (ξ,f,S) 有唯一解。
>
> *通俗解释*：f 与 (y,z) 无关时，用最优停时理论得解。

> **命题 3.5（线性 RBSDE）**：设 f(t,y,z)=φ_t + yβ_t + zγ_t（原文 φ、β、γ 与伴随过程），伴随过程满足 dΓ_{t,s}=Γ_{t,s}(β_s ds + γ_s* dB_s), Γ_{t,t}=1。则 Y_t = ess sup_{ν∈T_t} E[ Γ_{t,ν} ξ 1_{ν=T} + Γ_{t,ν} S_ν 1_{ν<T} + ∫*t^ν Γ*{t,s} φ_s ds | F_t ]，且 D_t 最优。
>
> *通俗解释*：线性情形解由伴随过程加权写出，本质是 Snell 包络。

> **定理 3.7（凹 RBSDE 的极小极大）**：Y_t = ess inf_{β,γ∈A} ess sup_{ν∈T_t} X^{β,γ}_t(ν, S̄_ν)，且 ess inf 与 ess sup 可交换；三元组 (β,γ,D_t) 最优，满足"分离原理"（最优控制不依赖 D_t，D_t 不依赖控制）。
>
> *通俗解释*：凹反射解 = 停时与控制混合的 minimax/maxmin 值函数。

> **定理 4.1（障碍问题粘性解）**：若系数 f,b,σ,g,h 对 (t,x) 联合连续，则 u(t,x) 是障碍问题
> min{ u(t,x) − h(t,x), −∂u/∂t(t,x) − L_t u(t,x) − f(t,x,u(t,x),(∇u σ)(t,x)) } = 0
> 的唯一粘性解（(t,x)∈(0,T)×Rᵈ）。
>
> *通俗解释*：Markov 情形 RBSDE 给出非线性抛物障碍问题的概率表示。

> **命题 5.1（美式期权定价）**：存在 π∈H² 与递增连续 K（K₀=0）使得
> −dX_t = b(t,X_t,π_t)dt + dK_t − π**t dW_t; X_T = ξ，且 X_t ≥ S_t, ∫₀^T (X_t−S_t)dK_t = 0；D_t 最优，即 X_t = ess sup*{ν∈T_t} X_t(ν,S_ν) = X_t(D_t, S_{D_t})。K 解释为累积消费，X_t 等于"上价"（最小超对冲策略）。
>
> *通俗解释*：受约束市场中美式期权价格是凸 RBSDE 的解 = 上价。

## 证明骨架

- **武器库**：Itô 公式（作用于 (Y−Y′)⁺²）、Lipschitz 与 Gronwall 引理（比较定理）；先验估计 + Banach 不动点/压缩映射（存在性）；n(Y−S)⁻ 惩罚逼近经典 BSDE（另一存在性）；Skorohod 反射引理（K 的上确界表示）；最优停时理论 / Snell 包络（给定生成元与线性情形）；凸/凹函数的共轭（极函数 F）与可测选择定理（凹 RBSDE 的 minimax）；Dini 定理 + 粘性解理论（障碍问题 PDE）。
- **核心技巧**：比较定理证明中，关键是用反射条件(iv)把含 dK−dK′ 的交叉项压成 ≤0（在 {Y>Y′} 上 Y>S′≥S，故 ∫(Y−Y′)⁺(dK−dK′) = −∫(Y−Y′)⁺dK′ ≤ 0），从而 RBSDE 的差仍满足经典 BSDE 型 Gronwall 估计；K 的极小性因此"免费"得到，成为整个理论与定价应用的枢纽。

## 阅读门槛

- 经典 BSDE 基础（Pardoux–Peng 1990 存在唯一性、El Karoui–Quenez 1997 的记号与比较定理、先验估计、凸/凹 BSDE）；
- 随机分析：Itô 公式、布朗运动、可料过程、H²/S² 过程空间、连续鞅；
- Skorohod 反射问题（一维反射、局部时）；
- 最优停时 / Snell 包络、本质上下确界（ess sup/ess inf）；
- 粘性解与二阶抛物 PDE 障碍问题；
- 金融：美式期权、超对冲、上价、deflator/可行控制参数 (β,γ)。

## 与其他文献的关联

- **El Karoui & Quenez (1997)**（同卷）：本文反复引用其 BSDE 结果、记号与"凹/凸 BSDE 对应优化问题值函数"，本文是其在美式期权与反射情形的直接推广。
- **Pardoux & Peng (1990, 1992)**：经典 BSDE 存在唯一性、BSDE 与拟线性 PDE 粘性解的对应（§4 引 1992），本文把该对应推广到反射/障碍问题。
- **El Karoui, Kapoudjian, Pardoux, Peng & Quenez (1995)**（preprint）：惩罚逼近收敛的细节、以及障碍问题粘性解唯一性均转引于此。
- **Bensoussan (1984)、Karatzas (1988, 1989)、Karatzas & Shreve (1995/1996)**：完美市场中美式期权不能完全对冲、需超对冲、上价的经典结论，本文在受约束（凸 BSDE）市场下推广。
- 文本中未见 Briand–Hu、范胜君等工作的引用，故不述。

## 备注

- pdftotext 提取质量中等：空间符号大量失真（L² 记为 "1L2/IL2"、H² 记为 "H 2/H^"、S² 记为 "S2"、Rⁿ 记为 "IRn"、∫_t^T 记为 "fT/Jt"），本笔记已作线性化还原，未改动数学含义。
- 多处专名拼写受损："Skohorod" 应为 Skorokhod/Skorohod，"Chayelat-Maurel" 疑为 Chaleyat-Maurel，"ltd process" 疑为 Itô process；均按常见拼写处理并在此注明。
- 命题 3.5 中生成元 f 与伴随过程的公式（原文 "I\ s (/?s ds + 7s* dBs)"）符号提取严重模糊，已按线性 BSDE 标准形还原并标 [UNCERTAIN]；该处 β_s、γ_s、φ_s 的具体记号无法从文本精确确认。
- 定理 4.1 障碍问题中 "−T^(*, X)" 原文损坏，按标准记法还原为 −∂u/∂t(t,x) [UNCERTAIN: 原文该分式上标丢失]。
- 命题 2.5 中 "Knp" 疑为 "Kⁿ" 的估计 [UNCERTAIN: 缩写无法确认]。
