# 反射倒向随机微分方程（RBSDE）的发展历程与最新进展

**报告类型：** 理论发展与研究前沿调研报告  
**检索截点：** 2026-08-30  
**关键词：** RBSDE、DRBSDE、Dynkin game、障碍 PDE、均值反射、2RBSDE、随机终止时间、跳过程

## 摘要

反射倒向随机微分方程（reflected backward stochastic differential equation, RBSDE）是在普通倒向随机微分方程（BSDE）中加入最小有限变差“反射”项，使解过程始终保持在给定障碍的一侧或两侧。它提供了障碍偏微分方程、最优停止、Dynkin 博弈、美国期权、信用风险与非线性期望之间的统一概率语言。该领域经历了从布朗运动驱动的单连续障碍模型，到双障碍、跳过程、不规则障碍、一般滤过、模型不确定性、均值场与高维数值计算的连续扩展。

本报告首先说明 RBSDE 的基本结构和核心数学机制；其次按时间线归纳其理论演进；然后梳理双障碍、跳扩散、均值反射、二阶反射 BSDE 等主要分支，并总结截至检索截点可核验的近年进展。结论是：RBSDE 的基础适定性理论已相当成熟，但高维可证明数值算法、一般滤过下不规则双障碍、以及模型不确定性与均值场/跳过程的联合约束，仍是最有活力且技术最困难的方向。

---

## 1. 问题背景与基本定义

### 1.1 从 BSDE 到 RBSDE

设 \((W_t)_{0\le t\le T}\) 是布朗运动，\(\xi\) 是终端随机变量，\(f\) 是生成元。普通 BSDE 的标准形式为

\[
Y_t=\xi+\int_t^T f(s,Y_s,Z_s)\,ds-\int_t^T Z_s\,dW_s.
\]

给定下障碍过程 \(S\)，单下障碍 RBSDE 寻找三元组 \((Y,Z,K)\)，满足

\[
Y_t=\xi+\int_t^T f(s,Y_s,Z_s)\,ds+K_T-K_t-\int_t^T Z_s\,dW_s,
\]

以及

\[
Y_t\ge S_t,\qquad K\ \text{递增},\qquad
\int_0^T (Y_t-S_t)\,dK_t=0.
\]

其中 \(K\) 是反射过程。最后一条是 **Skorokhod 最小性条件**：只有当 \(Y\) 接触障碍 \(S\) 时，\(K\) 才能增加。因此，\(K\) 不是任意补偿项，而是把解维持在可行域内所需的最小推力。

若取上下两条障碍 \(L\le U\)，则得到双反射 BSDE（doubly reflected BSDE, DRBSDE）：

\[
Y_t=\xi+\int_t^T f(s,Y_s,Z_s)\,ds+(K_T^+-K_t^+)-(K_T^--K_t^-)
-\int_t^T Z_s\,dW_s,
\]

并有 \(L_t\le Y_t\le U_t\)。其中 \(K^+\) 仅在 \(Y=L\) 时增加，\(K^-\) 仅在 \(Y=U\) 时增加。

### 1.2 为什么“反射”重要

RBSDE 的价值不止于添加一个约束。它使下列对象彼此等价或可相互表示：

- **最优停止与 Snell envelope**：单障碍 RBSDE 的解是非线性 \(f\)-期望下的 Snell envelope；
- **美国期权**：早行权边界对应障碍，价值过程由 RBSDE 给出；
- **Dynkin game 与以色列期权**：双障碍对应双方都可停止的零和博弈；
- **障碍 PDE/变分不等式**：在 Markov 情形，\(Y_t=u(t,X_t)\)，函数 \(u\) 是障碍 PDE 的黏性解；
- **风险约束与系统性风险**：均值反射将路径约束推广为分布或期望层面的资本约束。

例如，在 Markov 框架中，\(u\) 常满足

\[
\min\bigl\{u-h,\,-\partial_tu-\mathcal Lu-f(t,x,u,\sigma^\top\nabla u)\bigr\}=0,
\]

