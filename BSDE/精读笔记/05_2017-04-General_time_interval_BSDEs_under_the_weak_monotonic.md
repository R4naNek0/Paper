# General time interval BSDEs under the weak monotonicity condition and nonlinear decomposition for general g-supermartingales — 精读笔记（/paper.core L2）

- **数据来源**：原文全文（pdftotext 提取）
- **论文元信息**：Lishun Xiao & Shengjun Fan，*Stochastics*（An International Journal of Probability and Stochastic Processes），2017，Vol. 89, No. 5, 786–816；DOI: 10.1080/17442508.2017.1282956（发表于 2017 年 1 月 30 日上线）。作者单位：中国矿业大学数学学院（China University of Mining and Technology, Xuzhou）。
- **一句话定位**：把多维 BSDE 的存在唯一性从有限区间推广到一般时间区间（含 T=∞ 与随机停时终止时刻），生成元 y 方向满足"弱单调性 + 一般增长"、z 方向 Lipschitz，且二者均**非关于 t 一致**；并由此证明一般连续 g-上鞅的非线性 Doob–Meyer 分解。是对 Fan–Jiang(2013)、Chen–Wang(2000)、Peng(1999) 等工作的直接推进。

## 符号速查

| 符号 | 含义 | 位置 |
| --- | --- | --- |
| (Bt)t≥0 | d 维标准布朗运动，(Ft) 为其自然 σ-代数流（右连续、完备，FT=F，0≤T≤∞） | §1 |
| BSDE (ξ,T,g+dV) | yt = ξ + ∫_t^T g(s,ys,zs)ds + ∫_t^T dVs − ∫_t^T zs dBs | 式 (1) |
| S² = S²(0,T;Rᵏ) | 适应连续过程空间，范数 ‖Y‖S² = E[sup_t \lvert Yt \rvert ²]^{1/2} < ∞ | §1 |
| M² = M²(0,T;Rᵏˣᵈ) | 循序可测过程空间，‖Z‖M² = E[∫_0^T \lvert Zt \rvert ²dt]^{1/2} < ∞（Banach 空间） | §1 |
| V² = V²(0,T;Rᵏ) | 分量有界变差的适应连续过程，V0=0，E[ \lvert V \rvert _T²] < ∞， \lvert V \rvert _T 为全变差 | §1 |
| \lvert z \rvert | 矩阵范数， \lvert z \rvert := √Tr(zz*)，z* 为转置 | §1 |
| S | 非减凹连续函数 κ: R₊→R₊，κ(0)=0，x>0 时 κ(x)>0 且 ∫_{0+} κ⁻¹(x)dx = ∞（Osgood 型） | §1 |
| (A) | ⟨y, g(t,y,z)⟩ ≤ μ(t)κ( \lvert y \rvert ²) + λ(t) \lvert y \rvert \lvert z \rvert + ft \lvert y \rvert ，且 ∫_0^T(μ(t)+λ²(t))dt < ∞ | §2 |
| (H1)–(H6) | 生成元六条假设（见下"核心结果"前） | §3.1, §5 |

**假设清单**（据原文逐字/线性化）：

- (H1) E[(∫_0^T |g(t,0,0)| dt)²] < ∞；
- (H2) dP×dt−a.e.，对每个 z∈Rᵏˣᵈ，y ↦ g(t,y,z) 连续；
- (H3) y 方向一般增长：对每个 r∈R₊，ψr(t) := sup_{|y|≤r} |g(t,y,0)−g(t,0,0)| ∈ L¹([0,T]×Ω)；
- (H4) y 方向弱单调（非关于 t 一致）：存在 ρ∈S 使 dP×dt−a.e.，⟨y₁−y₂, g(t,y₁,z)−g(t,y₂,z)⟩ ≤ u(t)ρ(|y₁−y₂|²)；
- (H5) z 方向 Lipschitz（非关于 t 一致）：|g(t,y,z₁)−g(t,y,z₂)| ≤ v(t)|z₁−z₂|；
- 其中 u(·), v(·): [0,T]→R₊ 满足 ∫_0^T (u(t)+v²(t))dt < ∞。
- (H6)（§5 追加）dP×dt−a.e.，对每个 y∈R，g(t,y,0) ≥ −g_t − u(t)|y|，其中 (g_t) 非负、循序可测且 E[(∫_0^T g_t dt)²] < ∞。

## 核心结果

**Lemma 2（Gronwall 不等式）**：设 0≤T≤∞，α(·) 递减，∫_0^T β(t)dt < ∞，h(·) 连续且 sup h(t) < ∞，且 h(t) ≤ α(t) + ∫_t^T β(s)h(s)ds；则 h(t) ≤ α(t) e^{∫_t^T β(s)ds}。
*通俗解释*：带递减自由项的反向 Gronwall 型估计，用于先验界的归纳。

