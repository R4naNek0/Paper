# Multi-dimensional non-Markovian backward stochastic differential equations of interactively quadratic generators — 精读笔记（/paper.core L2）

- **数据来源**：原文全文（pdftotext 提取）
- **论文元信息**：Electron. J. Probab. 30 (2025), article no. 169, 1–57；ISSN 1083-6489；DOI <https://doi.org/10.1214/25-EJP1431；MSC2020> 60H10。作者：Shengjun Fan（中国矿业大学）、Ying Hu（雷恩大学/CNRS/IRMAR）、Shanjian Tang（复旦大学，通讯作者）。投稿 2024-10-10，接受 2025-10-26。基金：NSFC 12171471 等。
- **一句话定位**：求解多维非 Markov BSDE 中允许 g^i 在 z^i 与 z^j(j≠i) 上交互二次（interactively quadratic）增长的生成元，给出局部/全局有界解与无界解的适定性，统一并推广 Hu–Tang(2016)、Luo(2020)、Fan–Hu–Tang(2023) 等。

## 符号速查

| 符号 | 含义 | 位置 |
| --- | --- | --- |
| (Bt), (Ft) | d 维布朗运动及增强滤子 | §1 |
| ξ | Rn 值 FT 可测终端值 | 式(2.1) |
| g, g^i | 生成元及其第 i 分量；z^i 为矩阵 z 第 i 行 | §2.1 |
| Y, Z | 解，取值 Rn × Rn×d | 式(2.1) |
| S∞(Rn), BMO(Rn×d) | 有界连续适应过程空间 / BMO 鞅空间 | §2.1 |
| M∞, L∞, E∞(r) | 各类随机参数可积性空间 | §2.1 |
| α, ᾱ, α̃, v | 非负随机过程参数（v∈BMO, α̃∈L∞, ᾱ∈M∞） | §2.1 |
| β, λ, λ̄, γ, γ̄, c, c̄, δ, θ | 常数参数；θ 为交互二次增长的小参数，θ∈[0,θ0] | §2.1 |
| φ(·) | y 的增长函数（非降连续） | §2.1 |

## 核心结果

> **定理 2.3（局部有界解，逐字）**：Let ξ ∈ L∞(Rn), α ∈ E∞(pγ) for some p > 1 and the generator g satisfy Assumptions (B1) and (B2). Then, there exist two constants ε0 > 0 and θ0 > 0 depending only on (kξk∞, kαkE∞(pγ), kᾱkM∞, kα̃kL∞, kvkBMO, n, γ, γ̄, λ, λ̄, c, c̄, δ, T, p) and φ(·) together with a bounded subset Bε0 ⊂ S∞[T−ε0,T](Rn) × BMO[T−ε0,T](Rn×d) such that when θ ∈ [0, θ0], BSDE (2.1) has a unique local solution (Y, Z) on the time interval [T−ε0, T] with (Y, Z) ∈ Bε0. Moreover, the above conclusion holds still for p = 1 when λ = 0 and θ0 = 0.
>
> *通俗解释*：交互二次生成元在有界终端下存在唯一局部有界解，θ 足够小。

> **定理 2.6（全局有界解，AB 条件）**：Let ξ ∈ L∞(Rn), α ∈ E∞(pγ) for some p > 1 and the generator g satisfy Assumptions (B1), (B2) and (AB). Then, there exists a positive constant θ0 > 0 depending only on (kξk∞, kαkE∞(pγ), kᾱkM∞, kα̃kL∞, kvkBMO, n, γ, γ̄, λ, λ̄, c, c̄, δ, T, p) and φ(·) such that when θ ∈ [0, θ0], BSDE (2.1) admits a unique global solution (Y, Z) ∈ S∞(Rn) × BMO(Rn×d). Moreover, the above assertion is still true for p = 1 when λ = 0 and θ0 = 0.
>
> *通俗解释*：加"正张成"先验有界条件 (AB) 后，局部解延拓为全局唯一解。

> **定理 2.10（全局有界解，C1a）**：Let ξ ∈ L∞(Rn), α ∈ E∞(pγ exp(βT)) for some p > 1 and the generator g satisfy Assumptions (C1a) and (B2). Then, there exists a positive constant θ0 > 0 … such that when θ ∈ [0, θ0], BSDE (2.1) admits a unique global solution (Y, Z) ∈ S∞(Rn) × BMO(Rn×d).
>
> *通俗解释*：用带符号的一边增长条件 (C1a) 替代 (AB)，允许 g 在 y 上一般增长。

> **定理 2.14（全局有界解，C1b）**：Let the generator g satisfy Assumptions (C1b) and (B2) with θ = 0. Then, for each ξ ∈ L∞(Rn), BSDE (2.1) admits a unique global solution (Y, Z) ∈ S∞(Rn) × BMO(Rn×d) on the time interval [0, T].
>
> *通俗解释*：将指标分 J1/J2/J3 三类结构，θ=0 时无需小参数即全局可解。

> **定理 2.20 / 2.22 / 2.23（可逆线性变换下的结构系统）**：分别对 g := f + z h(b^⊤ z)（b1≠0，f 满足 (2.9)–(2.11)）；g := f + z h(b^⊤ z) + a h̄(b^⊤ z)（a1≠0, b^⊤a≠0, h̄ 满足 (2.13), |f| ≤ α̃t+β|y|）；以及 (2.15) 定义的 g（含 h, h̄, a·|z^i|² 项）——均断言：for each ξ ∈ L∞(Rn), BSDE (2.1) admits a unique global solution (Y, Z) ∈ S∞(Rn) × BMO(Rn×d).
>
> *通俗解释*：借可逆矩阵 A 变换到 (C1b) 框架，解出三类特殊结构系统。

