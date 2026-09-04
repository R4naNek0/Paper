# FBSDE 理论与均场博弈研究进展报告

**范围：** 以 2020–2025 年的同行评议研究为主，聚焦前向—后向随机微分方程（FBSDE）的适定性、结构条件、McKean–Vlasov FBSDE（MV-FBSDE）、均场博弈（MFG）主方程及有限玩家极限理论。本文**不讨论数值离散、深度学习求解或算法性能**。

## 摘要

FBSDE 是连续时间随机控制与均场博弈的重要概率语言。近年的理论进展可归结为三条相互连接的路线：

1. **全耦合 FBSDE 的全局适定性。** 研究由经典 Lipschitz 与单调性条件，转向能够处理更一般耦合、较长时间区间和更弱正则性的结构条件。
2. **MFG 主方程的全局理论。** 在测度变量上建立足够强的正则性、稳定性与唯一性，是把宏观均场均衡与微观有限玩家 Nash 博弈连接起来的关键。
3. **从同质均场到复杂交互。** 非马尔可夫、共同噪声、图子（graphon）异质网络和路径依赖，使 FBSDE/MV-BSDE 成为比经典 PDE 更自然的表述，但也带来新的适定性与极限问题。

总体而言，研究前沿已经从“在标准假设下求解方程”推进到“如何以更少的单调性、光滑性与同质性假设，仍建立均衡的存在、唯一、稳定性及有限玩家逼近”。

## 1. 问题框架：为什么 FBSDE 是 MFG 的核心工具

典型全耦合 FBSDE 具有形式

$$
\begin{aligned}
dX_t &= b(t,X_t,Y_t,Z_t)\,dt+\sigma(t,X_t,Y_t,Z_t)\,dW_t,\\
dY_t &= -f(t,X_t,Y_t,Z_t)\,dt+Z_t\,dW_t,\\
X_0&=x,\qquad Y_T=g(X_T).
\end{aligned}
$$

其中，前向状态 $X$ 描述受噪声驱动的系统演化，后向过程 $Y$ 通常对应价值函数或伴随变量，$Z$ 则刻画鞅部分。若 $b,\sigma$ 依赖于 $(Y,Z)$，系统即为全耦合，前向初值与后向终值的双端边界结构使其明显难于单个 SDE 或 BSDE。

在均场博弈中，代表性个体的最优性条件与总体分布 $m_t=\mathcal L(X_t)$ 的一致性条件共同产生 MV-FBSDE。主方程是定义在概率测度空间上的值函数方程；足够正则的主方程解可以给出 FBSDE 的 decoupling field，并进一步构造近似有限 $N$ 人 Nash 均衡。因此，FBSDE 的适定性和主方程正则性并非孤立技术问题，而是 MFG 的存在、唯一、稳定与极限结论的基础。

## 2. FBSDE 的理论进展

### 2.1 从局部解到全局适定性

经典理论通常依赖三类机制：短时间收缩、全局 Lipschitz 条件，以及 Peng–Wu 类型单调性。近年的工作关注如何在不显著牺牲全局结论的前提下放宽这些条件。Yu 在 domination-monotonicity 框架下研究 FBSDE，代表了通过“支配结构 + 单调性”来控制前后向反馈的新尝试。[1]

这一方向的核心难点是：强耦合会使简单的 Picard 收缩在长时间区间失效；而传统全局单调性虽有效，却可能排除许多控制和博弈模型。因而值得关注的并非单一技术条件，而是不同条件之间的可比较性：它们分别允许何种耦合、是否支持任意时间长度、能否传递到测度依赖系统，以及是否有利于证明均衡唯一性。

### 2.2 从马尔可夫到非马尔可夫和路径依赖

路径依赖模型中，当前状态不足以概括历史信息，经典 Markovian Feynman–Kac 对应不再直接适用。Wang、Yong 与 Zhang 针对前向—后向随机 Volterra 积分方程（FBSVIE）建立路径依赖 Feynman–Kac 公式：借助辅助过程在适当意义下恢复流性质，并将 FBSVIE 与时间非局部的路径依赖 PDE（PPDE）联系起来。[2]

