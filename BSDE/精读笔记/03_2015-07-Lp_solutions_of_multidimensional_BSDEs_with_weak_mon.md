# Lp solutions of multidimensional BSDEs with weak monotonicity and general growth generators — 精读笔记（/paper.core L2）

- **数据来源**：原文全文（pdftotext 提取）
- **论文元信息**：J. Math. Anal. Appl. 432 (2015) 156–178；作者 ShengJun Fan（范胜君，中国矿业大学）；DOI: 10.1016/j.jmaa.2015.06.049（文本给出 `http://dx.doi.org/10.1016/j.jmaa.2015.06.049`）；Received 6 March 2014, Available online 29 June 2015。未给出 arXiv 号。
- **一句话定位**：在多维 BSDE 中，用"p 阶弱单调 + y 的一般增长 + z 的 Lipschitz"取代 Lipschitz/y 线性增长，建立 Lp (p>1) 解的存在唯一性、稳定性与比较定理，承接 Pardoux–Peng(1990) 与 Briand et al.(2003) 的脉络。

## 符号速查

| 符号 | 含义 | 位置 |
| --- | --- | --- |
| $T$, $k$, $d$ | 时间界；解 $y$ 维数；布朗运动维数 | §1 |
| $(\Omega,\mathcal{F},P)$，$(B_t)$ | 概率空间与 $d$ 维标准布朗运动 | §1 |
| $\lvert y \rvert$，$\lvert z \rvert$ | $y$ 的欧氏范数；$z$ 的 $(\mathrm{Tr}\,zz^*)^{1/2}$ 范数 | §1 |
| $\langle x,y\rangle$ | $\mathbb{R}^k$ 内积 | §1 |
| $L^p(\mathbb{R}^k)$ | $E[\lvert\xi\rvert^p]<+\infty$ 的 $\mathcal{F}_T$-可测向量 | §1 |
| $S^p$、$M^p$ | 连续适应过程空间；平方可积过程空间（Banach） | §1 |
| $\xi$、$g$ | 终端条件、生成元 | §1 |
| $\rho(\cdot)$ | 非降凹函数（Osgood 类，$\rho(0)=0$） | §2 |
| $\bar\lambda$ | $z$ 方向的 Lipschitz 常数 | §2 (H4) |
| $f_t,\phi_t,\psi$ | 先验估计中的过程与凹函数 | §3 |

## 核心结果

> **定理 1（逐字原文）**：Assume that $p>1$, and assumptions $(H1)_{p\wedge 2}$, (H2)–(H4) and $(H5)_p$ hold. Then, the BSDE $(\xi,T,g)$ has a unique $L^p$ solution.
>
> *通俗解释*：弱单调（阶取 $p\wedge 2$）+ 一般增长下，多维 BSDE 有唯一 $L^p$ 解。