> **命题 2.24 / 推论 2.25（Jackson 开问题部分回答）**：n=2, d=1，二次生成元 g(z) = (z^⊤A1z + z^⊤k1 + l1, z^⊤A2z + z^⊤k2 + l2)，若存在 a,b,ι（a≠0）使 aA1+bA2 满足 (2.22) 且 α11=0, α22≠0 或 α11α22<0，则唯一全局解。推论：g = (z¹(z¹+z²)−(α/2)(z¹)², z²(z¹+z²)−(β/2)(z²)²)，若 1/α + 1/β = 1，则唯一全局解。
>
> *通俗解释*：对 Jackson[25] 开问题 6.25 的二维情形给出可解判据。

> **定理 2.26 / 2.27 / 2.31（全局无界解，BMO 终端）**：终端形如 ξ = ξ̄ + ∫₀^T Hs dBs（ξ̄∈L∞, H∈BMO），通过变换 ḡ(t,y,z) := g(t, y+∫₀^t Hs dBs, z+Ht) 化归到有界终端；在 (B1)/(D1)/(C1b) 加 (D2)（或 (AB)）及相应可积条件下，断言唯一全局解 (Y, Z) 使 (Y − ∫₀^· Hs dBs, Z) ∈ S∞(Rn) × BMO(Rn×d)（θ 需小于某 θ0）。
>
> *通俗解释*：BMO 无界终端经 Girsanov 型平移化为有界终端处理。

> **命题 A.1–A.3（附录，标量二次 BSDE）**：对生成元满足 (A1)/(A2)、(A3)、(A4) 的标量二次 BSDE，给出解 (Y,Z) 的 S∞×BMO 先验估计、极小/极大解存在性，及在 (A5) 下的唯一性。
>
> *通俗解释*：建立带无界随机参数的标量二次 BSDE 工具箱，供主定理逐分量调用。

## 证明骨架

- **武器库**：BMO 鞅理论（Kazamaki）、John–Nirenberg 不等式、Girsanov 变换、Hölder/Jensen/Gronwall 不等式、比较定理（极小/极大解）、收缩映射不动点、精细归纳法、先验估计、可逆线性变换。
- **核心技巧**：在定理 2.3 中，于有界解空间的闭凸子集 Bε 上构造新颖的收缩映射 Γ：逐分量（i=1,…,n 归纳）求解标量 BSDE (2.3)，其生成元 f^i 依次代入已求得的 Z¹,…,Z^{i−1}（构造灵感来自 Luo[37]）——这与 [24,17] 中需用 V¹,…,V^{i−1} 的做法不同，故能覆盖更多交互项。

## 阅读门槛

- BSDE 基础：Pardoux–Peng(1990) 的适应解存在唯一性（Lipschitz 情形）；二次 BSDE 的 Kobylanski(2000) 结果。
- BMO 鞅与 Kazamaki 理论、Girsanov 变换（随机指数过程）。
- 熟悉 S^p、BMO、M∞、L∞、E∞(r) 等随机过程空间及其嵌入关系（Jensen/John–Nirenberg/Hölder）。
- 多维二次 BSDE 文献脉络：Hu–Tang(2016)、Luo(2020)、Fan et al.(2023)、Frei–Dos Reis 反例。

## 与其他文献的关联

- 继承 Pardoux–Peng[38](1990) 的 BSDE 框架，及 Kobylanski[30](2000)、Briand–Hu[7,8](2006/2008) 的标量二次/无界解研究。
- 直接改进并统一：Hu–Tang[24](2016，对角二次)、Luo[37](2020，三角二次)、Fan et al.[17](2023，次二次增长)、Fan et al.[19]（Volterra 系统）——见 Remark 2.4/2.12/2.15。
- 与 Jackson–Žitković[26]、Jackson[25] 相比：定理 2.6 免去 Malliavin 正则假设；(AB) 沿用自 Xing–Žitković[45]/Escauriaza et al.[14]；推论 2.25 部分回答 Jackson[25, 开问题 6.25]。
- 与 Jamneshan et al.[27]、Kramkov–Pulido[34]、Frei–Dos Reis[21]（反例）及 Frei[20] 的"小终端/小θ"结果对比，见定理 2.10 后注记与 Remark 2.28。

## 备注

- 提取质量：文本为 pdftotext 提取（非扫描 OCR），正文与公式基本完整；主要瑕疵为排版换行导致的上下标粘连，如 (AB)(ii) 的 "a>k g(ω,t,y,z) ≤ α̃t(ω) + γ|a>k z|²" 应为 a_k^⊤（转置）[UNCERTAIN: 转置符号与下标粘连]；定理 2.3 中 "S∞[T−ε0,T]" 的区间下标断行 [UNCERTAIN: 下标排版]；定理 2.26 中出现 "S∞(RRn)" 应为 S∞(Rn) [UNCERTAIN: 疑似 OCR 重复字母]。
- 缺失公式位置：未逐条核对证明主体（§3–§5 共约 5500 行）中的中间估计式；(B1)/(B2)/(C1a)/(C1b)/(D1)/(D2) 假设中的上下确界与求和下标 [UNCERTAIN: 复杂上下标易错]，引用时建议回查 PDF 原式。
- 本笔记仅覆盖 §1–§2 主定理与附录命题陈述，未深入 §3–§5 证明细节。
