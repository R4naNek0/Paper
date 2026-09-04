# L1 solution to scalar BSDEs with logarithmic sub-linear growth generators — 精读笔记（/paper.core L2）

- **数据来源**：原文全文（pdftotext 提取，公式有断裂/错位）
- **论文元信息**：Systems & Control Letters, 卷 177 (2023), 文章号 105553；作者 Shengjun Fan（中国矿业大学）、Ying Hu（Univ. Rennes, IRMAR）、Shanjian Tang（复旦大学）；DOI: 10.1016/j.sysconle.2023.105553；arXiv 未在文本中确认。投稿 2022-07-09，修订 2023-05-01，录用 2023-05-06。
- **一句话定位**：回答"当终端条件 ξ 与系数 f· 仅 L1 可积时，生成元 g 的最弱增长条件是什么"，把 [1] 的次线性（|z|^α, α<1）放宽到对数次线性（|z|/(ln(e+|z|))^λ, λ>1/2），并建立 L1 解的比较定理与唯一性，属 BSDE 可解性"最弱可积条件"研究脉络。

## 符号速查

| 符号 | 含义 | 位置 |
| --- | --- | --- |
| $(\Omega,\mathcal F,P),(\mathcal F_t)$ | 完备概率空间与 d 维布朗运动生成的自然滤波 | §1 |
| $L^p(\mathcal F_t)$ / $L^p$ | $\mathbb E[\|\xi\|^p]<+\infty$ 的可积随机变量空间 | §1 |
| $\|Y\|_{S^p},\|X\|_{L^p},\|Z\|_{M^p}$ | 过程空间范数 | §1 |
| 类 (D) | $\{X_\tau:\tau\in\Sigma_T\}$ 一致可积 | §1 |
| $\xi,g$；BSDE(ξ,g) | 终端条件与生成元 | (1.1) |
| $\beta,\gamma,c,\lambda$ | 增长常数，$\lambda\in(1/2,1]$ | (H2) |
| $f_\cdot$ | 非负适应过程（增长中的随机系数） | (1.2) |
| $h,\rho,\kappa$ | (H3)(H4)(H5) 中的模函数 | §2 |
| $\phi(s,x)$ | 检验函数（test function） | (3.18)–(3.19) |

## 核心结果

### 假设（原文摘录，线性化）

- **(H1)** dP×dt−a.e.，$g(\omega,t,\cdot,\cdot)$ 连续。
- **(H2)** y 单边线性、z 对数次线性增长：存在 $\lambda\in(1/2,1]$，dP×dt−a.e.，对每个 (y,z)，$\mathrm{sgn}(y)\,g(\omega,t,y,z)\le f_t(\omega)+\beta|y|+\gamma|z|/(\ln(e+|z|))^\lambda$。
- **(H3)** 一般增长：$|g(\omega,t,y,z)|\le f_t(\omega)+h(|y|)+c|z|^2$，h 连续非降、$h(0)=0$。
- **(H4)** y 上扩展单调：$\mathrm{sgn}(y_1-y_2)(g(\omega,t,y_1,z)-g(\omega,t,y_1,z))\le\rho(|y_1-y_2|)$，ρ 凹、ρ(0)=0、$\int_{0+}\mathrm{d}u/\rho(u)=+\infty$。〔原文第二项写 $g(\omega,t,y_1,z)$，疑似笔误，应为 $g(\omega,t,y_2,z)$〕
- **(H5)** z 上对数一致连续：$|g(\omega,t,y,z_1)-g(\omega,t,y,z_2)|\le\kappa(|z_1-z_2|/(\ln(e+|z_1-z_2|))^\lambda)$，κ 非降连续、线性增长、κ(0)=0。

> **定理 2.1（主定理，逐字原文）**：Let the terminal condition ξ ∈ L1 and the generator g satisfy (H1)–(H3) with f· ∈ L1. Then BSDE(ξ,g) admits a solution (Yt,Zt)_{t∈[0,T]} such that Y· belongs to class (D) and (Y·,Z·) ∈ S^p × M^p for each p ∈ (0,1). And, there exists a constant C > 0 depending only on (β,γ,λ,T) such that
> [原文显示 "$|Y_t|\le |Y_t|+\int_0^t f_s ds \le C\,\mathbb E[|\xi|+\int_0^T f_t dt|\mathcal F_t]+C$" (2.1)；其中"$\le|Y_t|+$"疑为 pdftotext 串行错位，应为 $|Y_t|+\int_0^t f_s ds \le C\,\mathbb E[|\xi|+\int_0^T f_t dt|\mathcal F_t]+C$，标 [UNCERTAIN: (2.1) 排版断裂]]
> Moreover, if g also satisfies assumptions (H4) and (H5), then the solution (Y·,Z·) such that Y· belongs to class (D) is unique.
>
> *通俗解释*：ξ、f 仅 L1 时，对数次线性生成元保证 L1 解存在；再加 y 单调、z 对数一致连续即得唯一性。

> **命题 2.5（比较定理，逐字原文）**：Let ξ and ξ′ be two terminal conditions, g and g′ be two generators, and (Yt,Zt)\_{t∈[0,T]} and (Yt′,Zt′)\_{t∈[0,T]} be respectively an adapted solution to BSDE(ξ,g) and BSDE(ξ′,g′). Assume that g (resp. g′) satisfies (H4) and (H5), and (Y·−Y·′)+ belongs to class (D). If ξ ≤ ξ′ and 1_{Yt>Yt′}(g(t,Yt′,Zt′)−g′(t,Yt′,Zt′)) ≤ 0 (resp. 1_{Yt>Yt′}(g(t,Yt,Zt)−g′(t,Yt,Zt)) ≤ 0), then for each t ∈ [0,T], we have Yt ≤ Yt′.
>
> *通俗解释*：终端序＋单边生成元序 ⇒ 解按序；直接推出唯一性。

