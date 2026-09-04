# Lp solutions of backward stochastic differential equations — 精读笔记（/paper.core L2）

- **数据来源**：原文全文（pdftotext 提取，公式有乱码，已逐处标注）
- **论文元信息**：Stochastic Processes and their Applications, 108 (2003) 109–129；作者 Ph. Briand, B. Delyon, Y. Hu, E. Pardoux, L. Stoica；DOI: 10.1016/S0304-4149(03)00089-9（2003 Elsevier）
- **一句话定位**：在生成元对 y 仅单调（不必 Lipschitz、允许任意增长）的弱假设下，把 BSDE 解的存在唯一性从平方可积推广到 Lp（p>1）乃至 L1 数据，并处理随机终端时刻，填补"单调生成元 + 低可积数据"的空白。

## 符号速查

| 符号 | 含义 | 位置 |
| --- | --- | --- |
| ξ（OCR 显示为 ``） | 终端条件，FT-可测随机向量 | §2.1 |
| λ（OCR 显示为 `'`） | 生成元对 z 的 Lipschitz 常数 (H2) | §4 |
| μ（OCR 显示为 `&`） | 生成元对 y 的单调常数 (H3) | §4 |
| Sp(Rn) | 连续 càdlàg 适应过程，‖X‖=E[sup\|Xt\|p]^(1∧1/p)<∞ | §2.1 |
| Mp(Rn) | 可料过程，E[(∫\|Xt\|²dt)^{p/2}]^(1∧1/p)<∞ | §2.1 |
| x̂ = \|x\|⁻¹x·1_{x≠0} | 单位化记号 | §2.2 |
| c(p) = p[(p−1)∧1]/2 | 常数 | Cor 2.3 |
| F = ∫₀^T f_r dr | 生成元累计量 | §3 |
| φ_r(t) | sup_{\|y\|≤r}\|f(t,y,0)−f(t,0,0)\| (H5) | §4 |
| β, δ（OCR 显示为 `3`,`4`） | 随机终端时刻的指数修正 | §5 |
| γ, α（OCR 显示为 `7`,`8`） | (H7) 次线性增长系数与指数 | §6 |
| θ（OCR 显示为 `9`） | 介于 α 与 1 之间的可积指数 | §6 |
| class (D) | 停止时刻族 {Y_τ, τ≤T} 一致可积 | §6 |

## 核心结果

> **Lemma 2.2（多维 Tanaka 公式，逐字线性化）**：设 X_t = X_0 + ∫Ks ds + ∫Hs dBs 为半鞅，则对任意 p≥1，
> |Xt|^p − 1_{p=1}·Lt = |X0|^p + p∫|Xs|^{p−1}⟨X̂s,Ks⟩ds + p∫|Xs|^{p−1}⟨X̂s,Hs⟩dBs + (p/2)∫|Xs|^{p−2}1_{Xs≠0}{(2−p)(|Hs|²−⟨X̂s,HsHs*X̂s⟩)+(p−1)|Hs|²}ds，
> 其中 {Lt} 为连续增过程，仅在 {t: Xt=0} 的边界上增长。
> *通俗解释*：把一维 Tanaka 公式推广到多维与 |x|^p，是处理 p∈(1,2) 时 |x|^p 非 C² 的替代工具。

> **Proposition 3.2（Lp 先验估计，逐字线性化）**：设 (A) 成立，F∈Lp，若 (Y,Z) 是解且 Y∈Sp，则存在仅依赖 p 的常数 Cp，使对任意 a > μ + λ²/[1∧(p−1)]，
> E[sup_t e^{apt}|Yt|^p + (∫₀^T e^{2ar}|Zr|²dr)^{p/2}] ≤ Cp·E[e^{apT}|ξ|^p + (∫₀^T e^{ar} f_r dr)^p]。
> *通俗解释*：用终端条件与生成元把 Y、Z 同时控制住，是唯一性与逼近的核心。

> **Theorem 4.2（固定区间主定理）**：Under assumptions (H1)–(H5), BSDE (1) has a unique solution in Sp × Mp.
> *通俗解释*：单调 + z-Lipschitz + 连续 + 局部有界下，Lp 解存在唯一（p>1）。