其中 \(h\) 为障碍，\(\mathcal L\) 是状态过程的无穷小生成元。这一关系是 RBSDE 连接随机分析与非线性 PDE 的核心桥梁。

---

## 2. 历史发展脉络

### 2.1 前史：最优停止、BSDE 与非线性期望（1970s–1990）

RBSDE 的思想根源来自三条线索：最优停止问题中的 Snell envelope、障碍型变分不等式，以及随机控制中的伴随倒向方程。Pardoux 与 Peng 在 1990 年证明了 Lipschitz 生成元 BSDE 的适定性，为后续加入障碍和反射项提供了基本估计、比较原理与稳定性工具。其后发展的 \(g\)-期望，使“条件期望—最优停止”的线性图景可以被非线性地推广。

### 2.2 奠基阶段：反射、最优停止与障碍 PDE（1996–1997）

1996 年，Cvitanić 与 Karatzas 系统地研究反射 BSDE 和 Dynkin 博弈，说明双边约束可编码两位玩家的最优停止问题。1997 年，El Karoui、Kapoudjian、Pardoux、Peng 与 Quenez 的论文给出单障碍 RBSDE 的经典理论：在适当可积性与 Lipschitz 条件下，解存在唯一；反射解与最优停止的 Snell envelope 相联系；在 Markov 情形可表示障碍 PDE 的黏性解。

这两项工作确立了领域至今仍在使用的基本问题、记号和技术路线：比较定理、惩罚逼近、Snell envelope 表示及 PDE 概率表示。

### 2.3 双障碍、跳过程与金融博弈（约 2000–2010）

该时期的重要问题是将一条障碍推广为两条障碍。技术难点在于上下反射不能彼此冲突：若障碍允许不受控地接近或相交，两个推力过程的构造与唯一性都会失效。Mokobodzki 条件——存在夹在两条障碍之间的适当半鞅——成为经典的相容性假设之一。

同时，研究扩展至：

- 带 Poisson 跳和一般随机测度的 RBSDE；
- 二次增长生成元与较弱可积性数据；
- RCLL（右连续且有左极限）障碍；
- 无穷时域与切换控制；
- game option、违约风险和不完全市场下的定价。

这一阶段使 RBSDE 从“布朗连续模型”走向能够容纳突发事件和双边博弈的金融建模工具。

### 2.4 不规则障碍与一般滤过（2010s）

当障碍不连续或滤过并非由布朗运动生成时，反射项未必连续，传统的连续 Skorokhod 条件不再足够。研究者借助 Mertens 分解、可预测/可选过程理论和一般鞅表示，处理可选障碍、RCLL 障碍与一般滤过。此类推广特别适合默认事件、信息突变和随机终止时间。

### 2.5 鲁棒化：二阶反射 BSDE（2010s–至今）

Soner、Touzi 与 Zhang 的二阶 BSDE（2BSDE）理论将单一概率测度推广为一族通常互不绝对连续的测度，从而表达波动率不确定性。Matoussi、Possamaï 与 Zhou 随后构建二阶反射 BSDE（2RBSDE）：它在模型不确定性之上再加入障碍约束，适合鲁棒美国期权、鲁棒最优停止和不确定波动率模型。

关键变化是：解的表示不再只是一个固定测度下的条件期望，而涉及一族模型下解的上确界或本质上确界；聚合不同测度下的控制过程和反射项成为核心难题。

### 2.6 分布依赖与计算阶段（2020s）

近年发展明显呈现三种趋势：

1. **分布依赖**：均值反射、McKean–Vlasov RBSDE 与均值场反射 FBSDE，适用于资本充足率、群体风险和大规模博弈；
2. **更一般的噪声与信息结构**：标记点过程、一般 RCLL 鞅、默认时刻和随机终止时间；
3. **可计算性**：惩罚法、时间离散、回归 Monte Carlo、深度 BSDE 与多层/两网格近似方法。

