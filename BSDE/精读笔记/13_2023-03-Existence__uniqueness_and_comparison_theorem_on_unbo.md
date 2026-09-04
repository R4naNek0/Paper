# Existence, uniqueness and comparison theorem on unbounded solutions of scalar super-linear BSDEs — 精读笔记（/paper.core L2）

- **数据来源**：原文全文（pdftotext 提取，第 335–375 页对应行）
- **论文元信息**：
  - 期刊：Stochastic Processes and their Applications 157 (2023) 335–375
  - 作者：Shengjun Fan（中国矿业大学）、Ying Hu（复旦大学 / Univ. Rennes）、Shanjian Tang（复旦大学）
  - DOI：10.1016/j.spa.2022.12.008；MSC 60H10
  - 收稿 2021-07-27，修回 2022-11-13，接受 2022-12-15
- **一句话定位**：研究生成元 g 在 (y, z) 上呈超线性增长（形如 |y||ln|y||^δ + |z||ln|z||^λ）的标量 BSDE 的无界解的存在性、唯一性与比较定理，按增长指数 k := max(δ, λ+1/2, 2λ) 分四个区间给出"合理最弱"的可积性条件，是 Pardoux–Peng(1990)、Briand–Hu、范胜君等线性/二次增长 BSDE 理论的超线性推广。

## 符号速查

| 符号 | 含义 | 位置 |
| --- | --- | --- |
| BSDE(ξ, g) | 终值 ξ、生成元 g 的倒向随机微分方程（(1.1)） | 引言 |
| class (D) | 过程族 {X_τ} 对一切停时 τ 一致可积 | 引言 |
| α_t, β, γ, δ, λ, c | 超线性增长条件参数（α· 为可积适应过程，δ∈[0,1]，λ≥0） | (1.2) |
| k := δ ∨ (λ+1/2) ∨ (2λ) | 增长幂参数 | (2.1) |
| ψ(x, µ; k) := x exp(µ (ln(1+x))^k) | 刻画可积性/解正则性的关键函数 | (2.2) |
| µ_{k,ε}(·), µ_{k,0}(·) | 由 ODE (2.6)/(2.7) 定义的阈值函数 | §2.1 |
| β_{k,ε}, γ_{k,ε} | 与 β, γ 及参数区间有关的截断常数 | §2.1 |
| (EX1)/(EX2) | 存在性假设：y 一般增长 + z 二次增长 / 单边超线性增长 | §2.2 |
| (UN1)/(UN2)/(UN3) | 唯一性假设：y 单边 Osgood / z 一致连续 / (y,z) 凸或凹 | §2.2 |

## 核心结果

> **定理 2.4（逐字原文，公式线性化）**：Let the generator g satisfy assumptions (EX1) and (EX2), the constant k be defined in (2.1)... If there exists a constant µ > µ_{k,0}(T) (resp. µ ≥ µ_{k,0}(T) in the case of k = δ = 1/2) such that
> E[ ψ( |ξ| + ∫_0^T α_t dt, µ; k ) ] < +∞,
> then BSDE(ξ, g) has a solution (Y_t, Z_t)_{t∈[0,T]} such that ψ(|Y·| + ∫_0^· α_s ds, µ_{k,ε}(·); k) belongs to class (D)... Moreover: (i) k=1/2 时 (Y·,Z·)∈S^p×M^p 对每 p∈(0,1)，若 g 再满足 (UN1)+(UN2) 或 (UN3) 则解唯一；(ii) k∈(1/2,1) 时 (Y·,Z·)∈S^p×M^p 对每 p∈(0,1)，g 满足 (UN3) 时唯一；(iii) k=1 时 (Y·,Z·)∈S^p×M^p 对每 p∈[1,1+ε)，若 g=g1+g2，g1 满足 (UN1)+(UN2)、g2 满足 (UN3) 则唯一；(iv) k>1 时 (Y·,Z·)∈S^p×M^p 对每 p≥1，且当 (2.16) 对某 µ > 2q3^{k−1} µ_{k,0}(T)（q≥1）成立时存在解，g 满足 (UN3) 时唯一。
>
> _通俗解释_：终值 ξ 的 Orlicz 型可积性越强、指数 k 越大，解的可积性越好；四个区间的临界可积性条件各不相同。

