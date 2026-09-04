# BSDE 与 Diffusion Model：理论连接、方法谱系与研究路线调研报告

> 面向读者：具备 BSDE、随机分析、PDE 或随机控制背景，尚未系统学习 Diffusion Model 的研究者。  
> 版本：初稿；文献覆盖经典基础与代表性交叉工作，提交前应按目标方向补做数据库检索与引用核验。

## 摘要

Diffusion Model 将数据分布逐渐扰动到简单先验，再借助时间反向随机过程生成数据。连续时间表述中，生成质量取决于边缘密度的 score，即 \(\nabla_x\log p_t(x)\)。BSDE 与该领域存在三层不同强度的连接：

1. **解析连接**：对数密度、Schrödinger potential 和 value function 满足半线性 PDE；非线性 Feynman–Kac 公式给出相应 BSDE，\(Z_t\) 与空间梯度成正比。
2. **控制连接**：Föllmer drift、Doob \(h\)-transform、熵正则随机控制及 Schrödinger Bridge 都把生成过程写成受控扩散；其 optimality system 可由 FBSDE、HJB 或 forward–backward potentials 描述。
3. **算法连接**：deep BSDE、score matching、flow matching、stochastic control 和 Schrödinger bridge 提供不同学习手段。但样本型数据集不提供终端对数密度，故不能把标准 Deep BSDE 直接套到 DDPM 上。

结论：BSDE 不是“替代” Diffusion Model 的单一技术。最有价值位置是双端分布约束、随机控制、路径约束、条件生成、不确定性估计与理论误差分析。把 reverse SDE 改写为 BSDE 不构成研究创新；必须解决传统 score matching 未解决的问题，或给出可证优势。

---

## 1. 问题、记号与时间方向

令数据分布为 \(\mu_0\)，状态 \(X_t\in\mathbb R^d\)。标准连续时间正向扩散写成

\[
dX_t=b(t,X_t)dt+\sigma(t,X_t)dW_t,\qquad a(t,x)=\sigma(t,x)\sigma(t,x)^\top.
\]

正向过程从 \(X_0\sim\mu_0\) 开始，令 \(X_T\) 接近易采样先验 \(\pi\)，通常 \(\mathcal N(0,I)\)。\(p_t\) 表示 \(X_t\) 的密度，score 表示

\[
s_t(x)=\nabla_x\log p_t(x).
\]

若 \(a(t,x)=g(t)^2I\) 不依赖状态，则把时间变量从 \(T\) 积分回 \(0\) 时，反向 SDE 常写为

\[
dX_t=\left[b(t,X_t)-g(t)^2s_t(X_t)\right]dt+g(t)d\bar W_t,\qquad dt<0.
\]

此写法的 \(dt<0\) 很关键。若定义正向运行的反向时间变量 \(s=T-t\)，则 drift 符号改变。一般状态依赖扩散还出现 \(\nabla\!\cdot a\) 修正项。任何 BSDE 推导必须先固定时间约定；不少跨学科文章在此处混淆符号。

---

## 2. Diffusion Model 最小理论框架

### 2.1 离散 DDPM

DDPM 构造 Markov 链：

\[
q(x_t\mid x_{t-1})=\mathcal N(\sqrt{1-\beta_t}x_{t-1},\beta_tI).
\]

定义 \(\alpha_t=1-\beta_t\)，\(\bar\alpha_t=\prod_{k\le t}\alpha_k\)，则

\[
x_t=\sqrt{\bar\alpha_t}x_0+\sqrt{1-\bar\alpha_t}\,\varepsilon,
\qquad \varepsilon\sim\mathcal N(0,I).
\]

神经网络常预测噪声 \(\varepsilon_\theta(x_t,t)\)，以损失

\[
\mathcal L_{\varepsilon}=\mathbb E\|\varepsilon-\varepsilon_\theta(x_t,t)\|^2
\]

训练。因条件分布为显式 Gaussian，条件 score 为

\[
\nabla_{x_t}\log q(x_t\mid x_0)
=-\frac{\varepsilon}{\sqrt{1-\bar\alpha_t}}.
\]

所以 noise prediction 等价于估计边缘 score：

\[
s_\theta(x_t,t)=-\frac{\varepsilon_\theta(x_t,t)}{\sqrt{1-\bar\alpha_t}}.
\]

### 2.2 Denoising Score Matching

数据密度 \(p_t\) 未知，故不能直接回归 \(\nabla\log p_t\)。Denoising score matching (DSM) 使用可知的加噪核：

