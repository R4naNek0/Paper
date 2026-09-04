# A representation theorem for generators of BSDEs with general growth generators in y and its applications — 精读笔记（/paper.core L2）

- **数据来源**：原文全文（pdftotext 提取）
- **论文元信息**：
  - 期刊：Statistics and Probability Letters 129 (2017) 297–305
  - 作者：Lishun Xiao（中国矿业大学数学学院；徐州医科大学公共卫生学院）、Shengjun Fan（中国矿业大学数学学院，通讯作者）
  - DOI：10.1016/j.spl.2017.06.014（<http://dx.doi.org/10.1016/j.spl.2017.06.014）>
  - MSC 2010：60H10、35K58；关键词：Backward stochastic differential equation、Representation theorem、General growth、Weak monotonicity、Viscosity solution
  - 投稿史：2016-12-04 收稿，2017-06-04 修回，2017-06-12 接收，2017-06-28 在线
- **一句话定位**：在生成元 g 于 y 上仅需弱单调性 + 一般增长、于 z 上 Lipschitz 的条件下证明 BSDE 生成元的表示定理，从而基本解决"y 上一段增长生成元的表示定理"这一悬而未决十余年的问题，并将其首次用于证明二阶半线性抛物型 PDE 的粘性解概率公式。

## 符号速查

| 符号 | 含义 | 位置 |
| --- | --- | --- |
| B_t | d 维标准布朗运动 | §2 |
| g(t,y,z) | BSDE 的生成元（generator） | §1 |
| ξ | 终端条件（FT 可测） | §1 |
| (Y_t(g,T,ξ), Z_t(g,T,ξ)) | BSDE(1) 在 S²×H² 中的解 | §1–§2 |
| K | 非降凹连续函数 κ: R+→R+ 且 κ(0)=0、κ(u)>0 (u>0)、∫₀⁺ du/κ(u)=∞ 的集合（Osgood 型） | §2 |
| ρ(·) | (H3) 弱单调性模，ρ∈K | §2 |
| ψ_α(t) | sup_{ \lvert y \rvert ≤α} \lvert g(t,y,0)−g(t,0,0) \rvert ，(H4) 中的一般增长上界 | §2 |
| q_α(y) | αy/( \lvert y \rvert ∨α)，对 y 的截断函数 | Prop 6 |
| τ | 停时：τ := inf{s≥t : \lvert B_s−B_t \rvert + ∫_t^s \lvert g(r,0,0) \rvert ²dr > 1} ∧ T | Thm 7 |
| Lp−lim | 依 Lp 意义（1≤p<2）取极限 | Thm 7 |
| X^{t,x}_s | 前向 SDE 的唯一解 | §4 |
| u(t,x) := Y^{t,x}_t | PDE(13) 的概率表示函数 | §4 |

## 核心结果

**假设 (H1)–(H5)**（逐字引用的条件，公式已线性化）：

- (H1) E[∫₀^T |g(t,0,0)|² dt] < ∞；
- (H2) dP×dt-a.e.，对每个 z∈R^d，y ↦ g(t,y,z) 连续；
- (H3) 弱单调性：存在 ρ∈K，使 dP×dt-a.e.，(y1−y2)(g(t,y1,z)−g(t,y2,z)) ≤ ρ(|y1−y2|²)；
- (H4) 一般增长：ψ_α(t) := sup_{|y|≤α}|g(t,y,0)−g(t,0,0)| ∈ H²(0,T;R) 对每个 α≥0；
- (H5) 存在 λ≥0，dP×dt-a.e.，|g(t,y,z1)−g(t,y,z2)| ≤ λ|z1−z2|。

> **定理 7（表示定理，逐字原文）**：Assume that the generator g satisfies (H1)–(H5). Then for each y ∈ R, z ∈ R^d, 1 ≤ p < 2 and dt-a.e. t ∈ [0, T),
> g(t, y, z) = Lp − lim_{ε→0+} [1/ε]( Y_t(g, (t+ε)∧τ, y + ⟨z, B_{(t+ε)∧τ} − B_t⟩) − y ),
> where τ := inf{ s ≥ t : |B_s − B_t| + ∫_t^s |g(r, 0, 0)|² dr > 1 } ∧ T.
>
> *通俗解释*：用停时 τ 截断终端与漂移后，g 可由解的首部对 ε 的极限还原。

> **推论 8（逐字原文）**：Assume that the generator g is deterministic and satisfies (H1)–(H5), and τ is defined in Theorem 7. Then for each y ∈ R, z ∈ R^d and dt-a.e. t ∈ [0, T),
> g(t, y, z) = lim_{ε→0+} [1/ε]( Y_t(g, (t+ε)∧τ, y + ⟨z, B_{(t+ε)∧τ} − B_t⟩) − y ).
>
> *通俗解释*：g 确定性时极限从 Lp 收敛加强为逐点收敛。

> **定理 12（逆比较定理，逐字原文）**：Let the generators g_i (i = 1, 2) satisfy (H1)–(H5). If for each t ∈ [0, T] and ξ ∈ L²(F_t; R), the solutions (Y_s(g_i, t, ξ), Z_s(g_i, t, ξ))_{s∈[0,t]} of BSDE(g_i, t, ξ) satisfy that P-a.s., Y_s(g_1, t, ξ) ≥ Y_s(g_2, t, ξ) for each s ∈ [0, t], then for each y ∈ R and z ∈ R^d,
> g_1(t, y, z) ≥ g_2(t, y, z), dP × dt-a.e.
>
> *通俗解释*：解恒序则生成元恒序，把解的比较反推回生成元。