---

## 3. 主要理论分支

### 3.1 单障碍 RBSDE：非线性最优停止

对下障碍问题，常见表示为

\[
Y_t=\operatorname*{ess\,sup}_{\tau\in\mathcal T_{t,T}}
\mathcal E^f_{t,\tau}\left[S_\tau\mathbf 1_{\{\tau<T\}}+\xi\mathbf 1_{\{\tau=T\}}\right],
\]

其中 \(\mathcal E^f\) 是由 BSDE 诱导的非线性条件期望。该式揭示：反射过程将“停在何时最好”的最优化嵌入倒向动态中。障碍足够正则时，首次接触时刻常给出最优停止时刻；障碍不规则时，最优停止可能需改为 \(\varepsilon\)-最优或采用更精细的停时/分割停止概念。

### 3.2 双障碍 RBSDE：Dynkin game

DRBSDE 对应两个玩家选择停止时间 \(\tau\) 和 \(\sigma\) 的 Dynkin game。下障碍通常代表一方停止时的支付，上障碍代表另一方停止时的支付。若存在鞍点 \((\tau^\star,\sigma^\star)\)，则双方都无动机单方面改变策略。双障碍理论的关键不是仅仅证明 \(L\le Y\le U\)，而是确认两个反射机制的最小性、相容性和博弈值的一致性。

### 3.3 带跳与一般滤过 RBSDE

若噪声包含 Poisson 随机测度 \(\mu\)，方程还会出现

\[
-\int_t^T\int_E V_s(e)\,\widetilde\mu(ds,de).
\]

跳会使 \(Y\) 在障碍附近发生跨越；此时反射规则必须区分左极限、右跳和可预测跳。一般滤过下还可能没有布朗运动表示，需以一般鞅及其正交分量书写方程。该分支对信用事件、保险索赔、订单流和市场停牌等应用尤其重要。

### 3.4 均值反射与均值场反射

均值反射常施加如下约束：

\[
\mathbb E[\ell(t,Y_t)]\ge0,
\]

而不是逐路径要求 \(Y_t\ge S_t\)。相应的反射过程调节整体分布或总体风险水平。均值场 RBSDE 则进一步让生成元、终端值或障碍依赖 \(\mathcal L(Y_t)\)。这类模型能表达大量主体互动，但也引入固定点、条件分布和公共噪声等额外难题。

### 3.5 二阶反射 BSDE

2RBSDE 同时要求：

- 在每个候选模型下满足适当的反射方程；
- 在跨模型意义下满足最小性；
- 解对一族可能非支配的概率测度保持一致。

它是鲁棒控制与障碍问题交汇处的工具。与经典 RBSDE 相比，难点从单模型的 `K` 构造，升级为跨测度的聚合、动态规划和准必然（quasi-sure）分析。

---

## 4. 最新进展（以已发表文献为主）

### 4.1 随机终止时间与一般化 RBSDE

Aksamit、Li 与 Rutkowski（2023）研究随机终止时间下的 generalized BSDE 和 reflected BSDE。随机期限使模型可覆盖违约、死亡、项目提前终止等情形；相较固定终端时间，适定性与比较原理需重新处理终止时刻处的可积性和滤过结构。

### 4.2 标记点过程驱动的均值反射与保险风险

Gu、Lin 与 Xu（2024）研究由标记点过程驱动的均值反射 BSDE，并用于保险风险管理。其贡献在于同时纳入：理赔/灾害等跳风险、总体意义的风险约束，以及倒向价值动态。这代表均值反射理论正从纯布朗框架进入事件驱动的风险系统。

### 4.3 弱单调性下的均值场反射 BDSDE

Fu 与 Fei（2025）讨论弱单调系数下的均值场反射 backward doubly stochastic differential equation。弱单调条件比全局 Lipschitz 更宽松，因而更接近某些非线性 SPDE 模型；代价是唯一性与稳定性证明需采用更精细的先验估计。

