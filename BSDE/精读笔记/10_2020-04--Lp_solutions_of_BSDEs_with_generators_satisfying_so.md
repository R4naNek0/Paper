# Lp (p > 1) Solutions of BSDEs with Generators Satisfying Some Non-uniform Conditions in t and ω — 精读笔记（/paper.core L2）

- **数据来源**：原文全文（pdftotext 提取）
- **论文元信息**：*Chinese Annals of Mathematics, Series B*，41(3), 2020, 479–494；DOI: 10.1007/s11401-020-0212-y；作者 Yajun LIU¹、Depeng LI¹、Shengjun FAN²（通讯作者，中国矿业大学数学学院）；2000 MR Subject Classification 60H10；arXiv 未在文本中确认。
- **一句话定位**：把一维 BSDE 的 $L^p$（$p>1$）解理论从"关于 $t$ 均匀/仅非均匀"的 Lipschitz 条件，推广到"关于 $(t,\omega)$ 非均匀"的随机 Lipschitz / 单调 / 线性增长条件，统一获得存在唯一性、比较定理与极小解存在性，并允许有限或无限时间区间 $0<T\le+\infty$。

## 符号速查

| 符号 | 含义 | 位置 |
| --- | --- | --- |
| $T$ | 终端时间，$0<T\le+\infty$（可无穷） | §1 (1.1) |
| $\xi$ | 终端条件，$\mathcal{F}_T$ 可测随机变量 | §1 (1.1) |
| $g(\omega,t,y,z)$ | 生成元，$(\mathcal{F}_t)$-循序可测 | §1 (1.1) |
| $(y_t,z_t)$ | 解过程，取值 $\mathbb{R}\times\mathbb{R}^d$ | §1 (1.1) |
| $L^p,\ S^p,\ M^p$ | 终端/连续/平方积分过程空间（Banach） | §2 |
| $u_t(\omega), v_t(\omega)$ | 非均匀 Lipschitz/单调系数过程（非负） | §3 (H1) |
| $f_t(\omega)$ | 线性增长系数过程 | §5 (H5) |
| $\varphi(\cdot)\in\mathcal{S}$ | 线性增长模函数，$\varphi(0)=0$ | §2, §4 (H4) |
| $M$ | 一致有界常数 | §3 (3.1) |

## 核心结果

> **定理 3.1（逐字原文）**：Assume that $p > 1$, $0 < T \le +\infty$ and the generator $g$ satisfies assumptions (H1)–(H2). Then for each $\xi \in L^p(\Omega, \mathcal{F}_T, P; \mathbb{R})$, BSDE $(\xi, T, g)$ admits a unique $L^p$ solution.
>
> 其中 **(H1)**：$g$ 关于 $(y,z)$ Lipschitz 连续、非均匀于 $(t,\omega)$，即存在非负适应过程 $\{u_t(\omega)\}, \{v_t(\omega)\}$ 满足 $\int_0^T [u_t(\omega)+v_t^2(\omega)]\,dt \le M,\ dP\text{-a.s.}$，使得 $dP\times dt$-a.e. 有 $|g(\omega,t,y_1,z_1)-g(\omega,t,y_2,z_2)| \le u_t(\omega)|y_1-y_2| + v_t(\omega)|z_1-z_2|$；**(H2)**：$E\Big[\big(\int_0^T |g(\omega,t,0,0)|\,dt\big)^p\Big] < +\infty$ [UNCERTAIN: 指数 $p$ 在提取文本中位置错乱，依上下文判定]。
>
> *通俗解释*：随机 Lipschitz 系数（且只要求 (3.1) 可积性）下，$L^p$ 解存在且唯一。