> **定义 2.6 / 命题 2.7 / 命题 2.8（g-期望）**：若 g 满足 (H1)–(H5)、f·∈L1 且 g(ω,t,y,0)≡0，则对每个 ξ∈L1(FT) 定义 $E_g[\xi|\mathcal F_t]:=Y_t^\xi$。命题 2.7：(i) 保常数 $E_g[c]=c$；(ii) 单调性。命题 2.8：(i) 若 ξ∈L1(Ft) 则 $E_g[\xi|\mathcal F_t]=\xi$；(ii) 单调；(iii) 叠代性质 $E_g[E_g[\xi|\mathcal F_t]|\mathcal F_r]=E_g[\xi|\mathcal F_{t\wedge r}]$；(iv) $E_g[\mathbf 1_A\xi|\mathcal F_t]=\mathbf 1_A E_g[\xi|\mathcal F_t]$ 且 $E_g[\mathbf 1_A\xi]=E_g[\mathbf 1_A E_g[\xi|\mathcal F_t]]$。
>
> *通俗解释*：把 Peng 的 g-期望定义域从 L2 推广到 L1，保持经典期望除线性外的核心性质。

**支撑性内容**：Remark 2.2 指出 (i) 一维情形 (H2) 弱于 [1] 的次线性假设 (H6)，故定理 2.1 改进 [1]；(ii) λ 可取 (1/2,+∞)，λ∈(0,1/2] 是否成立仍为公开问题；(iii) e 可换成任意 >1 常数，且 (H3)–(H5) 蕴含 (H2)。Example 2.3、2.4 给出定理适用而现有结果不覆盖的具体生成元。

## 证明骨架

- **武器库**：检验函数法（test function）＋局部化技术（源于 [9]）· Itô–Tanaka 公式 · 先验估计 · 截断逼近 · 单调极限 · 比较定理 · 关键技术不等式（命题 3.2）
- **核心技巧**：构造显式检验函数 $\phi(s,x)$（(3.18)–(3.19)，含 $\ln(k+x)$ 与递增因子 $\mu_s$），使其满足 $-\beta\phi_x x-\phi_x\frac{\gamma|z|}{(\ln(e+|z|))^\lambda}+\tfrac12\phi_{xx}|z|^2+\phi_s\ge0$；对 $|Y|+\int_0^\cdot f_s ds$ 用 Itô–Tanaka 公式后，(H2) 的对数次线性增长被"吸收"，得到闭式先验界 (3.21)。

**证明脉络**（存在性）：截断 $\xi^{n,p}=\xi^+\wedge n-\xi^-\wedge p$、$g^{n,p}=g^+\wedge n-g^-\wedge p$ → [7] 给有界解 → 命题 3.4 给一致先验界 → Theorem 2.3 in [2] 给单调性 → 局部化 [9] 取极限（$Y_\cdot=\inf_p\sup_n Y_\cdot^{n,p}$）得 L1 解；再用 (2.1)＋[1] Lemma 6.1 得 $S^p$ 界、命题 3.5 得 $Z\in M^p$。比较定理（命题 2.5）用同一先验技术证明；唯一性为其直接推论。

## 阅读门槛

- BSDE 基本解概念（(1.1)、适应解、生成元）
- 随机过程空间 $S^p,L^p,M^p$、类 (D)、局部时、Itô–Tanaka 公式
- 生成元增长分类（次线性/线性/次二次/二次/超二次）
- 凹/凸模函数、Osgood 型条件 $\int_{0+}\mathrm du/\rho(u)=+\infty$
- （可选）Peng 的 g-期望与非线期望背景

## 与其他文献的关联

- **继承**：问题范式源自 [9]（Briand–Hu 2006，二次增长＋无界终端）；[10][11] 处理 α=1，[13] 处理 α∈(1,2)，[14] 处理 $|z|\ln|z|$ 超线性，本文处理对数次线性。
- **改进**：Remark 2.2(i) 证明一维下 (H2) 弱于 [1]（Briand–Delyon–Hu–Pardoux–Stoica 2003）的次线性假设，故改进 [1] 的存在性结果。
- **工具来源**：局部化技术取自 [9]；单调极限用 [2]（Fan 2016）Theorem 2.3；比较用 [2] Theorem 2.1；命题 3.5 是 [14] 命题 3.8 的直接推论。
- **应用**：把 Peng [20] 的 g-期望从 L2 推广到 L1，性质沿 [21][22] 路线验证。

## 备注

- 提取质量：pdftotext 全文公式普遍断裂/错位，(2.1)、(3.3)、(3.12)–(3.19) 等关键公式无法逐字恢复，均已标 [UNCERTAIN]，未编造。
- 缺失/乱码位置：(2.1) 与 (3.21) 先验不等式左端排版串行；命题 3.2 关键不等式 (3.3) 分式上下标错位，仅能确定含 $x^2/(\ln(e+x))^{2\lambda}$ 与交叉项 $\frac{2xy}{(\ln(e+y))^\lambda}$ 的组合；检验函数 $\phi$ 的显式 (3.18)–(3.19) 部分指数/系数错位。
- (H4) 原文写 $g(\omega,t,y_1,z)-g(\omega,t,y_1,z)$，疑为 $g(\omega,t,y_2,z)$ 笔误。
