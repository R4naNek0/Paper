# Bounded solutions for general time interval BSDEs with quadratic growth coefficients and stochastic conditions — 精读笔记（/paper.core L2）

- **数据来源**：原文全文（pdftotext 提取）
- **论文元信息**：Stochastics and Dynamics, Vol. 18, No. 5 (2018), 1850034 (24 pages)；作者 Huan-Huan Luo（骆欢欢）与 Sheng-Jun Fan（范胜君），中国矿业大学；DOI: 10.1142/S021949371850034X；Received 11 April 2016 / Revised 4 June 2017 / Accepted 15 July 2017 / Published 17 August 2017。
- **一句话定位**：在一般时间区间（T 可为 +∞）上，对带**随机系数**（t, ω 依赖）的二次增长生成元 g 与有界终值 ξ，建立有界解的存在性、唯一性、比较定理与单调稳定性，放宽了前人（Kobylanski、Lepeltier–San Martin、Briand–Hu、范胜君）对系数"常数或确定性函数"的限制。

## 符号速查

| 符号 | 含义 | 位置 |
| --- | --- | --- |
| T | 时间终端，0 < T ≤ +∞ | §1 |
| d | Brown 运动维数 | §1 |
| (Ω, F, P) / (Ft) | 完备概率空间及自然 σ 域流 | §1 |
| ξ | FT-可测终端条件 | §1 |
| g(ω,t,y,z) | 生成元，对 (y,z) a.e. 连续 | §1 |
| (yt, zt) | BSDE 的解（y 连续、z∈L²(0,T)） | Def 2.1–2.2 |
| Lp / L∞ | 可积/有界随机变量空间 | §2 |
| S p / S∞ | 连续适应过程空间 / 有界连续适应过程 | §2 |
| M² | 使 E[(∫0T \|Zt\|²dt)^(1/2)] < +∞ 的过程空间（Hilbert） | §2 |
| BMO-martingale | ∫0· zs·dBs 为有界平均振荡鞅 | §2 |
| ΣT | 所有 (Ft)-停时 τ ∈ [0,T] | §2 |
| Lp([0,T]; R+) | 确定性函数 u(t) 使 ∫0T u^p dt < +∞ | §2 |
| L∞(Ω; Lp([0,T]; R+)) | 过程 ūt(ω) 使 ‖∫0T ūs^p ds‖∞ < +∞ | §2 |
| (A1)–(A4), (H1)–(H6) | 各层生成元假设 | §2, §4–6 |

## 核心结果

> **命题 3.1（单调稳定性，逐字原文）**：Assume that 0 < T ≤ +∞ and that for each n ≥ 1, ξⁿ ∈ L∞(Ω, FT, P), gⁿ is a generator and (yⁿ_t, zⁿ_t)_{t∈[0,T]} is a bounded solution of yⁿ_t = ξⁿ + ∫_t^T gⁿ(s, yⁿ_s, zⁿ_s)ds − ∫_t^T zⁿ_s·dB_s. Assume further that dP×dt-a.e., yⁿ_· ↑ y_· (resp. yⁿ_· ↓ y_·) as n → +∞, and that there exist two constants A, μ ∈ R₊ and a nonnegative process (f_t) with E[∫_0^T |f_t|dt] < +∞ such that dP×dt-a.e., sup_{n≥1}|yⁿ_t(ω)| ≤ A and ∀(y,z) ∈ [−A,A]×R^d, sup_{n≥1}|gⁿ(ω,t,y,z)| ≤ f_t(ω) + μ|z|². Then {(zⁿ_t)} admits a convergence point z_· in M². Furthermore, if {gⁿ} converges locally uniformly to a generator g, then (y_t, z_t) is a bounded solution of BSDE(ξ,g) with ξ = y_T.
>
> _通俗解释_：单调有界的解序列，在 z 二次增长一致界下，其 z 部分强收敛，极限即极限生成元的解。

