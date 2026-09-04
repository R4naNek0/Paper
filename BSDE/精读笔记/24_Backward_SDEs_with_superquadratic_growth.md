# Backward SDEs with superquadratic growth — 精读笔记（/paper.core L2）

- **数据来源**：原文全文（pdftotext 提取）
- **论文元信息**：Probab. Theory Relat. Fields (2011) 150:145–192；作者 Freddy Delbaen、Ying Hu、Xiaobo Bao；DOI 10.1007/s00440-010-0271-1；收到 2009-02-19，修订 2010-01-18，在线发表 2010-02-25
- **一句话定位**：研究生成元 `g(z)` 具超二次增长（`lim_{|z|→∞} g(z)/|z|² = ∞`）的 BSDE 的可解性，揭示其病态（ill-posed）本质，并在 Markov 情形给出存在性；处于 Kobylanski 二次 BSDE 之后、把二次增长边界问题彻底澄清的文献位置。

## 符号速查

| 符号 | 含义 | 位置 |
| --- | --- | --- |
| `B_t` | d 维标准布朗运动 | §2 起 |
| `g(z)` | 生成元，凸，`g(0)=0`，仅依赖 z | (1.1)/(3.1) |
| `f(x)` | g 的 Fenchel–Legendre 共轭 `f(x)=sup_z(zx−g(z))` | §2 |
| `ξ` | 终值，`∈ L^∞(F_T)` | (1.1) |
| `U_σ(ξ)` | 动态效用函数（essential inf 形式） | Def 2.1, (2.1) |
| `C_0(Q)` | 惩罚项 `E^Q[∫_0^T f(q_u)du]` | §2 |
| `Q, q_t` | 等价测度及其密度 `E(q·B)_t` | (2.1) |
| `(Y,Z)` | BSDE 的有界解 | (3.1) |
| `X^{t,x}, u(t,x)` | 前向扩散与其粘性解 | (1.2), (4.8)/(4.28) |
| `Φ(x)` | 终值函数 `ξ=Φ(X_T^{t,x})` | §4 |

## 核心结果

> **定理 2.2（主定理，逐字）**：Let U be the dynamic utility function defined by (2.1). Then the following are equivalent:
>
> 1. `lim_{|x|→∞} f(x)/|x|² > 0`;
> 2. `lim_{|z|→∞} g(z)/|z|² < ∞`;
> 3. For all k > 0, the set `{Q | C₀(Q) ≤ k}` is weakly compact;
> 4. For all `ξ ∈ L^∞(F_T)`, there exists a measure `Q ≪ P` such that `U₀(ξ) = E^Q[ξ + ∫₀^T f(q_u)du]`;
> 5. For all `ξ ∈ L^∞(F_T)`, there exists a measure `Q ∼ P` such that `U₀(ξ) = E^Q[ξ + ∫₀^T f(q_u)du]`;
> 6. For all `ξ ∈ L^∞(F_T)`, the BSDE `dY_t = g(Z_t)dt − Z_t dB_t` has a unique bounded solution with `Y_T = ξ`;
> 7. `U₀` is strictly monotone.

> *通俗解释*：生成元至多二次增长，当且仅当 BSDE 对一切有界终值有唯一有界解（6），并等价于效用函数严格单调等性质。

> **定理 3.1（Non-existence，逐字）**：There exists `η ∈ L^∞(F_T)` such that BSDE (3.1) with superquadratic growth has no bounded solution.

> *通俗解释*：超二次生成元下，存在有界终值 `η` 使 BSDE 无有界解。

> **定理 3.3（Non-uniqueness，逐字）**：If the BSDE `(g, ξ)` with superquadratic growth has a bounded solution Y for a `ξ ∈ L^∞(F_T)`, then for each `y < Y₀`, there are infinitely many bounded solutions `{X_t}_{0≤t≤T}` with `X₀ = y`.

> *通俗解释*：一旦有界解存在，则对任意更小初值有无限多个有界解（不唯一）。

> **定理 3.4（Non-stability，逐字）**：Suppose `lim_{z→∞} g(z)/|z|² = ∞`. Then there exists a sequence of solutions `{Y^k}_{k=1}^∞` of BSDEs `(g, ξ_k)` which increasingly and boundedly converges to Y such that Y is not a solution of BSDE `(g, ξ)`, where ξ is the `L^∞` limit of `{ξ_k}_{k=1}^∞`.

> *通俗解释*：单调稳定性失效——解列单调有界收敛，其极限却不是对应极限终值的解。

> **定理 4.1（Lipschitz 情形，逐字）**：Suppose that Φ is bounded and Lipschitz. Then there exists a unique solution `(Y^{t,x}, Z^{t,x})` to BSDE (4.1) such that both processes `Y^{t,x}` and `Z^{t,x}` are bounded. Furthermore, the solution is a dynamic utility function of the form (4.2) [公式见下]。

> *通俗解释*：终值 Lipschitz 时，超二次 BSDE 仍有唯一有界解，且解=动态效用函数。

> **定理 4.2（Z 的先验估计，逐字）**：In the framework (4.11), suppose there is a solution and (1) The probability measure Q with `dQ/dP = E(g_z(Z)·B)_T` is equivalent to P; (2) Z is a Q-martingale. We then have `|Z_s| ≤ 2‖ξ‖_∞ (T−s)^{−1/2}`, `∀s ∈ [0,T)`. Furthermore, if `f(g_z(·)) : R^d → R^+` is convex, we also have: `f(g_z(Z_s)) ≤ 2‖ξ‖_∞ (T−s)^{−1}`, `∀s ∈ [0,T)`.

> *通俗解释*：在等价测度条件下 Z 获得 `(T−s)^{−1/2}` 型爆破上界，是 Markov 情形的核心先验估计。