**Lemma 3（Bihari 不等式）**：设 0≤t≤T≤∞，∫_t^T β(s)ds < ∞，sup h(r) < ∞ 且 h(r) ≤ ∫_r^T β(s)κ(h(s))ds，κ∈S；则 h(r)=0 对所有 r∈[t,T]。
*通俗解释*：Osgood 型函数 κ 的积分发散 ⟹ 满足积分不等式的非负函数必恒为零。

**Proposition 4（先验估计）**：设 0≤T≤∞，g 满足 (A)，(yt,zt) 为 BSDE(1) 的解，则存在 c>0，对每个 0≤u≤t≤T：
E[|y*_{t,T}|² | Fu] + E[∫_t^T |zs|² ds | Fu] ≤ c e^{∫_t^T λ²(s)ds} { E[|ξ|²|Fu] + E[|V|²_T|Fu] + ∫_t^T μ(s)κ(E[|ys|²|Fu]) ds + E[(∫_t^T fs ds)²|Fu] }
（原文式内系数/记号有乱码，整体结构如上，个别指数项 [UNCERTAIN: 原文指数上标排版]）。
*通俗解释*：解 (y,z) 由终端 ξ、变差 V、增长 μ、λ 和扰动 f 统一控制。

> **定理 6（逐字原文）**：Assume that 0 ≤ T ≤ ∞ and g satisfies assumptions (H1)–(H5). Then for each ξ ∈ L2(FT; Rk) and (Vt)t∈[0,T] ∈ V2, BSDE (1) admits a unique solution (yt, zt)t∈[0,T] in S2 × M2.
>
> *通俗解释*：一般时间区间（含无穷）多维 BSDE，在弱单调+一般增长+Lipschitz 下解存在唯一。

**Proposition 10**：g 不依赖 z 且满足 (H1)–(H4) 时，BSDE(1) 在 S²×M² 有解（存在性主引理）。

> **定理 12（逐字原文）**：Assume that 0 ≤ T ≤ ∞, (Vt)t∈[0,T] ∈ V2, τ is a (Ft)-stopping time valued in [0, T], ξ ∈ L2(Fτ, Rk), and the generator g satisfies (H1)–(H5). Define gτ(ω,t,y,z) := 1_{t≤τ} g(ω,t,y,z) … and V̅t := Vt 1_{t≤τ} + Vτ 1_{t>τ} … Then the following three assertions hold:
> (i) BSDE (ξ, T, gτ + dV̅) admits a unique solution (ȳt, z̄t)*{t∈[0,T]} in S2×M2, ȳt 1*{t≥τ} = ξ and z̄t 1_{t≥τ} = 0, dP×dt−a.e.. In particular, (yt, zt) := (ȳt, z̄t) solves BSDE (ξ, τ, g + dV) …
> (ii) … (iii) BSDE (ξ, τ, g + dV) admits a unique solution (yt, zt) in S2×M2 …
>
> *通俗解释*：把终止时刻换成停时，解仍存在唯一，且停时后 y 冻结在 ξ、z 恒为 0。

> **定理 13（逐字原文，比较定理）**：Assume that 0 ≤ T ≤ ∞, σ and τ are two (Ft)-stopping times with 0 ≤ σ ≤ τ ≤ T, ξ and ξ′ ∈ L2(Fτ; R), V· and V′· ∈ V2(0,T;R), g and g′ are two generators …, and (y·, z·) (resp. (y′·, z′·)) is a solution of BSDE (ξ, τ, g+dV) (resp. (ξ′, τ, g′+dV′)). If (i) ξ ≤ ξ′; (ii) g satisfies (H4)–(H5) and dP×dt−a.e., g(t, y′t, z′t) ≤ g′(t, y′t, z′t); (iii) (Vt − V′t)_{t∈[0,T]} is decreasing on [σ, τ], then for each (Ft)-stopping time δ with δ ∈ [σ, τ], we have yδ ≤ y′δ. Particularly, yσ ≤ y′σ.
>
> *通俗解释*：终端、生成元、变差三项都有序则一维 BSDE 解保持有序。

> **定理 18（逐字原文，非线性 Doob–Meyer 分解）**：Assume that (H1)–(H6) hold and Y· ∈ S2(0,T;R) is a continuous g-supermartingale on [0, T]. Then Y· is a g-supersolution on [0, T] with terminal condition YT, i.e. there exists a unique continuous increasing process (Vt)*{t∈[0,T]} ∈ V2(0,T;R) such that (Yt)*{t∈[0,T]} coincides with (yt)*{t∈[0,T]}, where (yt, zt)*{t∈[0,T]} is the unique solution of BSDE (YT, T, g + dV).
>
> *通俗解释*：连续 g-上鞅必可写成 g-解减一个增过程（非线性 Doob–Meyer）。

**Corollary 20**：若 g 不依赖 y 且满足 (H1)、(H5)，则连续 g-上鞅有分解 Yt = Mt − Vt，其中 M 为连续 g-鞅、V 为连续增过程。

## 证明骨架

