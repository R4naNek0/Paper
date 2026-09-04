# Monotonic limit theorem of BSDE and nonlinear decomposition theorem of Doob–Meyer's type — 精读笔记（/paper.core L2）

- **数据来源**：原文全文（pdftotext 提取）
- **论文元信息**：Probab. Theory Relat. Fields **113**, 473–499 (1999)；作者 Shige Peng（山东大学数学系）；Received 3 June 1997 / Revised 18 January 1998。DOI/arXiv 未在文本中确认。
- **一句话定位**：证明 BSDE 的 RCLL 上解（g-上解）在单调极限下封闭，并借此给出 Doob–Meyer 型非线性分解定理与带约束 BSDE 的最小上解；是 Peng 一系 g-期望 / g-鞅理论的奠基性工作，衔接 Pardoux–Peng(1990) 的 BSDE 存在唯一性之后。

## 符号速查

| 符号 | 含义 | 位置 |
| --- | --- | --- |
| W | d 维布朗运动；F_t = σ{W_s; s≤t} | §1 |
| (y_t, z_t) | BSDE 解对，y∈R，z∈R^d | (1.1) |
| g(y,z,s) | 生成元，Lipschitz（常数 μ） | (H1.2) |
| A_t | RCLL 增过程，A_0=0，E(A_T)²<∞ | Def 1.5 |
| g-上解 / g-解 | 满足 (1.7) 的解；A≡0 时称 g-解 | Def 1.5 |
| L^p_F(0,T;R^m) | 适应过程且 E∫ \lvert φ_s \rvert ^p ds<∞ | §1 |
| RCLL | 右连左极 | §1 |
| ΔA_t | A 的跳（文本中「1At」为 Δ 的乱码） | Lemma 2.3 |
| E_g[·] / E_g[·\|F_t] | g-期望 / 条件 g-期望 | Def 3.5 / 3.9 |
| g-鞅 / g-上(下)鞅 | 强、弱两种定义 | Def 3.1 / 3.2 |

## 核心结果

> **定理 2.1（收敛定理）**：Assume (H2.1) and (H2.2) hold. Then the limit (y_t) of (y_t^i) has a form (2.3), where (g_t^0) ∈ L²_F(0,T;R), (z_t) is the weak limit of (z_t^i), (A_t) is an RCLL square-integrable increasing process. Furthermore, for any p ∈ [0,2), (z_t^i) strongly converges to (z_t) in L^p_F(0,T,R^d), i.e., lim_{i→∞} E ∫_0^T |z_s^i − z_s|^p ds = 0, ∀p ∈ [0,2). [UNCERTAIN: 原文写 "strongly converges to (zti)"，按上下文应为 (z_t)，系原文/OCR 笔误]
>
> *通俗解释*：上解序列 y^i 单调收敛时，鞅部分 z^i 在 L^p(p<2) 强收敛，够取极限。

> **定理 2.4（连续 g-上解的极限定理）**：We assume that g satisfies (H1.1) and (H1.2). and (A^i) satisfies (H2.1). Let (y^i, z^i) be the solution of BSDE (2.11), with E sup_{0≤t≤T} |y_t^i|² < ∞. If (y_t^i) increasingly converges to (y_t) with E sup_{0≤t≤T} |y_t|² < ∞. Then (y_t) is a g-supersolution. i.e., there exist a (z_t) ∈ L²_F(0,T;R^d) and an RCLL square-integrable increasing process (A_t) such that the pair (y_t, z_t) is the solution of the BSDE
> y_t = y_T + ∫_t^T g(y_s,z_s,s) ds + (A_T − A_t) − ∫_t^T z_s dW_s, t ∈ [0,T],
> where (z_t) is the weak (resp. strong) limit of {(z_t^i)} in L²_F (resp. in L^p_F, p<2) and, for each t, A_t is the weak limit of {A_t^i} in L²(Ω,F_t,P).
>
> *通俗解释*：连续 g-上解单调上升的极限仍是 g-上解（核心极限定理）。

> **定理 3.3（非线性 Doob–Meyer 分解）**：We assume (H1.1) and (H1.2). Let (Y_t) be a right-continuous g-supermartingale on [0,T] in strong sense with E sup_{0≤t≤T} |Y_t|² < ∞. Then (Y_t) is a g-supersolution on [0,T]: there exists a unique RCLL increasing process (A_t) with A_0=0 and E[(A_T)²] < ∞ such that (Y_t) coincides with the unique solution (y_t) of the BSDE
> y_t = Y_T + ∫_t^T g(y_s,z_s,s) ds + (A_T − A_t) − ∫_t^T z_s dW_s, t ∈ [0,T]. (3.1)
>
> *通俗解释*：右连续强 g-上鞅必是 g-上解，Doob–Meyer 分解非线性化成立。