> **定理 2.11（逐字原文）**：Assume that g (resp. g′) satisfies assumptions (UN1) and (UN2), and P-a.s., 1_{Yt>Yt′} [ g(t,Yt′,Zt′) − g′(t,Yt′,Zt′) ] ≤ 0 (resp. ...). If both processes ψ(|Y·|, µ·; k) and ψ(|Y·′|, µ·; k) belong to class (D) for some k ≥ 1/2, where µ· be any nonnegative, strictly increasing and continuous function defined on [0,T] with µ_0 = 0, then P-a.s., for each t∈[0,T], Yt ≤ Yt′.
>
> _通俗解释_：在 y 上 Osgood、z 上一致连续（线性增长）情形下给出比较定理。

> **定理 2.12（逐字原文）**：Assume that g (resp. g′) satisfies assumptions (EX2) and (UN3), and P-a.s., g(t,Yt′,Zt′) ≤ g′(t,Yt′,Zt′) (resp. ...). If one of the following three assertions holds, then P-a.s., Yt ≤ Yt′ for all t∈[0,T]: (i) k=δ=1/2 且两解 ψ(|Y·|+∫α, µ_{k,0}(·);k) ∈ class(D)；(ii) k∈[1/2,1] 且对某 ε>0 两解 ψ(|Y·|+∫α, µ_{k,ε}(·);k) ∈ class(D)；(iii) k>1 且对某 ε>0 与 q≥1 两解 ψ(|Y·|+∫α, 2q3^{k−1}µ_{k,ε}(·);k) ∈ class(D)。
>
> _通俗解释_：在 (y,z) 凸（或凹）生成元下，借助 θ-技巧得到比较定理。

> **定理 2.13（逐字原文）**：Assume that the generator g = g1 + g2 (resp. g′ = g1′ + g2′), g1 (resp. g1′) satisfies (UN1) and (UN2), g2 (resp. g2′) satisfies (EX2) and (UN3), and (2.19) holds. If k = 1 and there exists an X ∈ L^1 such that P-a.s., for some ε>0, ψ(|Yt|+|Yt′|, µ_{k,ε}(t); k) ≤ E[X|Ft], t∈[0,T], then P-a.s., Yt ≤ Yt′ for all t∈[0,T].
>
> _通俗解释_：k=1 临界情形下把 Osgood 项与凸项叠加，比较定理仍成立。

> **命题 2.15 / 定理 2.16（逐字原文，金融应用）**：Proposition 2.15. Assume that the generator g(z): R^d→R is a concave function satisfying g(0)=0 and |g(z)| ≤ a + γ|z| |ln|z||^λ ... Then, for each ξ∈E^λ(F_T), BSDE(ξ,g) admits a unique solution (Yt,Zt) such that Yt∈E^λ(F_t). Theorem 2.16. For each t∈[0,T], the mapping U_t^g(·): E^λ(F_T)→E^λ(F_t) ... satisfies (i) Positivity; (ii) Monotonicity; (iii) Monetary: U_t^g(ξ+η)=U_t^g(ξ)+η; (iv) Concavity.
>
> _通俗解释_：由 BSDE 解定义一族动态效用算子，满足正性、单调、货币性与凹性。

## 证明骨架