> **定理 4.1（比较定理，逐字原文）**：Assume that 0 < T ≤ +∞, ξ, ξ′ ∈ L∞(Ω, FT, P), both g and g′ are two generators of BSDEs, and (y_·, z_·) and (y′_·, z′_·) are, respectively, a bounded solution of BSDE(ξ,g) and BSDE(ξ′,g′) such that ∫_0^· z_s·dB_s and ∫_0^· z′_s·dB_s are BMO-martingales. If dP-a.s., ξ ≤ ξ′ and one of the following two statements holds true: (i) g satisfies (H1)–(H2), and 1_{y_t>y′_t}(g(t,y′_t,z′_t) − g′(t,y′_t,z′_t)) ≤ 0, dP×dt-a.e.; (ii) g′ satisfies (H1)–(H2), and 1_{y_t>y′_t}(g(t,y_t,z_t) − g′(t,y_t,z_t)) ≤ 0, dP×dt-a.e., then for each t ∈ [0,T], y_t ≤ y′_t, dP-a.s.
>
> _通俗解释_：有界解框架下，终端序与"交点处生成元序"保证解有序。

> **定理 5.1（存在性，逐字原文）**：Assume that 0 < T ≤ +∞, ξ ∈ L∞(Ω, FT, P) and the generator g satisfies (H3) and (H4). Then BSDE(ξ,g) admits a bounded solution (y_t, z_t)_{t∈[0,T]}, and ∫_0^· z_s·dB_s is a BMO-martingale.
>
> _通俗解释_：半线性增长(关于y)+二次增长(关于z)下有界解存在。

> **定理 5.2（存在唯一，逐字原文）**：Assume that 0 < T ≤ +∞, ξ ∈ L∞(Ω, FT, P) and the generator g satisfies (H1), (H2) and (H4) with g(·,0,0) ∈ L∞(Ω; L¹([0,T]; R₊)). Then BSDE(ξ,g) admits a unique bounded solution (y_t, z_t)_{t∈[0,T]}, and ∫_0^· z_s·dB_s is a BMO-martingale.
>
> _通俗解释_：加上随机 Lipschitz 型 (H1)(H2) 后解唯一。

> **定理 6.1（最小/最大解，逐字原文）**：Assume that 0 < T ≤ +∞, ξ ∈ L∞(Ω, FT, P), and the generator g satisfies (H5) (resp. (H6)). Then BSDE(ξ,g) admits a minimal (resp. maximal) bounded solution (y_t, z_t)_{t∈[0,T]}, and ∫_0^· z_s·dB_s is a BMO-martingale.
>
> _通俗解释_：单边受限二次增长下存在最小(最大)有界解。

> **推论 5.1（逐字原文）**：Assume that 0 < T ≤ +∞, b ∈ R₊, f_·, u_· ∈ L∞(Ω; L¹([0,T]; R₊)) and v_· ∈ L∞(Ω; L²([0,T]; R₊)). Then Y_t = b + ∫_t^T (f_s + u_s|Y_s| + v_s|Z_s|)ds − ∫_t^T Z_s·dB_s admits a unique bounded solution (Y_t, Z_t), which is also the unique L² solution. Moreover, (−Y_t, −Z_t) is the unique bounded/L² solution of Ȳ_t = −b − ∫_t^T (f_s + u_s|Ȳ_s| + v_s|Z̄_s|)ds − ∫_t^T Z̄_s·dB_s.
>
> _通俗解释_：线性增长型(带绝对值)BSDE 有唯一有界解，且负对偶可用。

## 证明骨架

- **武器库**：
  1. **单调逼近 + 截断**：gⁿ := g ∧ (ne^(−t)) 从下方单调逼近 g（定理 5.1）；g^{n,p} := g⁺∧(ne^(−t)) − g⁻∧(pe^(−t)) 处理一般情形（§5 末）。
  2. **光滑截断 κⁿ(·)**：κⁿ(z)=1 (|z|≤n)、=0 (|z|≥n+1)，构造 gⁿ := (−f−u|y|−v|z|)(1−κⁿ(ze^{t/2})) + κⁿ(ze^{t/2})·g 单调升逼近（定理 6.1）。
  3. **Itô 公式**：对 e^{3μy}（命题 3.1 第一步）、Ψ(x)= (e^{16μx}−1)/16μ − x（第二步）、e^{3k|y|}（引理 5.1）取期望/条件期望，得 z 的二次矩一致估计。
  4. **弱收敛 + Lemma 3.1**：y·z· 在 M² 中弱收敛技巧，配合弱下极限取极限。
  5. **Tanaka 公式 + Girsanov + BMO**：比较定理中构造 BMO 鞅 Mⁿ 及其随机指数 E(Mⁿ)，换测度 Pⁿ 后取条件期望得 Ŷ⁺_t ≤ aⁿ → 0（引 Kazamaki[14] 定理 2.3、3.6）。
  6. **先验估计 / 比较**：引理 5.2 用 Lemma 2.3 与定理 4.1 给出 |y_t| ≤ y⁵_t 的屏障解。
  7. **粘性解/PDE-ODE 方法被指出失效**：作者强调在随机框架下，Lepeltier–San Martin[16]、Kobylanski[15]、Fan[9] 的 PDE/ODE 思想不再有效，须用新思路。