\[
\mathcal L_{\rm DSM}(\theta)=
\mathbb E_{t,X_0,X_t}\left[
\lambda(t)\left\|
s_\theta(X_t,t)-\nabla_{x_t}\log p_{t\mid0}(X_t\mid X_0)
\right\|^2
\right].
\]

在适当可积条件下，其最优解为 \(\nabla\log p_t\)。这一步解释 Diffusion Model 的核心可训练性：只有独立数据样本，无需数据密度值。

### 2.3 Score-SDE 与 probability flow ODE

Song 等将离散模型统一到 SDE。给定 score 近似 \(s_\theta\)，可通过反向 SDE 采样，也可通过具有相同一维边缘分布的 ODE 采样：

\[
dX_t=\left[b(t,X_t)-\frac12g(t)^2s_\theta(X_t,t)\right]dt.
\]

后者称 probability flow ODE，可用于确定性采样与 likelihood 计算。它与 BSDE/PDE 观点的共同中心不是噪声本身，而是 density evolution。

---

## 3. 从 Fokker–Planck 到 BSDE：哪些连接严格成立

### 3.1 对数密度 PDE

Fokker–Planck 方程：

\[
\partial_tp_t=-\nabla\!\cdot(b p_t)+\frac12\sum_{i,j}\partial_{ij}(a_{ij}p_t).
\]

若 \(a=a(t)\) 与空间无关，令 \(u=\log p\)，则

\[
\partial_tu=-\nabla\!\cdot b-b\cdot\nabla u
+\frac12\operatorname{tr}(a\nabla^2u)
+\frac12\|\sigma^\top\nabla u\|^2.
\]

这是一条带 quadratic gradient 项的 viscous Hamilton–Jacobi 方程。形式上，\(Z_t=\sigma(t,X_t)^\top\nabla u(t,X_t)\) 是自然对象，且 score 可由

\[
\nabla u=\sigma^{-\top}Z
\]

恢复；后式要求非退化或使用伪逆/可识别子空间。

### 3.2 不能直接把 \(\log p_T\) 当作已知终值

此处存在决定性障碍。正向加噪从未知 \(p_0=p_{\rm data}\) 得到 \(p_T\approx\pi\)。即使 \(p_T\) 接近 Gaussian，也通常不等于 Gaussian。更重要地，若试图由 \(\log p_T\) 向回解对数密度 PDE，本质上在反演 heat semigroup，问题不适定且会抹掉数据细节。

因此，下列想法通常不成立：

> “已知 Gaussian terminal condition，所以把 \(Y_T=\log p_T(X_T)\) 代入 quadratic BSDE，直接求整个 data score。”

它最多给出近似先验模型，不会从样本中恢复未知数据分布。标准 Diffusion Model 用 DSM 绕开这一障碍。

### 3.3 非线性 Feynman–Kac：真正干净的 BSDE 通道

给定参考扩散

\[
dR_t=b(t,R_t)dt+\sigma(t,R_t)dW_t,
\]

以及可计算终端势 \(\phi\)，令

\[
u(t,x)=\log\mathbb E\left[\exp\{\phi(R_T)\}\mid R_t=x\right].
\]

则 \(u\) 满足

\[
\partial_tu+\mathcal L_tu+\frac12\|\sigma^\top\nabla u\|^2=0,
\qquad u(T,x)=\phi(x),
\]

并有 BSDE

\[
Y_t=\phi(R_T)+\int_t^T\frac12\|Z_r\|^2dr-\int_t^TZ_r\,dW_r,
\qquad Z_t=\sigma^\top\nabla u(t,R_t).
\]

对应 Doob \(h\)-transform 或最优受控 drift：

\[
b^\star(t,x)=b(t,x)+a(t,x)\nabla u(t,x).
\]

若 \(\phi=\log(d\mu/dR_T)\)，则该控制将参考终端边缘转为目标 \(\mu\)。这就是 Föllmer drift 与熵最小控制的核心形式。问题变为：样本只给出 \(\mu\) 的抽样，未给出 \(\phi\)；必须通过 density-ratio learning、变分目标、IPF 或 score/flow matching 学习势函数或 drift。

### 3.4 Schrödinger Bridge

给定参考路径测度 \(R\) 和两个端点边缘 \(\mu_0,\mu_T\)，Schrödinger Bridge 求

\[
P^\star=\arg\min_{P:\,P_0=\mu_0,\,P_T=\mu_T}\mathrm{KL}(P\|R).
\]

在可行且正则时，最优路径测度具有端点重加权形式

\[
\frac{dP^\star}{dR}=f(X_0)g(X_T).
\]