> **Theorem 5.2（随机终端时刻）**：Under assumptions (H1'), (H2)–(H4), (H5'') and (H6), the BSDE with random terminal time (10) has a unique solution satisfying E[sup_{0≤t≤T} e^{pβt}|Yt|^p + ∫₀^T e^{pβt}|Yt|^{p−2}{[|Yt|²+|Zt|²]}dt] ≤ cE[e^{pβT}|ξ|^p + ∫₀^T e^{pβt}|f(t,0,0)|^p dt] for some constant c depending upon p, λ, β and μ.
> *通俗解释*：T 可为无界停时（含 T≡+∞），解仍唯一且带指数加权估计。

> **Theorem 6.2（p=1 唯一性）**：Let assumptions (H1''), (H2)–(H5) and (H7) hold. Then BSDE (1) has at most one solution (Y;Z) such that Y belongs to the class (D) and Z belongs to the space ⋃_{θ>α} M^θ. [UNCERTAIN: OCR 作 "9¿8 M 9"]
> *通俗解释*：在 class (D) 与稍高可积空间中，L1 数据下解至多一个。

> **Theorem 6.3（p=1 存在性）**：Let assumptions (H1''), (H2)–(H5) and (H7) hold. Then BSDE (1) has a solution (Y;Z) such that Y belongs to the class (D). Moreover, for each θ∈(0;1), (Y;Z) belongs to the space Sθ × Mθ.
> *通俗解释*：加 (H7) 次线性条件后，L1 数据下存在解且属于任意 Sθ×Mθ。

## 证明骨架

- **武器库**：
  1. **多维 Tanaka 公式**（Lemma 2.2）及其推论 Corollary 2.3——绕开 p∈(1,2) 时 |x|^p 非 C² 的障碍，是本篇最核心的技术原创；
  2. **先验估计**（Lemma 3.1 控制 Z，Proposition 3.2 控制 Y 与 Z）＋ Itô 公式＋ BDG/Doob 不等式；
  3. **指数变量替换** Ỹ=e^{at}Y，消去 μ 与 λ² 项（把 (A) 归约为 a=0、μ+λ²/[1∧(p−1)]≤0）；
  4. **截断/正则化近似**：qn(z)=zn/(|z|∨n)、光滑截断 ρ_r(y)、qn(ξ)、qn(f⁰)；
  5. **Picard 迭代 + 时间细分**（Theorem 6.3 结尾）；
  6. class (D) 一致可积框架 + Revuz–Yor 型鞅估计（Lemma 6.1）。
- **核心技巧**：
  - p∈(1,2) 的关键一步：用 Corollary 2.3 的 |Y|^{p−2}1_{Y≠0}|Z|² 项吸收 Young 不等式产生的 pλ|Y|^{p−1}|Z|，把 λ² 的代价换成 λ²/[1∧(p−1)]；
  - p=1 的关键一步：借 (H7) 的次线性增长（α∈(0,1)）把 L1 数据"抬升"到某 Sq(q>1)，再用 Picard 迭代收敛、以时间细分处理一般情形。

## 阅读门槛

- Itô 随机积分、Itô 公式、BDG 不等式、Doob 不等式；
- BSDE 基础（Pardoux–Peng 1990 的适应解框架、比较定理的大致地位）；
- Tanaka 公式与局部时的概念；
- Lp 鞅空间、一致可积鞅与 class (D)；
- 单调算子/粘性解思想（用于理解 Remark 5.3 与椭圆 PDE 的联系，可选）。

## 与其他文献的关联

- **Pardoux–Peng (1990)**：BSDE 非线性情形的开创性结果（Lipschitz + 平方可积），本文所有假设都在其基础上放松；
- **El Karoui–Peng–Quenez (1997)**：Lipschitz 生成元下给出 Lp（p∈(1,2)）解的存在性——本文 Theorem 4.2 正是把这一 Lp 结果推广到单调生成元（引言与 §3 明言此继承关系）；
- **Pardoux (1999)**：p=2 时单调生成元的处理（Theorem 4.1 即引用其 Theorem 2.2；§5 随机终端时刻"follow closely"其 Theorem 4.1 的路线）；
- **Briand–Carmona (2000)**：多项式增长生成元、Lp（p>2），文中用于 Y^n 的有界性论证；
- **Peng (1991)**：单调条件首次出现于随机终端时刻 BSDE；**Peng (1997)**：g-鞅/g-期望概念，构成 L1 数据的动机来源；
- **Kobylanski (1997)**、**Lepeltier–San Martin (1998)**：标量二次增长生成元（对比背景）；
- 引理来源：Revuz–Yor (1991)、Dellacherie–Meyer (1980)。

## 备注

- **提取质量**：pdftotext 提取，公式乱码普遍：λ→`'`、μ→`&`、β→`3`、δ→`4`、θ→`9`、α→`8`、γ→`7`、ξ→``、Ω→``、x̂ 的指示函数与内积记号错位；英文合字 "di#erential"=differential、"coGcient"=coefficient、"6rst/6xed"=first/fixed、"4ltration"=filtration、"cPadlPag"=càdlàg、"HTolder"=Hölder、"Itô"=Itô。
- **缺失/需核对公式位置**：§5 的 (H6) 中可料过程 `5Wt`（疑为 ζ̃_t，OCR 不可靠）与 e^{−δt} 的加权结构；§6 的 (H7) 中次线性指数与 g_t 的精确形式；Lemma 2.2 证明中局部时 L(p) 在 p>1 时恒为 0 的论证（依赖 u_ε 逼近与 Hölder 不等式）细节需对照原 PDF 复核。
- 本文 p=1 的结果不能由 p→1 取极限得到（Remark 5.3），必须另起 §6 的框架。