> **定理 4.1（逐字原文）**：Let $p > 1$, $0 < T \le +\infty$, $\xi,\xi' \in L^p(\Omega,\mathcal{F}_T,P;\mathbb{R})$, $g$ and $g'$ be two generators of BSDEs, and $(y_t,z_t)_{t\in[0,T]}$ and $(y'_t,z'_t)_{t\in[0,T]}$ be, respectively, an $L^p$ solution to BSDE $(\xi,T,g)$ and BSDE $(\xi',T,g')$. If $dP$-a.s., $\xi \le \xi'$, $g$ (respectively, $g'$) satisfies (H3) and (H4) and $dP\times dt$-a.e., $g(t,y'_t,z'_t) \le g'(t,y'_t,z'_t)$ (respectively, $g(t,y_t,z_t) \le g'(t,y_t,z_t)$), then for each $t \in [0,T]$, $dP$-a.s., $y_t \le y'_t$.
>
> 其中 **(H3)**：$y$ 方向单调条件 $\mathrm{sgn}(y_1-y_2)(g(t,y_1,z)-g(t,y_2,z)) \le u_t(\omega)|y_1-y_2|$（$u_t(\omega)\equiv0$ 时即 $g$ 关于 $y$ 非增）；**(H4)**：$z$ 方向一致连续 $|g(t,y,z_1)-g(t,y,z_2)| \le v_t(\omega)\,\varphi(|z_1-z_2|)$，$\varphi$ 线性增长 $0\le\varphi(x)\le ax+b$，且 $b\ne0$ 时补充 $\int_0^T v_t(\omega)dt \le M$。
>
> *通俗解释*：单调+一致连续生成元下，$L^p$ 解满足比较定理。

> **定理 5.1（逐字原文）**：Assume that $p > 1$, $0 < T \le +\infty$ and the generator $g$ satisfies (H5)–(H6). Then for each $\xi \in L^p(\Omega,\mathcal{F}_T,P;\mathbb{R})$, BSDE $(\xi,T,g)$ admits a minimal $L^p$ solution $(y_t,z_t)_{t\in[0,T]}$, which means that if $(\bar y_t,\bar z_t)$ is any $L^p$ solution to BSDE $(\xi,T,g)$, then for each $t \in [0,T]$, $dP$-a.s., $y_t \le \bar y_t$.
>
> 其中 **(H5)**：线性增长 $|g(\omega,t,y,z)| \le f_t(\omega)+u_t(\omega)|y|+v_t(\omega)|z|$，$E[(\int_0^T f_t(\omega)dt)^p]<+\infty$ 且 $\int_0^T[u_t(\omega)+v_t^2(\omega)]dt \le M$；**(H6)**：$g(\omega,t,\cdot,\cdot)$ 连续。
>
> *通俗解释*：线性增长+连续生成元下，极小 $L^p$ 解存在。

> **定理 5.2（逐字原文）**：…both generators $g$ and $g'$ satisfy (H5)–(H6). Let $(y_\cdot,z_\cdot)$ and $(y'_\cdot,z'_\cdot)$ be, respectively, the minimal (respectively, maximal) $L^p$ solution of BSDE $(\xi,T,g)$ and BSDE $(\xi',T,g')$… If $dP$-a.s. $\xi \le \xi'$ and $dP\times dt$-a.e. $g(\omega,t,y,z) \le g'(\omega,t,y,z)$ for each $(y,z)$, then for each $t \in [0,T]$, $dP$-a.s., $y_t \le y'_t$.
>
> *通俗解释*：极小（极大）解之间也有比较定理。

> **定理 5.3（逐字原文）**：Assume that $p > 1$, $0 < T \le +\infty$, and the generator $g$ satisfies the assumption (H2) and the following assumption (H7): $g$ is Lipschitz continuous in $y$ and uniformly continuous in $z$ non-uniformly with respect to both $t$ and $\omega$… $|g(\omega,t,y_1,z_1)-g(\omega,t,y_2,z_2)| \le u_t(\omega)|y_1-y_2| + v_t(\omega)\varphi(|z_1-z_2|)$. Then for each $\xi \in L^p(\Omega,\mathcal{F}_T,P;\mathbb{R})$, BSDE $(\xi,T,g)$ admits a unique $L^p$ solution.
>
> *通俗解释*：$y$-Lipschitz + $z$ 一致连续（连续模 $\varphi$）下唯一性。