> **定理 14（粘性解概率公式，逐字原文）**：Under the above assumptions, u(t, x) := Y_t^{t,x}, (t, x) ∈ [0, T] × R^n, is a continuous function of (t, x) which grows at most polynomially and it is a viscosity solution of PDE (13).
> （PDE(13)：∂_t u + L_t u + g(t, x, u, (σ*∇u)(t,x)) = 0，(t,x)∈[0,T)×R^n；u(T,x)=Φ(x)。）
>
> *通俗解释*：BSDE 解的初值给出半线性抛物 PDE 的粘性解。

## 证明骨架

- **武器库**：
  - 停时定位（localization）：用 τ 截断终端 |B_s−B_t| 与漂移 ∫|g(r,0,0)|²dr，使解 Y 本性有界（借自 Ma–Yao 2010）；
  - 截断近似：以 g(t, q_K(y), z)（q_K(y)=Ky/(|y|∨K)）替代 g(t,y,z)，把一般增长转为线性增长；
  - Lepeltier–San Martin (1997) 卷积近似技术（命题 6，构造 g_α^n(t) 满足 |g(t,q_α(y),0)−g(t,0,0)| ≤ |g_α^n(t)| + 2n|y|）；
  - 先验估计：引理 2（Xiao–Fan 2017 命题 4 的推论）；
  - 引理 1（Jiang 2008 命题 2.2）：Lp 意义下积分微分的极限恒等式 φ_t = Lp−lim_{ε→0+}(1/ε)∫_t^{t+ε}φ_s ds；
  - Itô 公式、条件期望、Hölder 不等式、Lebesgue 控制收敛；
  - 存在唯一性（命题 5，Xiao–Fan 2017 定理 6 的推论）；
  - 比较定理（Xiao–Fan 2017 定理 13，用于定理 14 证明）。
- **核心技巧**：停时截断 + q_K(y) 截断把"y 上一般增长"降解为线性增长，从而套用已知的 Lp 表示技巧。

## 阅读门槛

- BSDE 基础：Pardoux–Peng (1990) 的解存在唯一性；解空间 S²×H²；生成元与 g-期望。
- 随机分析：Itô 公式、停时、条件期望、Lp 收敛与随机积分的估计。
- 增长条件比较：(H4')（Pardoux 1999：|g(t,y,0)| ≤ |g(t,0,0)| + φ(|y|)）与 (H4) 的强弱关系；Osgood 条件 ∫₀⁺ du/κ(u)=∞ 的意义。
- 粘性解基础：Crandall–Lions 定义、一阶/二阶算子、Feynman–Kac 概率解释。
- 表示定理文献脉络：Briand et al. (2000)、Jiang (2005/2006/2008)、Ma–Yao (2010)、Fan et al. (2011)。

## 与其他文献的关联

- **Pardoux–Peng (1990)**：BSDE 解存在唯一性的出发点（Lipschitz 情形）。
- **Briand et al. (2000)**：给出 Lipschitz + 两附加条件下的表示定理 (2)，是本文公式的直接祖先。
- **Jiang (2006, 2008)**：去掉附加条件、在 Lp(1≤p<2) 意义下成立；本文引理 1 取自 Jiang (2008) 命题 2.2。
- **Jia (2010)、Fan–Jiang (2010)**：放宽为 y 上 Lipschitz/z 上一致连续、或 (y,z) 上仅连续线性增长——均限于线性增长。
- **Ma–Yao (2010)**：z 上二次增长，用停时截断 |B_s−B_t| 使 Y 本性有界——本文直接借用该思路。
- **Fan et al. (2011)**：y 上单调 + 多项式增长；本文证明部分沿用其近似技术。
- **Zheng–Li (2015)**：y 上单调 + 凸增长、z 上二次增长，依赖凸函数超可加性；本文 (H4) 不含超可加结构，因而更一般。
- **Briand et al. (2003)**：一维一般增长下存在唯一性（ψ_α(t) 仅 P-a.s. ∫ψ_α dt<∞）；本文 (H4) 把可积性加强到 H² 以得到表示定理。
- **Pardoux (1999)、Peng (1991)、Pardoux–Peng (1992)**：粘性解概率公式的既有结果；本文定理 14 条件更弱，且用表示定理方法绕开了 Pardoux (1999) 定理 3.2 依赖的严格比较定理之困难。
- **Crandall et al. (1992)**：粘性解定义来源。

## 备注

- 提取质量：pdftotext 提取，正文公式中积分上下限、绝对值、范数与 ⟨·,·⟩ 基本可辨；个别公式的上下标与符号断裂（如 ψ_α、q_α、τ 的定义中 ∧T 与阈值 1 的结合方式）已按上下文线性化并标注。
- 缺失/存疑公式位置：[UNCERTAIN: 原文 τ 定义写作 "… > 1 ∧ T"，∧T 与阈值 1 的结合在提取文本中歧义，按惯例理解为 τ = inf{…>1} ∧ T]。引理 2 与例 4 中涉及指数、对数、正态尾估计的公式因 OCR 断裂未逐字复现，仅保留定性结论（例 4 验证 g(t,y,z)=−e^{y|B_t|}+h(|y|)+|z| 满足 (H4) 而非 (H4')）。
- 证明细节（定理 7 的 Lp 收敛拆分、定理 14 的粘性解上/下解验证）公式密集，笔记仅给骨架，未逐行复现。