这条路线的意义在于，它为带记忆的控制和博弈模型提供了概率表示与经典解理论。其局限也很清楚：路径依赖、非局部时间结构与均场交互若同时存在，对测度导数、函数空间和比较原理都提出更高要求，尚未形成与标准 Markovian MFG 同等成熟的统一理论。

## 3. 均场博弈的主方程与唯一性

### 3.1 单调性条件从 Lasry–Lions 向更广结构推广

MFG 的唯一性通常与单调性密切相关。Gangbo、Mészáros、Mou 与 Zhang 对非可分 Hamiltonian 提出 displacement monotonicity，并以一个双线性型的耗散性质和测度变量的先验 Lipschitz 估计，建立二阶 MFG 主方程的全局适定性。[3]

这一结果的关键不只是增加了一个充分条件。它表明 displacement monotonicity 与常用 Lasry–Lions 单调性有时并不互相蕴含，即不同博弈结构可能需要不同的唯一性机制。随后，Graber 与 Mészáros 系统研究了新的单调性条件，目标是获得不依赖时间长度、初始分布光滑性或非退化个体噪声的无条件唯一性。[4]

**理论含义：** 今后的工作应避免把“单调性”视为单一假设，而应研究不同结构条件同 FBSDE 耦合形式、Hamiltonian 几何性质和主方程测度正则性之间的关系。

### 3.2 主方程、MV-BSDE 与弱形式

Possamaï 与 Tangpi 在完全非马尔可夫框架中允许漂移控制，并允许状态与控制的联合分布进入交互。他们将均场均衡刻画为一类新的 McKean–Vlasov BSDE 的解，建立相应适定性；在适当的小性/正则性终端奖励条件与漂移耗散条件下，结论不需要短时间、系数可分性或 Lasry–Lions 单调性。[5]

该工作特别重要，因为它把两个常被分别处理的问题连接起来：

- 弱形式下的均场均衡如何由 BSDE 进行概率刻画；
- 有限 $N$ 人开放环 Nash 均衡如何以非渐近速率收敛到均场对象。

这说明 MV-BSDE 不仅用于表示最优性，还可成为研究均场极限和定量误差的桥梁。

## 4. 有限玩家极限：从均场解返回 Nash 博弈

### 4.1 主方程方法与浓缩/大偏差

Delarue、Lacker 与 Ramanan 研究含个体噪声和共同噪声的对称 $N$ 人随机微分博弈。通过主方程构造一个与 Nash 动力学指数接近的 McKean–Vlasov 粒子系统，他们在无共同噪声时得到经验测度相对均场均衡的 Wasserstein 距离非渐近浓缩界，并研究了大偏差原理。[6]

该结果显示主方程的价值不只在于给出极限方程：它还可为有限系统构造可控的比较对象，从而把解析正则性转化成概率定量结论。共同噪声仍是更难的情形，大偏差结构和条件分布的随机性阻碍了直接推广。

### 4.2 非唯一均衡下的闭环极限

传统闭环收敛结果通常要求均场均衡唯一且主方程光滑可解。Lacker 证明，在不假设均场均衡唯一的情况下，闭环 $N$ 人均衡序列的任意极限点仍可被识别为弱 MFG 均衡。[7]

该结论将研究重点从“是否收敛到唯一解”转为“有限玩家模型在多个弱均衡中选择哪一个”。目前仍有一个重要开放问题：给定一个弱 MFG 均衡，何时存在有限玩家（近似）Nash 均衡序列以它为极限？这可称为**均衡选择的反向实现问题**。

## 5. 异质交互与应用：Graphon 均场博弈

标准 MFG 假设个体通过总体经验分布进行同质交互。现实网络中的影响往往取决于群体类型、空间位置或连接图结构。Bayraktar、Wu 与 Zhang 将 FBSDE 引入 graphon MFG，证明了解的存在唯一性、对交互 graphon 的稳定性和混沌传播，并据此获得有限玩家 Nash 均衡的收敛。[8]

这一方向连接了概率论、网络博弈和大规模多主体系统。其理论价值在于：graphon 不仅是计算压缩工具，而是描述异质极限交互的连续对象。其主要难点包括：