> **定理 4.5（粘性解，逐字）**：Suppose that Φ is bounded and continuous, and that b and σ satisfy the assumption (4.17). Then u(t,x) defined by (4.28) is a bounded and continuous deterministic function on `[0,T]×R^n` and it is a viscosity solution to PDE (4.9).

> *通俗解释*：终值有界连续时 `u(t,x)=U_t(Φ(X_T^{t,x}))` 连续且是 PDE (4.9) 的粘性解。

（另含 Proposition 4.2、4.3、4.4 与 Theorem 4.3、4.4：把先验估计由 `‖Φ‖_∞` 控制、逐级放宽 Φ 为下半连续/连续，最终 `Ȳ=U=Y` 收敛。）

## 证明骨架

- **武器库**：
  - 凸分析与 Fenchel–Legendre 对偶（f↔g），Itô 公式、Girsanov 测度变换；
  - BMO 鞅（Lemma 2.2：由 `|U_t(ξ)|≤‖ξ‖_∞` 推出鞅部分 BMO 且 `‖M‖_BMO² ≤ 2‖ξ‖_∞`）；
  - Doob–Meyer 分解（把 U 分解为 `A−M`，得 `dA_t ≥ g(Z_t)dt`，Theorem 2.1）；
  - 单调逼近/截断：用 `(ρ_N g)` 截断 + 光滑化 `ρ_N`，再由 Girsanov 得 Z 的界后取 `N≥c`（Theorem 4.1）；
  - 比较定理、稳定性定理、粘性解稳定性（Dini 定理 + Crandall–Ishii–Lions [6]）；
  - James 定理（3⇔4，引 Jouini et al. [11]）；de la Vallée Poussin / Dunford–Pettis（1⇒3）；
  - 重对数律（LIL）构造（Theorem 3.4 之后 §3.4 与 Lemma 3.1、超限归纳）；
  - Borel–Cantelli 引理（非唯一性 Step 4 收尾）、次鞅不等式（概率估计）。
- **核心技巧**：利用超二次增长使 `∫g(Z)du` 比 `∫Z dB` 增长快得多，人为构造（通过停时/分段）让解的鞅部分趋无穷或反向击穿，从而破坏唯一性、稳定性与存在性（Theorem 3.3 的 `V_t` 构造即此思想）；Markov 情形的关键一步是用 Girsanov + BMO 把 Z 爆破控制在 `(T−s)^{−1/2}`，使截断论证成立。

## 阅读门槛

- BSDE 基础：Pardoux–Peng [13] 的 Lipschitz 框架、Kobylanski [12] 的二次 BSDE 有界终值理论；
- 凸分析（Fenchel–Legendre 共轭）、鞅理论（BMO 鞅、Doob–Meyer 分解、Girsanov 定理）；
- 随机控制/凸风险度量的动态效用（Fatou 性质、时间一致性，Delbaen et al. [7]）；
- 粘性解与 Hamilton–Jacobi 方程（Crandall–Ishii–Lions [6]）、二阶 BSDE 概念（Cheridito et al. [5]）。

## 与其他文献的关联

- 继承 **Bismut [2]**（共轭凸函数与最优随机控制）与 **Pardoux–Peng [13,14]**（BSDE 的 Lipschitz 解及与拟线性 PDE 的联系）。
- 直接对标 **Kobylanski [12]**：二次 BSDE 有界终值下解的存在唯一、比较、稳定性；本文证明"有界解对所有 ξ 存在当且仅当 g 至多二次"（Remark 3.1），把二次边界彻底划清。
- 推广 **Briand–Hu [3,4]**：二次 BSDE 无界终值的唯一性——本文处理超二次、有界终值情形，并指出单调稳定性（[3,12] 的关键工具）不再成立。
- PDE 侧对接 **Gilding–Guedda–Kersner [10]** 与 **Ben-Artzi–Souplet–Weissler [1]**（粘性 Hamilton–Jacobi 方程 `u_t = Δu + |∇u|^q`）：本文允许 σ 退化，且用 BMO 鞅 + Jensen 而非 Bernstein 方法得到同一类型 `u_x` 先验估计（Remark 4.4）。
- 方法上依赖 **El Karoui–Peng–Quenez [8]**（金融 BSDE、Lipschitz 稳定性）、**Jouini–Schachermayer–Touzi [11]**（James 定理）、**Föllmer–Schied [9]**（凸风险度量惩罚项）、**Cheridito et al. [5]**（二阶 BSDE）、**Crandall et al. [6]**（粘性解）。

## 备注

- 提取质量：pdftotext 版公式大面积乱码/丢失。积分号、∑、期望、范数 `‖·‖`、min/ess.inf 的排版均被破坏；§2 Lemma 2.2 的 Itô 分解式、Theorem 3.3 的 `V_t` 与 `b_t` 构造、§3.4 Lemma 3.1 的 LIL 不等式、Theorem 4.4 的三段估计等位置公式已按上下文线性化并标 [UNCERTAIN] 风险，未逐字复原。
- 缺失公式位置：Theorem 2.1 的分解式 (2.9)/(2.10)；Theorem 3.1 Step 1 中 `Z_u` 的定义与 `δ_k`、α 的选择（含求和上下标）；Theorem 3.3 中 `b_t` 分段定义与 (3.7)(3.8)(3.10) 的概率界；§3.4 中 `τ₁/τ₂` 的定义 (3.25)(3.34)(3.35) 与 `X_{τ_k}` 公式；Theorem 4.4 中 `α=min f` 与三段期望估计。
- 符号统一说明：原文"Φ"在 pdftotext 中显示为乱码，本文统一记 `Φ(x)` 为终值函数。