前后 Schrödinger potentials 给出两个 Doob \(h\)-transforms。连续时间中，两个 drift、两个 score 或两个 control 通常满足耦合关系。此结构比单端 DDPM 更接近 BSDE/FBSDE：端点条件、动态约束、控制代价都显式存在。

### 3.5 三种对象不可混同

| 对象 | 已知信息 | 典型学习法 | BSDE 角色 |
| --- | --- | --- | --- |
| DDPM / score-SDE | 数据样本 + 已知加噪核 | DSM / noise prediction | score 可视为梯度或 \(Z\) 的函数 |
| Föllmer process | 目标相对参考分布的密度比 | terminal potential、变分控制 | quadratic BSDE / Doob transform |
| Schrödinger Bridge | 两端样本分布 + 参考扩散 | IPF、drift matching、SB matching | forward–backward control / potentials |

---

## 4. 方法谱系与 BSDE 可介入位置

### 4.1 直接 score learning

网络输出 \(s_\theta(t,x)\)，DSM 提供监督信号。优点：训练稳定、目标可计算、已有规模化经验。缺点：局部回归目标未显式强制全路径动力学一致性；条件与约束需额外设计。

BSDE 介入：把 \(Z_\theta=\sigma^\top s_\theta\) 作为网络输出，加入由势函数或 value network 产生的 martingale consistency。前提是必须可估计 \(Y\) 或终端势；否则 residual 没有可观测锚点。

### 4.2 Deep BSDE methods

Deep BSDE 方法用神经网络参数化 \(Z_t\)，沿前向轨迹模拟 BSDE，并以 terminal mismatch 训练。其强项是高维半线性 PDE。其困难是 quadratic driver、长时间离散误差、网络/时间离散共同优化、终端数据仅有样本而非 \(\phi(x)\) 值。

适合 Diffusion 方向：已知 terminal reward、物理能量、偏好模型、风险敏感目标、带约束控制。  
不适合直接替代 DSM：仅有离线数据样本的无条件图像生成。

### 4.3 随机最优控制与 path-space KL

Girsanov 变换把 drift control \(u_t\) 的能量写成相对熵项，典型形式：

\[
\mathrm{KL}(P^u\|R)=\frac12\mathbb E_{P^u}\int_0^T\|u_t\|^2dt
\]

（具体形式依赖控制坐标与端点重加权）。终端奖励或端点约束加入后，HJB、BSDE 和 optimal control 对偶出现。此路线天然支持：控制代价、硬/软终端约束、路径成本、风险约束与条件生成。

### 4.4 Schrödinger Bridge 学习

经典迭代比例拟合（IPF/Sinkhorn in path space）交替更新前向与反向 potentials。现代算法常用 score matching、flow matching、trajectory matching 或 simulation-free objectives 近似。优势：同时使用源分布与目标分布，适合 domain transfer、time-series interpolation、inverse problems。风险：双网络耦合、采样偏差、reference process 选择敏感。

### 4.5 Flow matching 与 stochastic interpolants

Flow matching 直接学习连接两端分布的 velocity field。Stochastic interpolants 则统一 ODE flow、SDE diffusion 与部分 bridge 结构。二者不必显式估计 log density，常比 deep BSDE 更易训。BSDE 方向应解释其额外收益：例如路径约束、value estimates、风险量化、理论收敛或更少 bridge iterations。

---

## 5. 现有研究结论与可引用文献

### 5.1 生成建模基础

1. Ho, Jain, Abbeel. **Denoising Diffusion Probabilistic Models**. NeurIPS, 2020. arXiv:2006.11239。
2. Song, Sohl-Dickstein, Kingma, Kumar, Ermon, Poole. **Score-Based Generative Modeling through Stochastic Differential Equations**. ICLR, 2021. arXiv:2011.13456。
3. Song, Meng, Ermon. **Denoising Diffusion Implicit Models**. ICLR, 2021. arXiv:2010.02502。
4. Nichol, Dhariwal. **Improved Denoising Diffusion Probabilistic Models**. ICML, 2021. arXiv:2102.09672。
5. Karras et al. **Elucidating the Design Space of Diffusion-Based Generative Models**. NeurIPS, 2022. arXiv:2206.00364。
6. Hyvärinen. **Estimation of Non-Normalized Statistical Models by Score Matching**. JMLR, 2005。
7. Vincent. **A Connection Between Score Matching and Denoising Autoencoders**. Neural Computation, 2011。

### 5.2 时间反演、BSDE 与 PDE

