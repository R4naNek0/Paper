# Existence and uniqueness of solution to scalar BSDEs with L exp(µ√(2 log(1+L)))-integrable terminal values: the critical case — 精读笔记（/paper.core L2）

- **数据来源**：原文全文（pdftotext 提取，公式部分线性化重排，个别上下标位置按上下文校订）
- **论文元信息**：Electron. Commun. Probab. **24** (2019), no. 49, 1–10；DOI 10.1214/19-ECP254；arXiv:1904.02761v1；作者 Shengjun Fan（中国矿业大学数学学院）、Ying Hu（Univ Rennes, CNRS, IRMAR）；MSC 2010: 60H10；2019-04-04 投稿，2019-07-02 接收。
- **一句话定位**：把标量 BSDE 在 `L exp(µ√(2 log(1+L)))` 可积终值下的存在性（Hu–Tang [8]）与唯一性（Buckdahn–Hu–Tang [3]）从严格临界之上 `µ > µ0 = γ√T` 推进到**临界情形 `µ = µ0`**。

## 符号速查

| 符号 | 含义 | 位置 |
| --- | --- | --- |
| `ψ(x, µ) = x·exp(µ√(2 log(1+x)))` | 刻画终端/解可积性的权函数 | (3.1) |
| `µ0 = γ√T` | 临界参数（γ 为生成元关于 z 的 Lipschitz 系数） | 引言 |
| `φ(s,x;t)`、`ϕ(s,x;t)` | 用于 Itô–Tanaka 公式的测试函数 | (1.4)(3.3) |
| `µ_s = γ√s`，`k_r = (γ/2)(γ + √(2/r))` | φ 中使 (1.3) 成立的参数选择 | (1.5) |
| `class (D)` | 过程族 {X_τ : τ ∈ Σ_T} 一致可积 | §2 |
| `L^p, L^p, S^p, M^p` | 终值/积分/连续/平方可积过程空间 | §2 |
| `(H1)` | 线性增长：` \lvert g \rvert ≤ \lvert g(t,0,0) \rvert + β \lvert y \rvert + γ \lvert z \rvert ` | §2 |
| `(H2)` | 一致 Lipschitz 条件（强于 H1） | §2 |
| `g0 = ∫_0^T g(t,0,0)dt` | 生成元的零项积分 | 引言 |

## 核心结果

> **定理 3.1（逐字原文）**：Let ξ be a terminal condition and g be a generator which is continuous in (y, z). If g satisfies assumption (H1) with parameters β and γ, and
> `ψ(|ξ| + ∫_0^T |g(t,0,0)|dt, γ√T) ∈ L¹`,
> then BSDE(ξ, g) admits a solution `(Y_t, Z_t)_{t∈[0,T]}` such that `ψ(|Y_t|, γ√t)_{t∈[0,T]}` belongs to class (D), and P−a.s., for each t ∈ [0, T],
> `|Y_t| ≤ ψ(|Y_t|, γ√t) ≤ C·E[ ψ(|ξ| + ∫_0^T |g(t,0,0)|dt, γ√T) | F_t ] + C`,  (3.2)
> where C is a positive constant depending only on (β, γ, T). Furthermore, if g also satisfies assumption (H2), then BSDE(ξ, g) admits a unique solution `(Y_t, Z_t)_{t∈[0,T]}` such that `ψ(|Y_t|, γ√t)_{t∈[0,T]}` belongs to class (D).
>
> *通俗解释*：终值满足**临界** ψ 可积 + 线性增长，则解存在且 ψ 有界；再加 Lipschitz 则唯一。

> **命题 3.5（先验估计，逐字原文）**：Let ξ be a terminal condition and g be a generator which is continuous in (y, z). If g satisfies assumption (H1) with parameters β and γ, `(ξ, g(t,0,0)) ∈ L^p × L^p` for some p > 1, and `(Y_t, Z_t)_{t∈[0,T]}` is a solution in `S^p × M^p` to BSDE(ξ, g), then P−a.s., for each t ∈ [0, T],
> `|Y_t| ≤ ψ(|Y_t|, γ√t) ≤ C·E[ ψ(|ξ| + ∫_0^T |g(t,0,0)|dt, γ√T) | F_t ] + C`,  (3.7)
> where C depends only on (β, γ, T).
>
> *通俗解释*：L^p 终值解的 ψ-模被终值条件期望一致控制。

## 证明骨架