- **核心技巧**：以「单调逼近 + 命题 3.1 的 z 强收敛（BMO/二次增长统一先验）」为枢纽，把存在性化为逼近序列的稳定性极限，再以定理 4.1 的比较定理获取唯一性/最小最大性。

## 阅读门槛

- BSDE 基础：Pardoux–Peng[19] 的 Lipschitz 框架、解 (y,z) 的定义与 L² 解。
- 鞅论：BMO-martingale 定义、Girsanov 定理、随机指数 E(M)、Tanaka 公式、Itô 公式。
- 泛函/随机分析：M² 的 Hilbert 结构、弱收敛、Riesz 表示定理、Lebesgue 控制收敛。
- 二次增长 BSDE 经典结果：Kobylanski[15]（二次增长有界解）、Briand–Hu[4,5]、Lepeltier–San Martin[16]。
- 空间类：S^p、S∞、M²、L∞(Ω; L^p([0,T]; R₊)) 及其范数/距离。

## 与其他文献的关联

- **继承自 Liu–Li–Fan[17]**：随机 Lipschitz 条件 (A1)/(H1) 与随机系数 L^p 解的结论（Lemma 2.1、2.2 直接组合其 Theorem 3.1、4.1、5.1）。
- **继承自 Fan[9]**：Lemma 2.3 组合其 Lemma 3.4、Theorem 3.2、3.3；定理 5.2/6.1 部分推广其 Theorem 3.1。
- **对 Kobylanski[15]（Prop 2.4）与 Lepeltier–San Martin[16]（Theorem 2）的推广**：命题 3.1 把 T 有限、f_· 有界或确定性 L¹ 的条件放宽到 T≤+∞、f_· 为随机可积过程（Remark 3.1）。
- **改进 Briand–Hu[5] 与 Fan[9] 的比较定理**（Remark 4.3），以及 Briand–Hu[4,5] 的存在性（定理 5.1）。
- 各例（Example 5.1、5.2、6.1）明确说明其生成元不满足 Fan[9]、Lepeltier–San Martin[16] 的条件，故结论无法由旧结果得到。

## 备注

- **提取质量**：pdftotext 抽取后公式线性化基本可读，但以下位置存在乱码/丢失，已在笔记中按原文线性化标注：
  - 集合/不等式符号：`⊂`、`→`、`‖·‖`、`≤`、`≥`、`↑`、`∧`、`∨` 在原文中被映射为 `→`、`·`、`` 等控制字符（如 ‖X‖∞ 显示为 `X∞`）。
  - 内积记号 `⟨x,x′⟩` 在 Lemma 3.1 证明中显示为 `x, x `，`e^{∫ us ds}` 中上标指数显示为 `e 0 us ds` 等 [UNCERTAIN: 指数上限 0/T 被挤掉]。
  - 比较定理证明中 (4.4) 式的被积项线性化不完整，ẑ 相关项出现 `1|ẑs|=0` 等 [UNCERTAIN: 指示函数脚标残缺]。
  - 定理 5.1 证明中 σl 停时与 Fatou 引理不等式的上下标有残缺 [UNCERTAIN: 上标 lim/l→+∞ 错位]。
- **缺失公式位置**：§2 各空间范数定义、§4 (H2) 与 φ(x)≤ax+b、§5 (H3)(H4) 及 ψ·(·)∈S 的条件、定理 6.1 证明的 gn 构造，均为线性化后的近似，未逐字复现原 LaTeX。
- 本文为单维 (one-dimensional) BSDE 设定，d 仅表示噪声维数。