1. Anderson. **Reverse-Time Diffusion Equation Models**. Stochastic Processes and their Applications, 1982. DOI: 10.1016/0304-4149(82)90051-5。
2. Haussmann, Pardoux. **Time Reversal of Diffusions**. Annals of Probability, 1986。
3. Pardoux, Peng. **Adapted Solution of a Backward Stochastic Differential Equation**. Systems & Control Letters, 1990。
4. El Karoui, Peng, Quenez. **Backward Stochastic Differential Equations in Finance**. Mathematical Finance, 1997。BSDE–PDE/控制基本工具。
5. Han, Jentzen, E. **Solving High-Dimensional Partial Differential Equations Using Deep Learning**. PNAS, 2018. DOI: 10.1073/pnas.1718942115。
6. E, Han, Jentzen. **Deep Learning-Based Numerical Methods for High-Dimensional Parabolic Partial Differential Equations and Backward Stochastic Differential Equations**. Communications in Mathematics and Statistics, 2017. DOI: 10.1007/s40304-017-0117-6。

### 5.3 Föllmer、熵控制与 Schrödinger Bridge

 1. Föllmer. **An Entropy Approach to the Time Reversal of Diffusion Processes**. 1985。Föllmer drift 的经典来源。
 2. Léonard. **A Survey of the Schrödinger Problem and Some of Its Connections with Optimal Transport**. Discrete and Continuous Dynamical Systems A, 2014。Schrödinger problem 经典综述。
 3. Chen, Georgiou, Pavon. **Optimal Steering of a Linear Stochastic System to a Final Probability Distribution, Part I**. IEEE Transactions on Automatic Control, 2016。随机控制与 bridge 联系。
 4. De Bortoli, Thornton, Heng, Doucet. **Diffusion Schrödinger Bridge with Applications to Score-Based Generative Modeling**. NeurIPS, 2021. arXiv:2106.01357。
 5. Vargas, Thodoroff, Lamacraft, Lawrence. **Solving Schrödinger Bridges via Maximum Likelihood**. Entropy, 2021。注意按最终版本核对作者与书目信息。
 6. Winkler, Ojeda, Opper. **A Score-Based Approach for Training Schrödinger Bridges for Data Modelling**. Entropy, 2023. DOI: 10.3390/e25020316。
 7. Albergo, Boffi, Vanden-Eijnden. **Stochastic Interpolants: A Unifying Framework for Flows and Diffusions**. 2023. arXiv:2303.08797。

上述列表是进入课题所需的“骨架”，不是穷尽式文献表。检索阶段应加入关键词：`Föllmer process generative modeling`、`quadratic BSDE stochastic control`、`Schrödinger bridge score matching`、`path-space KL diffusion model`、`diffusion bridge inverse problems`。

---

## 6. 关键研究空白

### 6.1 样本端点与 BSDE 终端值不匹配

Deep BSDE 需要数值 \(Y_T=\phi(X_T)\)。生成任务通常只有 \(X_T\sim\mu\) 样本，没有 \(\phi=\log(d\mu/d\nu)\)。设计 sample-only terminal-potential learning 是核心，而非实现 BSDE solver。

### 6.2 Quadratic driver 稳定性

\(\frac12\|Z\|^2\) 导致梯度爆炸、离散误差累积与尾部敏感。研究需比较 truncation、BMO-type control、adaptive time grid、implicit discretization、control variates，而非只报告训练损失。

### 6.3 Off-policy path mismatch

BSDE residual 在某一轨迹测度下小，不保证 reverse sampler 访问区域上 score 准确。需要明确训练路径、目标路径、采样路径三者是否一致，并报告 distribution shift 诊断。

### 6.4 退化扩散与高维几何

真实 latent diffusion 常在低维 manifold 附近工作。\(\sigma^{-\top}Z\) 不可逆、score 仅部分可识别、terminal density 近似误差都会破坏简单理论。此处有实质数学空间。

### 6.5 公平比较

BSDE 方法常增加 value network、双向 simulation 或轨迹重采样。比较时必须统一：参数量、训练 FLOPs、NFE、采样器、guidance、数据预处理与随机种子。

---

## 7. 建议研究方案

### 方案 A：BSDE-consistent score regularization

**目标**：检验动力学一致性约束能否补足 DSM 局部回归误差。

模型：score network \(s_\theta(t,x)\)，value/potential network \(v_\psi(t,x)\)，定义

\[
Z_{\theta}(t,x)=\sigma(t,x)^\top s_\theta(t,x).
\]

基线目标：\(\mathcal L_{\rm DSM}\)。若 \(v_\psi\) 有合法势函数锚点，可加入离散 BSDE 残差：

