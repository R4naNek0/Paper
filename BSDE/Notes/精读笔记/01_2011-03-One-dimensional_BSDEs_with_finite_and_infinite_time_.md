# One-dimensional BSDEs with finite and infinite time horizons — 精读笔记（/paper.core L2）

- **数据来源**：原文全文（pdftotext 提取）
- **论文元信息**：Stochastic Processes and their Applications 121 (2011) 427–440；作者 ShengJun Fan、Long Jiang、DeJian Tian（中国矿业大学理学院）；DOI: 10.1016/j.spa.2010.11.008；收稿 2010-01-18，改回 2010-07-12，接受 2010-11-10；MSC 60H10
- **一句话定位**：在一维 BSDE 中把"有限/无限时域、对 t 不必一致的生成元假设"统一起来，依次给出最小解存在、一般比较定理、解存在唯一三个结果，填补了 Lepeltier–San Martin 与经典比较定理之间的空白。

## 符号速查

| 符号 | 含义 | 位置 |
| --- | --- | --- |
| (1) | y_t = ξ + ∫_t^T g(s,y_s,z_s)ds − ∫_t^T z_s·dB_s | 引言 |
| T | 时间界，0 < T ≤ +∞（可有限可无限） | 引言 |
| ξ | 终端条件，ξ ∈ L²(Ω,F_T,P) | 引言 |
| g(ω,t,y,z) | 生成元，Ω×[0,T]×R×R^d → R | 引言 |
| B | d 维 Brownian 运动 | 引言 |
| S²(0,T;R) | 连续适应过程 (Y_t)，E[sup_t \lvert Y_t \rvert ²] < +∞ | 引言 |
| M²(0,T;R^n) | 循序可测过程 {Z_t}，E[∫_0^T \lvert Z_t \rvert ² dt] < +∞ | 引言 |
| S | 非降连续函数 ρ: R+→R+，ρ(0)=0，ρ(u)>0 (u>0) | 引言 |
| (H1) | 线性增长： \lvert g \rvert ≤ f_t + u(t) \lvert y \rvert + v(t) \lvert z \rvert | §2 |
| (H2) | g 对 (y,z) 连续（dP×dt − a.s.） | §2 |
| (H3) | y 弱单调：sgn(y1−y2)(g(·,y1,z)−g(·,y2,z)) ≤ u(t)ρ( \lvert y1−y2 \rvert ) | §3 |
| (H4) | z 一致连续： \lvert g(·,y,z1)−g(·,y,z2) \rvert ≤ v(t)φ( \lvert z1−z2 \rvert ) | §3 |
| (H5) | \lvert g(·,y1,z1)−g(·,y2,z2) \rvert ≤ u(t)ρ( \lvert y1−y2 \rvert )+v(t)φ( \lvert z1−z2 \rvert ) | §4 |
| (A1)/(A2) | Lipschitz 条件 / E[(∫_0^T \lvert g(t,0,0) \rvert dt)²] < +∞ | §2 |
| ρ, φ | Osgood 型函数，∫_{0+} 1/ρ(u) du = +∞，φ 线性增长 | §3 |

## 核心结果

> **定理 1（逐字原文）**：Assume that 0 < T ≤ +∞ and that g satisfies (H1) and (H2). Then for each ξ ∈ L²(Ω, F_T, P), the BSDE with parameters (ξ, T, g) has a minimal solution (y_u, z_u)_{u∈[0,T]}, which means that if (ŷ_u, ẑ_u)_{u∈[0,T]} is any solution to the BSDE with parameters (ξ, T, g), then for each t ∈ [0,T], y_t ≤ ŷ_t, dP − a.s.
>
> _通俗解释_：连续且线性增长的生成元，一维 BSDE 总存在"最小"解，且时域可到无穷。

> **定理 2（逐字原文）**：Let 0 < T ≤ +∞, ξ, ξ′ ∈ L²(Ω, F_T, P), g and g′ be two generators of BSDEs, and let (y_t, z_t)_{t∈[0,T]} and (y′_t, z′_t)_{t∈[0,T]} be, respectively, a solution to the BSDE with parameters (ξ, T, g) and (ξ′, T, g′). If dP − a.s., ξ ≤ ξ′, g (resp. g′) satisfies (H3) and (H4) and dP × dt − a.s., g(t, y′_t, z′_t) ≤ g′(t, y′_t, z′_t) (resp. g(t, y_t, z_t) ≤ g′(t, y_t, z_t)), then for each t ∈ [0,T], we have dP − a.s., y_t ≤ y′_t.
>
> _通俗解释_：在 y 弱单调、z 一致连续（不必 Lipschitz）下，比较定理仍成立。

> **定理 3（逐字原文）**：Assume that 0 < T ≤ +∞ and that g satisfies (H5) and (A2) in Section 2. Then for each ξ ∈ L²(Ω, F_T, P), the BSDE with parameters (ξ, T, g) has a unique solution.
>
> _通俗解释_：y 强一致连续 + z 一致连续 + 可积条件，保证解存在且唯一。

**直接推论**：Corollary 1（两生成元同满足 (H3)(H4) 且逐点 g ≤ g′、ξ ≤ ξ′ 则 y ≤ y′）；Corollary 2（满足 (H3)(H4) 的 BSDE 至多一个解）；Corollary 3（0<T<+∞ 时 (H3′b)+(H4′)+(A2) 给出存在唯一）。

