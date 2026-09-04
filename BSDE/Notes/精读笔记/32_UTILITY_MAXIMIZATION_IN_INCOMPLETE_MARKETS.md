# UTILITY MAXIMIZATION IN INCOMPLETE MARKETS — 精读笔记（/paper.core L2）

- **数据来源**：原文全文（pdftotext 提取）
- **论文元信息**：Ying Hu, Peter Imkeller, Matthias Müller；The Annals of Applied Probability, 2005, Vol. 15, No. 3, 1691–1712；DOI: 10.1214/105051605000000188；arXiv:math.PR/0508448
- **一句话定位**：在不完全市场中，把策略约束从"凸集"放松到"闭集（不必凸）"，用 BSDE 直接刻画指数、幂、对数三类效用的最优投资策略与值函数，绕开对偶方法。

## 符号速查

| 符号 | 含义 | 位置 |
| --- | --- | --- |
| `W` | m 维布朗运动；d ≤ m 支股票，d < m 即不完全市场 | §1 |
| `σ`（d×m）、`θ = σ^tr(σσ^tr)^−1 b` | 波动率矩阵；风险市场价格过程 | §1 |
| `π`（R^{1×d}）/ `p = πσ`（R^{1×m}） | 指数效用下投资金额策略及其变换 | §2 |
| `ρ̃`（份额）/ `ρ = ρ̃σ` | 幂/对数效用下按财富比例的策略 | §3、§4 |
| `C̃`（R^{1×d} 或 R^d 中闭集）、`C_t = C̃σ_t` | 约束集（仅要求闭，不要求凸） | §2(3) |
| `Π_C(a)`、`dist_C(a)` | 到闭集 C 的投影（可多值）、距离 | §1 |
| `H∞(R)×H2(R^m)` | BSDE 解空间：Y 有界、Z 平方可积 | Thm 7 |
| `F` | 终端负债（有界、F_T 可测，可负） | §2 |
| `BMO` | 有界平均振荡鞅；`E(·)` 随机指数 | §1 |

## 核心结果

> **定理 7（指数效用，逐字）**：The value function of the optimization problem (5) is given by V(x) = −exp(−α(x − Y0)), where Y0 is defined by the unique solution (Y, Z) ∈ H∞(R) × H2(Rm) of the BSDE (7) Yt = F − ∫ₜᵀ Zs dWs − ∫ₜᵀ f(s, Zs) ds, t ∈ [0, T], with f(·, z) = −½ dist²(z + (1/α)θ, C) + zθ + (1/2α)|θ|². There exists an optimal trading strategy p*∈ A, with p*ₜ ∈ Π_{Cₜ(ω)}(Zₜ + (1/α)θₜ), t ∈ [0, T], P-a.s.
>
> *通俗解释*：值函数是"指数减去 BSDE 初值"，最优策略是 Z+θ/α 到约束集的投影。

> **命题 9（动态原理·指数，逐字）**：The value function x ↦ −exp(−α(x − y)) satisfies the dynamic programming principle, that is, V(τ, Xτ) = −exp(−α(Xτ − Yτ)) for all stopping times τ ≤ T, where Yτ belongs to a solution of the BSDE (7). An optimal strategy that attains the essential supremum in (10) is given by p*, the optimal strategy constructed in Theorem 7.
>
> *通俗解释*：任意时刻重解问题，p* 仍最优，值函数形式不变。

> **引理 11（可测选择，逐字）**：Let (aₜ), (σₜ) be R^{1×m} (resp. R^{d×m})-valued predictable processes, C̃ ⊂ R^d a closed set and Cₜ = C̃σₜ. (a) The process d = (dist(aₜ, C̃σₜ)) is predictable. (b) There exists a predictable process a*with a*ₜ ∈ Π_{Cₜ}(aₜ) for all t ∈ [0, T].
>
> *通俗解释*：距离函数可测、且能从闭集选出可测的最近点（非凸可多值）。

> **定理 14（幂效用，逐字）**：The value function of the optimization problem is given by V(x) = x^γ exp(Y0) for x > 0, where Y0 is defined by the unique solution (Y, Z) ∈ H∞(R) × H2(Rm) of the BSDE (15) Yt = 0 − ∫ₜᵀ Zs dWs − ∫ₜᵀ f(s, Zs) ds, t ∈ [0, T], with f(t, z) = (γ(1−γ)/2)·dist²((1/(1−γ))(z + θₜ), Cₜ) − γ|z + θₜ|²/(2(1−γ)) − ½|z|². There exists an optimal trading strategy ρ*∈ Ã with the property ρ*ₜ ∈ Π_{Cₜ(ω)}((1/(1−γ))(Zₜ + θₜ)).
>
> *通俗解释*：值函数为 x^γ 乘 BSDE 初值的指数，最优策略是 (Z+θ)/(1−γ) 的投影。