### 4.4 RCLL 鞅、完全分离障碍与默认风险

2025 年的多项研究继续将 DRBSDE 推向一般 RCLL 鞅、完全分离的 càdlàg 障碍、随机 Lipschitz 系数与默认时间。这些工作直接服务于广义 Dynkin game 和 game option 定价，也凸显了一般滤过下的停时策略与反射项分解问题尚未完全定型。

### 4.5 数值算法：从惩罚法到两网格方法

经典数值路线是以惩罚项替代硬约束，例如以 \(n(Y-S)^-\) 逼近下反射、以 \(n(Y-U)^+\) 逼近上反射，再令 \(n\to\infty\)。其优点是可以复用普通 BSDE 求解器，缺点是大惩罚参数带来刚性和误差放大。Lee 与 Park 在 2026 年预印本中提出针对 DRBSDE 的 two-grid penalty approximation，反映出研究重点正从“能否收敛”转向“如何在有限计算预算下稳定且高效地收敛”。该成果目前为预印本，尚应等待同行评审验证。

### 4.6 深度学习方法的机会与限制

深度 BSDE 方法和神经网络回归有望缓解维数灾难，但 RBSDE 的接触集通常不光滑，双障碍还涉及两侧投影与博弈策略恢复。现阶段最重要的开放问题不是获得数值曲线，而是建立：

- 反射投影/惩罚误差与网络逼近误差的统一界；
- 不规则障碍下的稳定训练与收敛保证；
- 从近似值函数恢复近似最优停止或鞍点策略的理论保证。

---

## 5. 关键技术工具

| 工具 | 作用 | 典型适用场景 |
| --- | --- | --- |
| 比较定理 | 比较不同终端值、生成元或障碍所产生的解 | 单障碍适定性、单调收敛 |
| 惩罚法 | 用强漂移项近似硬障碍 | 存在性证明、数值离散 |
| Snell envelope | 将反射解表示为最优停止值 | 美国期权、\(g\)-期望 |
| Mokobodzki 条件 | 保证双障碍间有可行半鞅 | DRBSDE 存在性 |
| 黏性解理论 | 将 RBSDE 与障碍 PDE 对应 | Markov 问题与 PDE 正则性不足 |
| Mertens 分解 | 处理不规则可选障碍 | 一般滤过、RCLL 障碍 |
| 非线性/二阶期望 | 描述模型不确定性 | 2RBSDE、鲁棒最优停止 |
| 固定点与 Wasserstein 估计 | 处理分布依赖 | McKean–Vlasov、均值场反射 |

---

## 6. 未决问题与研究建议

### 6.1 高维、非光滑问题的可证明算法

高维美式期权和多主体约束问题难以用网格 PDE 法处理。深度方法虽有实践潜力，但在双障碍、跳过程、随机终止时间和非光滑障碍同时存在时，缺少统一的误差理论。研究可重点关注“时间离散误差 + 惩罚误差 + 统计学习误差”的可分解上界。

### 6.2 一般滤过下的不规则双障碍

在没有布朗鞅表示、障碍可能跳跃或仅可选的条件下，反射项的规范分解、最优停时的存在及 Dynkin game 鞍点的刻画都高度微妙。该方向适合从 RCLL 障碍、随机终止时间和一般鞅三个维度逐步推进。

### 6.3 多重不确定性的统一模型

把模型不确定性（2RBSDE）、均值场相互作用、跳风险和反射约束同时纳入，具有明确的金融与系统性风险意义，但目前的理论工具尚难同时解决非支配测度、条件分布、随机测度和双边约束。

### 6.4 从“值”到“策略”

证明 \(Y\) 存在唯一并不等于完成决策问题。实际应用还需构造最优停止时刻、Dynkin game 鞍点、可实施对冲头寸及其对模型扰动的稳定性。把理论解转化为可验证策略，是未来应用研究的关键环节。

---