> **命题 5.1（逐字原文）**：设 $g$ 满足 (H5)–(H6)，定义 $g_n(\omega,t,y,z):=\inf_{(y,z)\in\mathbb{R}^{1+d}}\{g(\omega,t,y,z)+n u_t(\omega)|y-\bar y|+n v_t(\omega)|z-\bar z|\}$，则 $g_n$ 满足 (i) 随机线性增长、(ii) 对 $n$ 单调递增、(iii) 随机 Lipschitz 条件（系数 $n u_t, n v_t$）、(iv) 收敛性 $g_n\to g$。
>
> *通俗解释*：用 inf-卷积型序列 $g_n$ 单调逼近连续 $g$。

## 证明骨架

- **武器库**：先验估计（Lemma 2.1 的 (2.2)–(2.4)，源自 [18, Prop 2.4]）· 停止时间细分区间 + 压缩映射 · Tanaka 公式 + 测度变换 · 单调逼近（inf-卷积型 $g_n$）· Itô 公式/鞅表示定理 · Hölder/Young 不等式与 $(a+b+c)^p \le 3^p(a^p+b^p+c^p)$ · 线性增长函数上界（Lemma 2.2，取自 [14, Lemma 4]：$\Psi(x)\le(n+2K)x+\Psi(\frac{2K}{n+2K})$）。
- **核心技巧**：Theorem 3.1 用停时把 $[0,T]$ 细分为小区间、逐段做压缩映射，从而克服 $u_t,v_t$ 依赖 $\omega$ 带来的困难；Theorem 5.1 则用 $g_n$ 单调逼近并**直接**证明解序列在 $S^p\times M^p$ 中为 Cauchy（改进 Izumi [18] 的方法），取极限得极小解。

## 阅读门槛

- 随机分析：Brown 运动、Itô 积分、Itô/Tanaka 公式、鞅表示定理、Girsanov 型测度变换。
- BSDE 基础：Pardoux–Peng 的 $L^2$ 存在唯一性；Briand–Delyon–Hu 等的 $L^p$ 先验估计与 $L^p$ 解理论。
- 比较定理标准技巧：Tanaka 公式 + 条件期望 + 变测度。

## 与其他文献的关联

- **继承/推广 Pardoux–Peng [23]**（1990，$L^2$、均匀 Lipschitz、有限 $T$）：Theorem 3.1 允许 $u_t,v_t$ 依赖 $\omega$ 且 $T$ 可无穷。
- **改进 Chen–Wang [8]**（2000，无限时区、$t$-非均匀 Lipschitz）：Example 3.1 明确构造反例，证明本文 (H1) **严格弱于** Chen–Wang 的 (H1′)。
- **承接 Briand 等**：沿用 Briand–Delyon–Hu–et al. [4]（2003，$L^p$ 解）与 Briand–Confortola [3]（2008，随机 Lipschitz）框架，但不像 El Karoui–Huang [10]、Bender–Kohlmann [2]、Wang–Ran–Chen [25] 那样对参数与解施加更强可积性条件，仅要求 (3.1)。
- **与范胜君（本文通讯作者）系列直接承接**：Lemma 2.2 取自 Fan–Jiang [14, Lemma 4]；Theorem 4.1 部分推广 Fan–Jiang–Tian [15, Theorem 2] 与 Ma–Fan–Song [20, Lemma 1]（二者 $u_t,v_t$ 不依赖 $\omega$ 且 $p=2$）；Theorem 5.1 改进 [15, Theorem 1] 与 Izumi [18, Theorem 3.3]（后者 $u_t,v_t$ 需有界且 $T<+\infty$）。

## 备注

- **提取质量**：pdftotext 输出公式全部线性化且上下标、积分限、指数位置错乱（如 (H2) 的幂次 $p$、Lemma 2.1 的 sup 与积分限、Lemma 2.2 的分式）。以上陈述按上下文线性化，凡存疑处已标 `[UNCERTAIN]`。
- **缺失/需核对公式位置**：§2 Lemma 2.1 的 (2.2)–(2.4) 先验估计；§4 的 (4.1)–(4.6)（Tanaka 公式与测度变换步骤）；§5 的 (5.1)–(5.14)（Cauchy 序列估计）；Example 3.1 的 (3.5)–(3.6) 反例构造。均建议回 PDF 原文核对。
- Remark 3.2 指出 Theorem 3.1 对多维 BSDE 同样成立；Remark 5.1 给出 (H5)(H6) 下极大解的存在性。