- **武器库**：局部化程序（源自 [36] Briand–Hu 的 localization procedure）；截断单调逼近 ξ^{n,p}:=ξ^+∧n−ξ^−∧p、g^{n,p}:=g^+∧n−g^−∧p 构造有界最小（最大）解（命题 3.1 单调稳定性）；Itô–Tanaka 公式；构造辅助函数 φ(s,x)（命题 3.4，形如 (x+k_ε)exp(µ_{k,ε}(s)(ln(x+k_ε))^k + ν_{k,ε}(s))）解不等式 (3.3)/(3.4)/(3.6) 得先验估计（命题 3.6）；Young 不等式与代数不等式（命题 3.2，处理 |z||ln|z||^λ 项）；Lambert W 函数求 ODE 显式解与上界；Gronwall 不等式；Girsanov 定理与测度变换（定理 2.13）；θ-技巧（源自 [37]，估计 Y−θY′ 而非差值）；Osgood 条件的积分发散性 (3.34)。
- **核心技巧**：把超线性增长"吸收"进一个指数型测试函数 φ(s,x)（其 ODE 阈值 µ_{k,ε} 恰好编码参数 β,γ,δ,λ 的作用），使 Itô–Tanaka 展开后漂移项非负，从而把无界解的先验界归结为终值的 ψ 可积性。

## 阅读门槛

- 前置背景：BSDE 基础（Pardoux–Peng 1990 适应解、S^p×M^p 空间、class(D)）；Itô 公式与 Tanaka–Meyer 局部时；比较定理与粘性解/动态风险度量的基本语言；Orlicz 空间与 L ln L、L^p、exp(L^ε) 可积性的包含关系；凸生成元二次 BSDE（Kobylanski、Briand–Hu）的 θ-技巧与 Girsanov 变换。
- 本文章节：§2 陈述全部结果（含 4 个实例 2.6–2.9 与金融应用 2.5），§3 证明，附录为技术命题 3.1–3.8。

## 与其他文献的关联

- 继承 Pardoux–Peng(1990) 的 BSDE 框架（[2]），并沿用 Briand–Hu [36] 的局部化程序与 [37] 的凸生成元 θ-技巧。
- 线性增长（δ=λ=0）情形已由 Hu–Tang [10]、Buckdahn–Hu–Tang [11]、Fan–Hu [12]、O–Kim–Pak [13] 得到 L exp(µ√(2 log(1+L))) 型"最弱"可积性条件；本文将其推广到超线性 (1.2)，并指出 λ=δ=0 时 [12] 经指数平移可得 µ 可取到临界值（优于本文该特例）。
- δ=1、λ=1/2（k=1 特例）的良定性见 Bahlali 等 [25,26]；本文用更弱的终值条件（L^p, 1<p≤2 对 p>2）与更弱的生成元假设取代之。
- 二次/超二次生成元见 Kobylanski [35]、Briand–Hu [36–37]、Delbaen–Hu–Bao [48]、Fan–Hu [53]（次二次生成元，需 exp(µL^r) 可积）；比较定理改进了 [5,11–13] 的相应结果。
- 唯一性机制依赖 Osgood 条件（[19] Fan–Jiang 弱单调、[22] Fan 一般假设）与凸性唯一性（[37,38]）。

## 备注

- 提取质量：正文结构、定理编号、假设 (EX1)–(UN3) 完整；大量公式因 pdftotext 丢失上下标与绝对值竖线。典型乱码：`|z∥ ln |z∥λ` 应为 |z|·|ln|z||^λ（竖线/绝对值符号丢失）；`β1δ=1/2`、`ε10≤δ<1/2` 等为指示函数 1_{δ=1/2}、1_{0≤δ<1/2} 的下标丢失 [UNCERTAIN]；(2.6)/(2.7) 的分段 ODE 定义与 (2.9)–(2.15) 的 Lambert W / Gronwall 推导有较多乱码，未逐一复原，仅按文字判断其功能为阈值 µ 的显式解与上界。
- 缺失公式位置：§2.1 的 β_{k,ε}/γ_{k,ε} 分段定义、ODE (2.6)(2.7)、命题 3.2 的 (3.5) 与命题 3.4 的 k_ε、∆ 定义处上下标严重损坏，建议对照原始 PDF 核验。