## 证明骨架

- **武器库**：
  1. 单调逼近（Lepeltier–San Martin 型 inf-卷积）：g_n := inf_{(u,v)} {g(t,u,v) + n·u(t)|y−u| + n·v(t)|z−v|}，得到 Lipschitz 且升序逼近 g 的序列（Proposition 1，即线性增长 (i)、对 n 单调增 (ii)、Lipschitz (iii)、逐点收敛 (iv)）；
  2. 已知引理：Lemma 1（(A1)(A2) ⇒ 唯一解，引自 [7] Thm 1.2）、Lemma 2（Lipschitz 情形比较定理，引自 [7] Thm A.2）；
  3. 先验估计：设 G := sup_n sup_s |y_s^n|，用 Itô 公式对 (y^n)² 展开 + 不等式 2ab ≤ a²+b²、2ab ≤ a²λ + b²/λ（λ := 2∫v²）推得 sup_n E[∫|z^n|² ds] ≤ 2C₁ < +∞；
  4. Lebesgue 控制收敛定理（处理 g_n → g 的逐点收敛与积分收敛）；
  5. BGD 不等式（证 y^n 的 Cauchy 性、S² 收敛）；
  6. Tanaka 公式 + Girsanov 定理（定理 2 中构造等价测度 P_n 消去 z 项，令 ẑ 项成为 P_n 下的 Brownian 鞅）；
  7. Jensen 不等式（ρ 凹）+ Fatou 引理 + Osgood 型条件 ∫_{0+} 1/ρ du = +∞（Lemma 5，Osgood 不等式，证极限 f(r) 恒为 0）。
- **核心技巧**：定理 1 的关键一步是 inf-卷积序列 g_n 的 (i)–(iv) 四性质 + 比较定理把 g_n 的解 y^n 夹成单调列，再靠一致先验估计取极限得到最小解；定理 2 的关键一步是 Girsanov 测度变换把 ẑ 的鞅项消化掉，再用 Osgood 条件把正部 ŷ⁺ 挤到 0。

## 阅读门槛

- 随机分析：Brownian 运动、Itô 积分、Itô 公式、Tanaka 公式、Girsanov 定理、Burkholder–Davis–Gundy 不等式、可选停时；
- 鞅论与测度变换：Radon–Nikodym 密度、条件期望、Jensen 不等式；
- 分析工具：Lebesgue 控制收敛、Fatou 引理、Hölder 不等式、Osgood 型唯一性（∫ 1/ψ = +∞）、凹函数/单调函数线性增长；
- BSDE 基础：Pardoux–Peng Lipschitz 框架、比较定理、最小解概念、空间 S² 与 M²。

## 与其他文献的关联

- **Pardoux–Peng [16] (1990)**：多维 BSDE Lipschitz 情形的存在唯一开创工作——本文 Theorem 3/Corollary 3 在一维情形的推广；
- **Lepeltier–San Martin [14] (1997)**：连续 + 线性增长生成元的最小解存在（本文 Theorem 1 的直接来源与改进：允许 T = +∞、u(t), v(t), f_t 不必为常数，Remark 1 明确指出）；
- **Pardoux [17] / Hamadène [11]**：y 的单调性条件、z 的一致连续条件最早分别由二者提出——本文 (H3) 弱于 [17] 的单调性（Remark 2）；
- **比较定理谱系**：Peng [18]（比较原理开创）、El Karoui–Peng–Quenez [9] Thm 2.2、Cao–Yan [5] Thm 2.1、Chen–Wang [7] Thm A.2、Briand–Hu [2] Prop 5——本文 Theorem 2 是这四者的统一推广（Remark 5、6 逐条说明蕴含关系 (H4′′)⇒(H4′)⇒(H4)，(H3′a)⇒(H3′)⇒(H3)，(H3′b′)⇒(H3′b)⇒(H3′)，且反向均不成立）；
- **Chen [6]、Chen–Wang [7]**：无穷时域 BSDE 与 g-鞅（Lemma 1、2 直接引自 [7]）；
- **Jia [12]**：z 一致连续（与 y 无关）的唯一性，以及严格比较定理的反例（Remark 4）。

## 备注

- **提取质量**：pdftotext 输出中大量数学公式被线性化或乱码，主要是：上下标（如 y_t^n、z_s^n 常写成 y n / z sn）、积分与求和符号变形、平方/根号（如 |y|/t 下的根号、v²(t)）、花体/加粗字符（S²、M²、R^d）等，均按上下文还原并在可疑处标注 [UNCERTAIN]。
- **缺失公式位置**：Example 1–2 的显式解公式（含 √t 与 (1+t)^(4/3) 型项）在 txt 中严重破碎，具体解析式需回查 PDF；Example 3 的 q(·) 定义（x ln(1/x) 段）基本完整；证明中的 Itô 公式展开块（§2 中 (3)–(5) 一带的不等式链）多处积分上下限与指数丢失。
- 本文"仅证明/断言"，Lemma 1、2 引用 [7]，Lemma 3 引自 [10]，Lemma 4 自证（Gronwall 型），Proposition 1、Lemma 5 为本文自含结果。