\[
\mathcal L_{\rm mart}=
\mathbb E\left|
 v_\psi(t+\Delta t,X_{t+\Delta t})-v_\psi(t,X_t)
 +F(t,X_t,Z_\theta)\Delta t-Z_\theta\Delta W_t
\right|^2.
\]

总损失：

\[
\mathcal L=\mathcal L_{\rm DSM}+\lambda\mathcal L_{\rm mart}+\eta\mathcal L_{\rm boundary}.
\]

**必要条件**：写清 \(v_\psi\) 近似哪个 PDE 解，\(F\) 的符号与时间方向，boundary loss 来自何处。没有这些，残差只是无解释正则项。

实验阶梯：2D Gaussian mixture → synthetic manifold → MNIST。指标：score error（合成数据）、Wasserstein/KL、NLL 或 ODE likelihood、样本质量、训练稳定性、NFE。先不做 CIFAR-10。

### 方案 B：sample-only Schrödinger bridge 的 FBSDE 视角

**目标**：从两个样本端点学习最小熵路径，同时引入路径约束或不确定性估计。

问题：

\[
\min_{P:P_0=\mu_0,P_T=\mu_T}\mathrm{KL}(P\|R)
+\mathbb E_P\int_0^Tc(t,X_t,u_t)dt.
\]

贡献切口：

- non-Markov path cost；
- state constraint / obstacle avoidance；
- uncertain or partial endpoint observations；
- adaptive control-energy allocation；
- forward–backward potentials 的数值误差界。

该方案比“BSDE 训练无条件 DDPM”更自然，也更匹配 BSDE 专长。

### 方案 C：物理/金融路径约束生成

目标不是 image generation，而是生成满足 SDE、PDE、终端 payoff、风险限额或观测约束的轨迹。此类问题有明确定义的 reward/terminal value，BSDE 可以端到端进入训练。应用：rare-event path generation、stochastic volatility calibration、particle trajectories、molecular transition paths、inverse problems。

学术价值取决于：约束可验证、BSDE 结构不可被普通 score model 轻易替代、给出误差或可行性保证。

---

## 8. 不建议的起点

- 只将 reverse SDE 改名为 BSDE。已有 PDE/时间反演理论已覆盖。
- 直接假设 \(p_T=\mathcal N(0,I)\)，并以此终值反推数据 score。该逆问题丢失数据内容。
- 在 CIFAR-10 先做大模型。无法定位理论或数值失败来源。
- 只报 FID。BSDE 贡献应同时报 terminal constraint、control energy、martingale residual、路径违规率、误差随步长变化。
- 忽略 state-dependent diffusion 的 divergence correction 与时间符号。

---

## 9. 十二周入门与选题计划

| 周数 | 任务 | 可交付物 |
| --- | --- | --- |
| 1–2 | DDPM、DSM；实现 2D mixture | noise prediction 与 score field notebook |
| 3–4 | Score-SDE、reverse SDE、probability flow ODE | 三种 sampler 对照图与公式笔记 |
| 5 | Fokker–Planck、time reversal、对数密度 PDE | 完整符号与时间方向推导 |
| 6 | quadratic BSDE、Doob transform、Föllmer drift | \(Y,Z\) 与 score/drift 对照表 |
| 7–8 | Schrödinger bridge、IPF、DSB | 双端 bridge 复现或简化实现 |
| 9 | Deep BSDE 在已知终端 reward 上复现 | terminal mismatch 与步长实验 |
| 10 | 方案 A 在 2D 合成数据 ablation | DSM/BSDE/联合目标比较 |
| 11 | 方案 B 或 C 的精确定义 | 一页 problem statement、定理候选 |
| 12 | 文献缺口检查与研究设计评审 | 6–10 页 proposal、实验表、风险表 |

每周必须产出：一页推导、一个可执行 notebook、一个失败记录。后者用于识别数值难点与真实研究问题。

---

## 10. 结论

BSDE 与 Diffusion Model 的连接深，但连接不等于可发表方法。标准 diffusion 的核心是 sample-only score estimation；标准 BSDE 的核心输入却常是可评估 terminal payoff。研究切口应正面处理两者信息结构差异。

最稳妥路线：先掌握 DDPM、DSM、score-SDE；再以 Föllmer control 与 Schrödinger bridge 建立 BSDE 语言；最后在双端约束、路径成本、物理约束或 terminal-potential learning 中提出方法。首个可验证原型应是低维 bridge/约束生成，而不是直接替换大规模图像 DDPM。