## 7. 结论

RBSDE 已从一个带单侧约束的 BSDE 模型，发展为连接最优停止、随机博弈、障碍 PDE、跳过程、鲁棒控制和群体风险约束的成熟理论平台。经典单障碍与标准双障碍的适定性、比较和 PDE 表示已形成稳定工具箱；当前的创新更多发生在放宽正则性与信息结构、处理分布依赖和模型不确定性、以及构造高维可计算方法。

对于希望进入该方向的研究者，建议先牢固掌握普通 BSDE、Snell envelope、障碍 PDE 和 Dynkin game；随后根据兴趣选择一般滤过/跳过程、均值场/均值反射、2RBSDE，或高维数值方法作为深入方向。前沿工作的共同挑战是：在更真实的模型结构下，同时保持适定性、可解释的策略表示与可验证的数值精度。

---

## 参考文献

1. Pardoux, É., Peng, S. (1990). _Adapted solution of a backward stochastic differential equation_. Systems & Control Letters, 14(1), 55–61.
2. Cvitanić, J., Karatzas, I. (1996). _Backward stochastic differential equations with reflection and Dynkin games_. Annals of Probability, 24(4), 2024–2056. <https://doi.org/10.1214/aop/1041903216>
3. El Karoui, N., Kapoudjian, C., Pardoux, É., Peng, S., Quenez, M.-C. (1997). _Reflected solutions of backward SDE's, and related obstacle problems for PDE's_. Annals of Probability, 25(2), 702–737. <https://doi.org/10.1214/aop/1024404416>
4. Hamadène, S., Hassani, M. (2005). _BSDEs with two reflecting barriers: the general result_. Probability Theory and Related Fields, 132, 237–264.
5. Soner, H. M., Touzi, N., Zhang, J. (2012). _Wellposedness of second order backward SDEs_. Probability Theory and Related Fields, 153, 149–190.
6. Matoussi, A., Possamaï, D., Zhou, C. (2015). _Reflected second order backward stochastic differential equations_. Annals of Applied Probability, 25, 2420–2457.
7. Aksamit, A., Li, L., Rutkowski, M. (2023). _Generalized BSDE and reflected BSDE with random time horizon_. Electronic Journal of Probability, 28. <https://doi.org/10.1214/23-EJP927>
8. Li, J., Mi, C., Xing, C. (2023). _General Coupled Mean-Field Reflected Forward-Backward Stochastic Differential Equations_. Acta Mathematica Scientia. <https://doi.org/10.1007/s10473-023-0518-4>
9. Gu, Z., Lin, Y., Xu, K. (2024). _Mean Reflected BSDE Driven by a Marked Point Process and Application in Insurance Risk Management_. ESAIM: Control, Optimisation and Calculus of Variations. <https://doi.org/10.1051/cocv/2024040>
10. Fu, Z., Fei, D. (2025). _General mean-field reflected backward doubly stochastic differential equations with weak monotonicity coefficients_. Stochastics. <https://doi.org/10.1080/17442508.2025.2554085>
11. Elmansouri, B. (2025). _Applications of Doubly Reflected BSDEs Driven by RCLL Martingales to Dynkin Games and American Game Options_. Mediterranean Journal of Mathematics. <https://doi.org/10.1007/s00009-025-02928-w>
12. Lin, Y., Gu, Z., Xu, K. (2025). _Reflected BSDE driven by a marked point process with a convex/concave generator_. Stochastic Processes and their Applications. <https://doi.org/10.1016/j.spa.2025.104777>
13. Lee, W., Park, H. (2026). _Two-grid Penalty Approximation Scheme for Doubly Reflected BSDEs_. arXiv preprint. <https://doi.org/10.48550/arXiv.2603.09757>

> 注：第 13 项为预印本，不应与同行评审论文作同等强度的结论依据；“最新进展”部分以可公开核验的论文元数据为线索，未宣称穷尽该快速增长领域的全部成果。