- **武器库**：
  1. **构造测试函数** φ/ϕ（正、连续、严格增、严格凸）使偏微分不等式 (1.2)/(1.3) 成立——用基本不等式 `2ab ≤ a²+b²` 把 (1.2) 化为只含 φx, φxx, φs 的 (1.3)；
  2. **Itô–Tanaka 公式**：先对 `Ȳ_t = e^{βt}|Y_t| + ∫_0^t e^{βs}|g(s,0,0)|ds`（去 Lipschitz 漂移、引入局部时）再用 φ(s, Ȳ_s; t) 得 `dϕ ≥ ϕ_x Z̄_s·dB_s`（(3.9)），配合停时 τ_n 与条件期望；
  3. **ψ–ϕ 等价**（命题 3.4：`ψ(x,γ√s) ≤ ϕ ≤ Kψ + K`）转回 ψ 尺度；
  4. **截断逼近 + 局部化**：`ξ^{n,p} = ξ^+∧n − ξ^-∧p`、`g^{n,p}`，由 Lepeltier–San Martin [9] 得 S²×M² 最小解，比较定理（Fan [6] Thm 2.3）保证 `Y^{n,p}` 关于 n 单调增、关于 p 单调减，用 Briand–Hu [2] 局部化方法取极限得解；
  5. **唯一性**：线性化 + 引理 3.8（`e^x·y ≤ e^{x²/(2µ²)} + e^{2µ}ψ(y,µ)`）与引理 3.9（指数鞅矩估计，`λ < 1/(2γ²(T−t))` 时 `E[e^{λ|∫q_s·dB_s|²}|F_t] ≤ 1/√(1−2λγ²(T−t))`）证明一致可积，区间划分 `[3T/4,T], [3²T/4²,3T/4], …, [3ⁿT/4ⁿ,3ⁿ⁻¹T/4ⁿ⁻¹], …`（无穷多段），再借 Y 对时间的连续性取极限 n→∞ 盖满 [0,T]。

- **核心技巧**：**用显式解出 (1.3) 的临界测试函数 φ（取 `µ_s = γ√s`、`k_r = (γ/2)(γ+√(2/r))`）替代 [8] 的凸生成元对偶表示**——因对偶表示在 µ=µ0 时于 t=0 失效（Remark 3.6），Itô–Tanaka 路线把“临界”吸收进 φ 的二阶项系数，绕开了对偶的退化。

## 阅读门槛

- BSDE 标准解定义（Pardoux–Peng 框架）、`S^p × M^p` 空间、class (D) 与一致可积；
- Itô–Tanaka 公式（含局部时）与局部化/停时技巧；
- 对偶表示（El Karoui–Peng–Quenez / Tang）、单调逼近与比较定理；
- `L log L` → `L exp(µ√(2log(1+L)))` 可积性层级及其在临界指数下的行为。

## 与其他文献的关联

- **[8] Hu–Tang (ECP 2018)**：对凸生成元用对偶表示 + 局部化得到 `µ > µ0` 的存在性；本文补上临界情形，并指出其方法在 `µ = µ0`、`t = 0` 处不可用。
- **[3] Buckdahn–Hu–Tang (ECP 2018)**：在 (H2) 下给出 `µ > µ0` 的唯一性（利用 ψ 性质把区间切成**有限**段）；本文沿用其思想但区间变为**无穷**多段 `[3ⁿT/4ⁿ, 3ⁿ⁻¹T/4ⁿ⁻¹]`，用连续性取极限。
- **[2] Briand–Hu (2006)**：局部化方法来源（二次增长、无界终值）。
- **[9] Lepeltier–San Martin (1997)**：连续系数生成元的最小解存在性，用于逼近步。
- **[6] Fan (2016)**：比较定理来源；**[1] Briand–Delyon–Hu–Pardoux–Stoica (2003)**、**[10] Pardoux–Peng (1990)**：L^p 解与经典框架背景。
- 引理 3.8、3.9 直接取自 [8]（其 Lemma 2.4、2.6）；引理 3.2 取自 [3]（Proposition 2.3、Theorem 2.5）。

## 备注

- pdftotext 提取质量整体良好，公式需线性化重排；`ψ(x,µ)=x·exp(µ√(2log(1+x)))` 中根号与上下标经上下文校订。
- 引理 3.8 原始提取为“e^{x²}y ≤ e^{x²/(2µ²)} + e^{2µ}ψ(y,µ)”式样，据 (3.14) 的应用（`e^{∫v_s·dB_s}·|δY_σn|` 左端）判定为 `e^x·y ≤ e^{x²/(2µ²)} + e^{2µ}ψ(y,µ)`；若需严格引用请核对原刊 PDF 第 8 页。
- 关键公式位置：测试函数 (1.4)(3.3)、偏导显式与 (1.3) 验证在 pp.5–6、先验估计证明 pp.6–7、唯一性证明 pp.8–9。
- Remark 3.7 / 3.10 说明 (H1)、(H2) 可分别弱化为单边线性增长与单调条件，属文本已给但未展开的延伸。