关键假设（§2，逐字线性化；数学符号多处乱码，指数按 (H1')p 与 Prop.1 证明回推并标 [UNCERTAIN]）：

- **(H1)p**（p 阶弱单调）：存在非降凹 $\rho$，$\rho(0)=0$，$\rho(u)>0\ (u>0)$，$\int_{0+}du/\rho(u)=+\infty$，使 dP×dt – a.e.，$\forall y_1,y_2\in\mathbb{R}^k,z\in\mathbb{R}^{k\times d}$：$|y_1-y_2|^{p-1}\langle\frac{y_1-y_2}{|y_1-y_2|}1_{|y_1-y_2|\neq0},\,g(\omega,t,y_1,z)-g(\omega,t,y_2,z)\rangle\le\rho(|y_1-y_2|^p)$。原文 `ρ(|y1−y2|)` 处指数丢失，据 (H1')p 补为 $^p$ [UNCERTAIN: pdftotext 指数丢失]。
- **(H2)**：$y\mapsto g(\omega,t,y,z)$ 连续；(H3) 一般增长：$\varphi_\alpha(t):=\sup_{|y|\le\alpha}|g(\omega,t,y,0)-g(\omega,t,0,0)|\in L^1([0,T]\times\Omega)$；(H4)：$|g(\omega,t,y,z_1)-g(\omega,t,y,z_2)|\le\bar\lambda|z_1-z_2|$；(H5)p：$E[|\xi|^p+(\int_0^T|g(\omega,t,0,0)|dt)^p]<+\infty$。

> **命题 1（逐字原文）**：For each $1\le p\le q<+\infty$, we have (i) $(H1^*)\Rightarrow(H1)_p\Rightarrow(H1)_q$; (ii) $(H1b)_q\Rightarrow(H1b)_p\Rightarrow(H1^*)$; (iii) $(H1a)_p\Leftrightarrow(H1b)_p$.
>
> *通俗解释*：各弱单调条件的强弱关系与 Osgood 条件串联，指导假设选取。

（其中 (H1a)p 为"单边 Mao"：$\langle\cdots\rangle\le\rho^p(|y_1-y_2|)$ [UNCERTAIN: 上标位置乱码]； (H1b)p 为"单边 Constantin"：$\langle\cdots\rangle\le\rho(|y_1-y_2|)$ 且 $\int_{0+}u^{p-1}/\rho^p(u)du=+\infty$；(H1\*) 为"单边 Osgood"。(H1')p 等为对应双边强版本。）

> **定理 2（逐字原文，稳定性）**：Under assumptions (B1) and (B2), we have $\lim_{n\to\infty}E[\sup_{s\in[0,T]}|y_s^n-y_s|^p+(\int_0^T|z_s^n-z_s|^2ds)^{p/2}]=0$.
>
> *通俗解释*：生成元与终端在适当意义下逼近时，解在 $S^p\times M^p$ 收敛。

> **定理 3（逐字原文，比较定理）**：Let $p>1$, $\xi,\xi'\in L^p(\mathbb{R}^k)$, $g$ and $g'$ be two generators …, $(y_\cdot,z_\cdot)$ and $(y'_\cdot,z'_\cdot)$ be respectively an $L^p$ solution to the BSDE $(\xi,T,g)$ and BSDE $(\xi',T,g')$. If $\xi\le\xi'$, dP – a.s. and one of the following two statements holds true: (i) $g$ satisfies $(H1)_p$ and (H4), and $g(t,y'_t,z'_t)\le g'(t,y'_t,z'_t)$, dP×dt – a.e.; (ii) $g'$ satisfies $(H1)_p$ and (H4), and $g(t,y_t,z_t)\le g'(t,y_t,z_t)$, dP×dt – a.e., then for each $t\in[0,T]$, we have $y_t\le y'_t$, dP – a.s.
>
> *通俗解释*：一维情形下，弱单调仍保证解的有序性（比较定理）。

另有两个非标准先验估计（§3）：**命题 2** 在 (A1)（线性型 $\langle y,g\rangle\le\mu|y|^2+\lambda|y||z|+|y|f_t+\phi_t$）下给出 $z$ 的 $M^p$ 上界；**命题 3** 在 (A2)（$|y|^{p-1}\langle y/|y|,g\rangle\le\psi(|y|^p)+\lambda|y|^{p-1}|z|+|y|^{p-1}f_t$，$\psi$ 凹）下给出 $y$ 的条件期望上界。

## 证明骨架

- **武器库**：Itô 公式 · Itô–Tanaka 公式 · Burkholder–Davis–Gundy(BDG) 不等式 · Young 不等式 · Fatou 引理 · 控制收敛 · Gronwall 不等式 · Bihari 不等式 · Jensen 不等式 · 停时局部化 · 截断正则化 $q_n(x)=xn/(|x|\vee n)$ · 凹函数的线性增长（引理 1、2）。
- **核心技巧**：用"单边（one-sided）弱单调"把生成元差沿 $y$ 方向的投影压成 $\rho(\cdot)$，再借凹性 + Osgood 积分发散性 + Bihari 不等式消掉 $y$ 的余项；存在性用截断序列构造 Cauchy 列，靠稳定性定理（Thm 2）取极限。

## 阅读门槛

- BSDE 基础：Pardoux–Peng(1990) 的 Lipschitz 解理论，$S^p$/$M^p$ 空间与解定义（Def 1、2）。
- 随机分析工具：Itô/Itô–Tanaka 公式、BDG 不等式、局部化停时、一致可积鞅。
- 实分析：凹函数性质（$\rho(x)/x$ 非增、至多线性增长）、Osgood/Bihari 比较引理、模函数次可加性（附录 A）。

## 与其他文献的关联

- 继承 **Pardoux–Peng [36](1990)**：BSDE 奠基，Lipschitz 下 $L^2$ 解；本文把 Lipschitz 弱化为弱单调 + 一般增长，并升到 $L^p$。
- 改进 **Briand et al. [5](2003)**（Theorem 4.2，单调 + 更一般增长下的 $L^p$ 解）与 **Fan–Jiang [23]**（Theorem 1，新型非 Lipschitz 的 $L^p$ 解）：正文明言 Theorem 1 及其推论"improve … including Theorem 4.2 in Briand et al. [5] and Theorem 1 in Fan and Jiang [23]"。
- 直接依赖 **Xu–Fan [43]**：$p=2$ 时的 Thm 1 已证，本文存在性构造引用其 $L^2$ 解作为逼近序列。
- 工具引理引自 **Fan–Jiang [17]**(引理 1)、**Fan–Jiang [22]**(引理 2)、**Bihari [3]**、**Revuz–Yor [39]**。

## 备注

- 提取质量：pdftotext 对公式损坏严重——内积 $\langle\cdot,\cdot\rangle$ 显示为 `…`，示性函数 $1_{|y_1-y_2|\neq0}$ 显示为 `1|…| =0`，上下标错位。关键指数缺失处：(H1)p 中 $\rho(|y_1-y_2|)$ 的 $^p$、 (H1a)p 中 $\rho^p(|y_1-y_2|)$ 的上标，均据 (H1')p 与 Prop.1 证明回推 [UNCERTAIN: 指数在 OCR 中丢失]。
- 未逐字核对公式 (1)–(17) 的每个积分上下限；此处线性化仅作结构记录，不作数学权威引用。
- 论文共 46 条参考文献（含 Mao [33]、Peng [37]、Situ [40]、Lepeltier–San Martin 等），本文笔记仅依据正文可确认的引用关系。