- 非均匀交互下的单调性如何表述；
- graphon 的扰动怎样传递到 FBSDE 解与均衡；
- 共同噪声、控制分布耦合、major–minor 结构加入后，混沌传播和 Nash 收敛能否保持定量形式。

## 6. 可行的研究选题

### 选题 A：共同噪声 MFG 的唯一性与长期稳定性

在 displacement monotonicity 或其他新单调性条件下，研究共同噪声驱动的主方程/MV-FBSDE 的全局适定性与长期行为。目标是厘清条件分布随机性对耗散估计和唯一性的影响。

### 选题 B：非马尔可夫弱 MFG 的闭环近似与均衡选择

以弱 MFG 均衡为对象，研究闭环有限玩家均衡的极限刻画与反向逼近。重点是从已有的紧性结论走向可验证的选择准则或构造性充分条件。

### 选题 C：Graphon MFG 的主方程与定量稳定性

把 graphon FBSDE 的稳定性提升为主方程层面的测度—类型变量正则性，进一步研究对网络估计误差或图序列逼近误差的定量敏感性。

### 选题 D：路径依赖均场博弈

从 FBSVIE–PPDE 对应出发，引入分布依赖，探索含记忆成本或粗糙环境的均场控制/均场博弈。短期目标可设为小时间适定性或线性二次模型中的显式结构；长期目标是建立主方程或弱均衡理论。

## 7. 建议阅读路径

1. 先读 [3]，理解非可分 Hamiltonian 和 displacement monotonicity 下的主方程全局适定性。
2. 再读 [4]，比较不同单调性条件的适用范围与唯一性机制。
3. 读 [7]，掌握闭环有限玩家均衡在非唯一情形下的弱极限观点。
4. 读 [6]，理解主方程如何导出有限玩家近似、浓缩和大偏差结论。
5. 读 [5]，进入非马尔可夫弱形式和 MV-BSDE 的均衡表征。
6. 最后读 [8] 与 [2]，分别扩展到异质网络交互和记忆/路径依赖模型。

## 参考文献

[1] Zhiyong Yu. *On Forward–Backward Stochastic Differential Equations in a Domination-Monotonicity Framework*. Applied Mathematics & Optimization, 2022. <https://doi.org/10.1007/s00245-022-09841-8>

[2] Hanxiao Wang, Jiongmin Yong, Jianfeng Zhang. *Path dependent Feynman–Kac formula for forward backward stochastic Volterra integral equations*. Annales de l’Institut Henri Poincaré, Probabilités et Statistiques, 2022. <https://doi.org/10.1214/21-AIHP1158>

[3] Wilfrid Gangbo, Alpár R. Mészáros, Chenchen Mou, Jianfeng Zhang. *Mean field games master equations with nonseparable Hamiltonians and displacement monotonicity*. The Annals of Probability, 2022. <https://doi.org/10.1214/22-AOP1580>

[4] P. Jameson Graber, Alpár R. Mészáros. *On monotonicity conditions for mean field games*. Journal of Functional Analysis, 2023. <https://doi.org/10.1016/j.jfa.2023.110095>

[5] Dylan Possamaï, Ludovic Tangpi. *Non-asymptotic Convergence Rates for Mean-Field Games: Weak Formulation and McKean–Vlasov BSDEs*. Applied Mathematics & Optimization, 2025. <https://doi.org/10.1007/s00245-025-10256-4>

[6] François Delarue, Daniel Lacker, Kavita Ramanan. *From the master equation to mean field game limit theory: Large deviations and concentration of measure*. The Annals of Probability, 2020. <https://doi.org/10.1214/19-AOP1359>

[7] Daniel Lacker. *On the convergence of closed-loop Nash equilibria to the mean field game limit*. The Annals of Applied Probability, 2020. <https://doi.org/10.1214/19-AAP1541>

[8] Erhan Bayraktar, Ruoyu Wu, Xin Zhang. *Propagation of Chaos of Forward–Backward Stochastic Differential Equations with Graphon Interactions*. Applied Mathematics & Optimization, 2023. <https://doi.org/10.1007/s00245-023-09996-y>