- **武器库**：
  - Osgood 型函数族 S（∫_{0+}κ⁻¹ = ∞）＋ Bihari 不等式（Lemma 3）＋反向 Gronwall（Lemma 2）；
  - Itô 公式 + BDG 不等式（推导先验估计 Proposition 4）；
  - 卷积磨光（φn := nᵏφ(nx)）构造关于 y 的局部/全局 Lipschitz 逼近 gn；
  - 全区域截断 g(t,y,z)（而非仅截断 g(t,0,0)），并配 θr 截断与 ψ_{r+1}(t) 阈值；
  - Picard 迭代 + 区间细分 [Tj,Tj+1]（利用 ∫u、∫v² 的小性，T=∞ 时也有限分割）；
  - 停时技术（τq := inf{t: |y¹t|+|Yt|≥q}∧T）处理 y 的一般增长；
  - 新过程空间 H(0,T;R)（X 的 H-范数 = E∫|Xt|dt）上的弱序列紧性 + L¹ 弱收敛（替代 Peng(1999) 在 M² 中的弱紧性）；
  - 单调极限（yⁿ 单调 ↑ → y）＋ Dini 定理（处理 T=∞ 的一致收敛）。
- **核心技巧**：一句话——存在性中**直接对 g 在整体区域截断**（首尾两步简化了 Pardoux(1999)、Fan–Jiang(2013) 的"先截 g(·,0,0)+卷积取局部 Lipschitz、再截 y 取全局 Lipschitz"三段式）；分解定理中则以停时 + 新空间 H 的弱收敛替代 M² 弱紧性，绕过无穷时间与一般增长带来的失紧问题。

## 阅读门槛

- 随机分析基础：布朗运动、Itô 积分、Itô 公式、BDG 不等式、停时、可料/循序 σ-代数、连续鞅的 Doob–Meyer 分解；
- BSDE 经典结果：Pardoux–Peng(1990) 的 Lipschitz 情形、Chen–Wang(2000) 的无穷区间存在唯一性；
- 单调性/Osgood 条件：κ∈S 的 ∫_{0+}κ⁻¹=∞ 发散条件、Bihari 与 Gronwall 不等式的用法；
- 泛函分析：L¹、L² 空间上的有界线性泛函与弱收敛、一致可积性、弱序列紧性判据；
- 非线性期望/ g-期望的基本概念（g-鞅、g-上鞅、g-上解的定义）。

## 与其他文献的关联

（仅据文中引用与叙述）

- **Pardoux–Peng [20] (1990)**：有限区间、生成元关于 (y,z) 一致 Lipschitz 的奠基性存在唯一性；本文是其弱化条件、推广时间区间的延伸。
- **Chen–Wang [5] (2000)**：把 Pardoux–Peng 推广到一般（无穷）时间区间并得到 g-鞅收敛定理；本文定理 6 证明中调用其 Theorem 1.2（T≤∞ 情形）。
- **Fan–Jiang [9] (2013)**：多维 BSDE 的弱单调性 + 一般增长条件；本文沿用其弱单调框架，但把 u(t)、v(t) 从有界常数放宽为仅可积（非关于 t 一致），且同样借鉴其卷积逼近方法。
- **Klimsiak [12] (2013)**：一维、y 单调 + 一般增长、z Lipschitz（为反射 BSDE）；本文把结论推广到多维 + 非一致系数，并指出其原结论在 T=∞ 失效。
- **Peng [21] (1999)**：g-鞅/ g-上鞅与非线性 Doob–Meyer 分解的奠基工作；本文定理 18 是其弱化生成元条件（弱单调+一般增长+无穷区间）的推广，并指出 Peng 的 M² 弱紧方法在本设置下失效。
- **Shi–Jiang–Ji [25] (2014)**：一致连续生成元的连续 g-上鞅非线性分解；本文指出其 Proposition 11 技巧在一般增长下失效。
- **Cao–Yan [4] (1999)**：比较定理的 tanaka 型技巧（Lemma 2.2），定理 13 证明沿用。
- **Bayraktar–Yao [1] (2015)**：其 Lemma A.3 用于证明 qV 增性（定理 18 第三、四步）。

## 备注

- 提取质量：pdftotext 对**文字与定理陈述**还原良好，定理 6/12/13/18 的英文陈述几乎逐字可读；但**公式与矩阵排版大面积乱码**，如式 (1) 的积分、Definition 1、Proposition 4 的估计式、Example 8/9 的生成元表达式等，多处上下标、指数、分段函数（1_{0≤x≤δ} 等）需人工复原。
- 缺失/乱码公式位置：摘要式 (1) 的 dVs、zsdBs 项；§1 中 S、M²、V² 空间范数定义；Proposition 4 结论式（含 e^{∫λ²} 系数与条件期望指数）；Example 8 的 h(x) 分段定义与 g 表达式；Example 9 的二维向量生成元矩阵写法；定理 18 证明第四步 Itô 公式展开与 (41)–(45) 各式。
- 未在文本中确认的元信息：无 arXiv 编号（仅见出版社 DOI 与页码）；期刊卷期页码以首页标题栏 "VOL. 89, NO. 5, 786–816" 为准。