> **命题 15（动态原理·幂，逐字）**：The value function x^γ exp(y) satisfies the dynamic programming principle, that is, V̄(τ, Xτ) = (Xτ)^γ exp(Yτ) for all stopping times τ ≤ T, where Yτ is given by the unique solution (Y, Z) of the BSDE (15). An optimal strategy which attains the essential supremum in (17) is given by ρ* constructed in Theorem 14.
>
> *通俗解释*：幂效用下的动态规划原理，ρ* 同样时点一致最优。

> **对数效用（§4，无定理编号，逐字）**：V(x) = R0^{ρ*}(x) = log(x) + E[−∫₀ᵀ f(s) ds]，其中 f(t) = ½ dist²(θₜ, Cₜ) − ½|θₜ|²，最优策略满足 ρ*ₜ ∈ Π_{Cₜ}(θₜ)。"In particular, ρ* only depends on θ, σ and the set C̃₂ describing the constraints."
>
> *通俗解释*：对数效用下值函数为 log x 减一个确定积分，最优策略是 θ 的投影，与初始资本无关。

## 证明骨架

- **武器库**：BSDE 构造（Bismut/Pardoux–Peng 框架）；Kobylanski [11] 的二次增长 BSDE 存在性定理（H1 条件 |f(t,z)| ≤ c0 + c1|z|²）；Kazamaki [10] 的 BMO 鞅理论（BMO 随机指数是 UI 鞅、Girsanov 保持 BMO）；Itô 公式；Fatou 引理；可测选择引理（Föllmer–Schied [8] Lemma 1.55 的 Aumann 型选择）；距离函数的 Lipschitz 性；Girsanov 变换与测度变换下的唯一性论证。
- **核心技巧**：把终端效用 `−exp(−α(X_T^p − F))` 写成"超鞅 R(p)"，通过配平方把漂移项压成 `v(t,p,z) = ½α|p − (z + θ/α)|² − (1/2α)|θ|² + f(t,z)` 与投影最小化的对应：取 f 含 `−½dist²(·, C)` 使 v ≥ 0 对一切 p，且投影点处 v = 0，从而 R(p*) 为鞅、其余为超鞅——**超鞅初值即值函数**。

## 阅读门槛

- 前置背景：Itô 随机积分与半鞅、Girsanov 定理、随机指数；BSDE 基础（Pardoux–Peng 适定性与比较定理）；二次增长 BSDE（Kobylanski）；BMO 鞅与 Kazamaki 判据；凸分析中的距离函数/投影（非凸多值投影需要可测选择定理）；效用最大化经典文献（Merton、Cvitanic–Karatzas、Kramkov–Schachermayer）。

## 与其他文献的关联

- 方法上继承 **Pardoux–Peng (1990)** 的 BSDE 理论（文中 [14]，用于财富过程唯一可表、无套利），并借 **Kobylanski (2000)** 的二次增长 BSDE 存在性处理指数/幂效用。
- 相对 **El Karoui–Rougé [7]**（凸锥约束、指数效用）与 **Sekine [15]**（凸锥、指数+幂，走对偶）的改进：本文**不用对偶**，直接刻画原问题，从而把约束从"凸"放松到"闭（非凸）"。
- 与凸锥情形的一致性：Remark 10 / Remark 16 明确验证本文 f 与 Sekine 的 f̄、g 在凸锥下等价（用凸锥投影的齐次性与 `Π_C(a)(a−Π_C(a))=0` 等式(18)）。
- 其他背景：Bismut [1]（控制论引入 BSDE）、Delbaen et al. [4]（熵/相对熵对偶）、Kramkov–Schachermayer [12] 与 Cvitanić–Schachermayer–Wang [3]（一般效用、不含指数）。

## 备注

- 提取质量：pdftotext 文本较干净，定理陈述与参考文献完整可辨；但所有分数线、上下标、积分上下限在纯文本中线性化，`∫ₜᵀ`、`½`、`^γ` 等为笔记重排，非原文排版。
- 疑似不一致（非提取错误）：§3 开头写幂效用为 `U_γ(x) = (1/γ)x^γ`，而定理 14 及证明实际按 `U(X) = X^γ` 计算（值函数 x^γ e^{Y0}，无 1/γ 因子）；Remark 16 亦指出 Sekine 用 x↦(1/γ)x^γ 并给出 (1−γ)Ỹ=Y 的换算。常数因子不影响最优策略，但需读者注意。
- 缺失/难辨位置：Lemma 12 的 Itô 展开中段（`E[∫τ^T |Zs|² ds|Fτ] ≤ c1 + c2 E[...]` 一带）有括号错位痕迹；对数效用一节为叙述式结果，未编号定理。