> **定理 3.6（RCLL g-上解极限定理）**：Let {Y^i} be a sequence of RCLL g-supersolutions (or g-supermartingale) on [0,T] that monotonically converges up to (Y) with E sup_{t∈[0,T]} |Y_t|² < ∞. Then (Y) itself is also an RCLL g-supersolution (or g-supermartingale).
>
> *通俗解释*：任意 RCLL g-上解（不必连续）单调极限仍为 g-上解。

> **定理 4.2（带约束的最小 g-上解）**：We assume (H1.1), (H1.2) as well as (H4.1). Then the sequence of g-supersolutions {y^i} converges monotonically up to (y) with E sup_{0≤t≤T} |y_t|² < ∞. {z^i} and {A^i} converges to (z) and (A) respectively in the sense of Theorem 2.4. Furthermore, (y,z,A) is the smallest g-supersolution of BSDE (4.2) subject to constraints (4.3).
>
> *通俗解释*：用惩罚 φ(·) 构造的上解序列极限恰是满足约束的最小上解。

（另有比较定理 1.3、存在唯一性 Prop.1.1/1.2、分解唯一性 Prop.1.6、g-期望性质 Lemma 3.7/3.10、Prop.3.8/3.11、Cor.3.12 等，属支撑性结果。）

## 证明骨架

- **武器库**：
  1. **L² 弱收敛**：g^i、z^i 弱紧取子列弱极限；A^i 由线性关系 A^i_τ = −y^i_τ + y^i_0 + ∫g^i ds + ∫z^i dW 得弱极限 A（定理 2.1 前半）。
  2. **Itô 公式**：对 (y^i_t − y_t)² 在区间 (σ,τ] 上应用，估计 ∫|z^i−z|²，再取 L^p(p<2) 强收敛。
  3. **跳的集中引理（Lemma 2.3，附 Lemma A.1/A.2）**：增过程 A 的跳可集中在有限个互不相交区间 (σ_k,τ_k] 内、总长度任意小，其余区间上 ΔA 的平方和 ≤ δ。
  4. **比较定理 1.3**：保证惩罚解 y^i 单调、有上界。
  5. **惩罚法（penalization，源自 [ELal]）**：在生成元中加 i∫(Y_s − y_s^i)ds（或 i∫φ(y,z,s)ds）把上解"推"向目标。
  6. **先验估计（Lemma 2.5）**：|y^i| 受控 ⟹ z^i、(A^i_T) 在 L² 一致有界。
  7. **依测度收敛 ⇒ L^p 强收敛**：L² 有界 + 依测度收敛导出 p<2 强收敛。

- **核心技巧**：在避开跳的区间 (σ_k,τ_k] 上用 Itô 公式使 ∫|z^i−z|² 受跳的平方和控制，从而把"超鞅鞅部分不强收敛"这一经典障碍转化为 L^p(p<2) 强收敛——这恰够在非线性 g 中取极限（定理 2.1 的观察是全文枢纽）。

## 阅读门槛

- 前置背景清单：Brown 运动与连续/右连随机过程、Itô 积分与 Itô 公式（含跳）、半鞅与增过程、经典 Doob–Meyer 分解与上鞅、条件期望、弱收敛/依测度收敛、停止时间；BSDE 基础（Pardoux–Peng 1990 的存在唯一性与比较定理）；金融中未定权益定价与不完全市场对冲的基本直觉。

## 与其他文献的关联

- **仅依据文中引用**：定理 2.1/2.4 是为解决 g 非线性时"上解极限仍是上解"这一在 g=0（经典上鞅）与 g 线性（Girsanov 变换，见 [CK]、[EQ]、[FS]）情形已知的问题；Prop.1.1 的存在唯一性取自 Pardoux–Peng [PP1]；比较定理引 [P1]、[EPQ]、[P2]；惩罚法思想来自 El Karoui et al. [ELal]（反射 BSDE）；非线性 Doob–Meyer 旨在突破 [DM] 经典线性期望方法；g-期望动机源自 Duffie–Epstein [DE] 的"确定性等价"，弱/强 g-鞅等价引 Chen–Peng [CP]。应用背景引 Black–Scholes [BS]、Merton [M]、Cvitanic–Karatzas [CK]、El Karoui–Quenez [EQ]。
- **注意**：文中未见 Briand–Hu、范胜君（Fan Shengjun）等工作的引用，故其继承/改进关系无文本依据，不写。

## 备注

- 提取质量：pdftotext 总体可读，但公式有乱码/丢失：式 (1) 中 "?" 应为 ∫ 前的常数/符号（按 (1.1) 应为 g(y,z,s) 项）；Ω 乱码为「」；跳 ΔA_t 全篇乱码为「1A_t」（如 Lemma 2.3、定理 2.1 证明中 (ΔA_t)² 记为 (1At)²）；ε、δ 多处乱码为「」；个别上下标丢失（如 E sup 的下标 0≤t≤T、L^p_F 的下标）。定理 2.1 陈述中"strongly converges to (z_t^i)"疑为原文笔误，应作 (z_t)。以上均已按上下文线性化并在 [UNCERTAIN] 处标注，未擅自补造具体公式。
