#set page(paper: "a4", margin: (x: 2.2cm, y: 2.4cm))
#set text(font: "Zhuque Fangsong (technical preview)", size: 10.5pt, lang: "zh")
#set par(leading: 0.75em, justify: true)
#set heading(numbering: "1.")

#align(center)[
  #text(size: 18pt, weight: "bold")[命题 2.3：生成元的短时间表示]
  #v(0.45em)
  #text(size: 11pt)[对 Briand--Coquet--Hu--Mémin--Peng 原始证明的细节补全]
]

#v(1em)

= 记号、假设与结论

令 $(W_s)_(s >= 0)$ 为 $d$ 维布朗运动。对固定的 $(t,x)$，考虑从 $x$ 出发的前向扩散过程

$ X_s^(t,x) = x + integral_t^s b(X_r^(t,x)) dif r + integral_t^s sigma(X_r^(t,x)) dif W_r, quad s >= t. $

其中 $b: R^n -> R^n$ 和 $sigma: R^n -> R^(n times d)$ 都是 Lipschitz 函数。以下将 $sigma(x)^T p$ 记作扩散项与向量 $p in R^n$ 的收缩；它属于 $R^d$。

生成元 $g(omega,s,y,z)$ 满足：

1. 对 $(y,z)$ 一致 Lipschitz，即存在 $K >= 0$，使得

$ abs(g(s,y,z)-g(s,y',z')) <= K (abs(y-y') + abs(z-z')). $

2. 过程 $g(s,0,0)$ 属于 $H^2$，并额外假定

$ E [ sup_(0 <= s <= T) abs(g(s,0,0))^2 ] < infinity. $

3. 对每个固定 $(y,z)$，$s -> g(s,y,z)$ 几乎处处连续。

固定 $(t,x,y,p) in [0,T) times R^n times R times R^n$。对充分小的 $epsilon>0$，令 $(Y^epsilon,Z^epsilon)$ 是区间 $[t,t+epsilon]$ 上、终端值为

$ xi^epsilon = y + p dot (X_(t+epsilon)^(t,x)-x) $

的 BSDE 解：

$ Y_s^epsilon = xi^epsilon + integral_s^(t+epsilon) g(r,Y_r^epsilon,Z_r^epsilon) dif r - integral_s^(t+epsilon) Z_r^epsilon dot dif W_r. quad (1) $

命题 2.3 断言

$ (Y_t^epsilon-y)/epsilon arrow.r_(epsilon → 0) g(t,y,sigma(x)^T p)+p dot b(x) quad "in" L^2. quad (2) $

右端由两部分组成：$g(t,y,sigma(x)^T p)$ 是 BSDE 生成元在局部扩散方向的取值，而 $p dot b(x)$ 是前向 SDE 漂移造成的一阶贡献。

= 第一步：剥离线性主项

定义线性测试函数沿前向轨道的过程

$ A_s = y+p dot (X_s^(t,x)-x), quad B_s=sigma(X_s^(t,x))^T p. $

因 $A_(t+epsilon)=xi^epsilon$，它恰好匹配 BSDE 的终端值。又因为测试函数 $v -> y+p dot(v-x)$ 为线性函数，Itô 公式中没有 Hessian 项，且

$ dif A_s = p dot b(X_s^(t,x)) dif s + B_s dot dif W_s. quad (3) $

令

$ tilde(Y)_s^epsilon=Y_s^epsilon-A_s, quad tilde(Z)_s^epsilon=Z_s^epsilon-B_s. quad (4) $

于是 $tilde(Y)_(t+epsilon)^epsilon=0$。将 (3) 与 (4) 代入 (1)，并从 $s$ 积分至 $t+epsilon$，得到

$ tilde(Y)_s^epsilon = integral_s^(t+epsilon) [g(r,A_r+tilde(Y)_r^epsilon,B_r+tilde(Z)_r^epsilon)+p dot b(X_r^(t,x))] dif r - integral_s^(t+epsilon) tilde(Z)_r^epsilon dot dif W_r. quad (5) $

这正是原文的式 (6)。该变换的意义是：$tilde(Y)^epsilon,tilde(Z)^epsilon$ 测量真实 BSDE 解相对于局部线性过程 $(A,B)$ 的误差，且它们有零终端值。

= 第二步：误差过程的先验估计

将 (5) 看成终端值为零的 BSDE。它的生成元记为

$ f_r(a,z)=g(r,A_r+a,B_r+z)+p dot b(X_r^(t,x)). $

由于 $g$ 对 $(y,z)$ 是 $K$-Lipschitz，$f$ 也对 $(a,z)$ 是 $K$-Lipschitz。把命题 2.2 的标准 BSDE 估计应用于 (5)，得到常数 $C$（与 $epsilon$ 无关）使

$ E[ sup_(t <= s <= t+epsilon) abs(tilde(Y)_s^epsilon)^2 + integral_t^(t+epsilon) abs(tilde(Z)_s^epsilon)^2 dif s ] <= C E[(integral_t^(t+epsilon) abs(f_r(0,0)) dif r)^2]. quad (6) $

以下估计右端。由 Lipschitz 条件、$b,sigma$ 的 Lipschitz 性（特别地它们至多线性增长）以及 $(t,x,y,p)$ 已固定，有某个常数 $C_(x,y,p)$ 满足

$ abs(f_r(0,0)) = abs(g(r,A_r,B_r)+p dot b(X_r^(t,x))) <= abs(g(r,0,0))+K(abs(A_r)+abs(B_r))+abs(p) abs(b(X_r^(t,x))) <= C_(x,y,p)(1+abs(X_r^(t,x))+abs(g(r,0,0))). quad (7) $

Cauchy--Schwarz 不等式给出

$ (integral_t^(t+epsilon) abs(f_r(0,0)) dif r)^2 <= epsilon integral_t^(t+epsilon) abs(f_r(0,0))^2 dif r. $

结合 (6)--(7)，可得

$ E[ sup_(t <= s <= t+epsilon) abs(tilde(Y)_s^epsilon)^2 + integral_t^(t+epsilon) abs(tilde(Z)_s^epsilon)^2 dif s ] <= C_(x,y,p) epsilon^2 E[1+sup_(t <= r <= t+epsilon)(abs(X_r^(t,x))^2+abs(g(r,0,0))^2)]. quad (8) $

标准 SDE 矩估计与额外可积性假设保证右侧最后的期望一致有界。因此

$ E[ sup_(t <= s <= t+epsilon) abs(tilde(Y)_s^epsilon)^2 + integral_t^(t+epsilon) abs(tilde(Z)_s^epsilon)^2 dif s ] <= C epsilon^2. quad (9) $

这是原文的式 (7)。特别地，$tilde(Y)^epsilon$ 在 $S^2$ 意义下为 $O(epsilon)$，而 $tilde(Z)^epsilon$ 在积分 $H^2$ 意义下足够小；这将消除生成元中的非线性扰动。

= 第三步：在起点取条件期望

在 (5) 中取关于 $cal(F)_t$ 的条件期望。随机积分是从 $t$ 开始的平方可积鞅增量，故条件期望为零。又因 $A_t=y$，有

$ (Y_t^epsilon-y)/epsilon = tilde(Y)_t^epsilon/epsilon = 1/epsilon E[ integral_t^(t+epsilon) [g(r,A_r+tilde(Y)_r^epsilon,B_r+tilde(Z)_r^epsilon)+p dot b(X_r^(t,x))] dif r | cal(F)_t]. quad (10) $

先把误差过程 $tilde(Y)^epsilon,tilde(Z)^epsilon$ 从生成元中移除。定义

$ R_epsilon = 1/epsilon E[ integral_t^(t+epsilon) [g(r,A_r+tilde(Y)_r^epsilon,B_r+tilde(Z)_r^epsilon)-g(r,A_r,B_r)] dif r | cal(F)_t]. $

由 Lipschitz 性，

$ abs(R_epsilon) <= K/epsilon E[ integral_t^(t+epsilon)(abs(tilde(Y)_r^epsilon)+abs(tilde(Z)_r^epsilon)) dif r | cal(F)_t]. $

对条件期望使用 Jensen 不等式，再用 $(a+b)^2<=2a^2+2b^2$ 与 Cauchy--Schwarz，得到

$ E abs(R_epsilon)^2 <= (2K^2)/epsilon E[integral_t^(t+epsilon)(abs(tilde(Y)_r^epsilon)^2+abs(tilde(Z)_r^epsilon)^2) dif r]. quad (11) $

由 (9)，

$ E integral_t^(t+epsilon) abs(tilde(Y)_r^epsilon)^2 dif r <= epsilon E sup_(t <= r <= t+epsilon)abs(tilde(Y)_r^epsilon)^2 <= C epsilon^3, quad E integral_t^(t+epsilon) abs(tilde(Z)_r^epsilon)^2 dif r <= C epsilon^2. $

代回 (11) 即得

$ E abs(R_epsilon)^2 <= C(epsilon^2+epsilon) -> 0. quad (12) $

所以，式 (10) 中可将 $g(r,A_r+tilde(Y)_r^epsilon,B_r+tilde(Z)_r^epsilon)$ 替换为 $g(r,A_r,B_r)$，而不会影响 $L^2$ 极限。

= 第四步：空间冻结误差

现在考虑主项

$ H_epsilon=1/epsilon E[ integral_t^(t+epsilon) [g(r,A_r,B_r)+p dot b(X_r^(t,x))] dif r | cal(F)_t]. $

为将 $X_r^(t,x)$ 冻结到初值 $x$，写

$ H_epsilon = g(t,y,sigma(x)^T p)+p dot b(x)+Q_epsilon+P_epsilon, quad (13) $

其中

$ Q_epsilon=1/epsilon E[ integral_t^(t+epsilon) [g(r,A_r,B_r)-g(r,y,sigma(x)^T p)+p dot(b(X_r^(t,x))-b(x))] dif r | cal(F)_t]. $

以及

$ P_epsilon=1/epsilon E[ integral_t^(t+epsilon)[g(r,y,sigma(x)^T p)-g(t,y,sigma(x)^T p)] dif r | cal(F)_t]. $

由 $A_r-y=p dot(X_r^(t,x)-x)$、$B_r-sigma(x)^T p=(sigma(X_r^(t,x))-sigma(x))^T p$，以及 $g,b,sigma$ 的 Lipschitz 性，

$ abs(Q_epsilon) <= C/epsilon E[integral_t^(t+epsilon) abs(X_r^(t,x)-x) dif r | cal(F)_t]. $

再次用 Jensen 与 Cauchy--Schwarz，

$ E abs(Q_epsilon)^2 <= C/epsilon E integral_t^(t+epsilon) abs(X_r^(t,x)-x)^2 dif r. quad (14) $

连续 SDE 解满足局部矩估计

$ E abs(X_r^(t,x)-x)^2 <= C_(T,x)(r-t), quad t <= r <= T. quad (15) $

故 (14) 的右端至多为 $C_(T,x)epsilon/2$，从而

$ Q_epsilon -> 0 quad "in" L^2. quad (16) $

= 第五步：时间冻结误差

令 $z_0=sigma(x)^T p$。条件 Jensen 不等式给出

$ E abs(P_epsilon)^2 <= E[1/epsilon integral_t^(t+epsilon) abs(g(r,y,z_0)-g(t,y,z_0))^2 dif r]. quad (17) $

由时间连续性假设，对几乎每个 $omega$，被积函数在 $r "tends to" t$ 时趋于零。另一方面，Lipschitz 条件蕴含

$ abs(g(r,y,z_0)-g(t,y,z_0))^2 <= C[sup_(0 <= u <= T) abs(g(u,0,0))^2+abs(y)^2+abs(z_0)^2]. $

其右端可积。因此可将支配收敛定理应用于 (17)，得到

$ P_epsilon -> 0 quad "in" L^2. quad (18) $

= 结论与证明结构

由 (10)、(12)、(13)、(16) 与 (18)，

$ (Y_t^epsilon-y)/epsilon = g(t,y,sigma(x)^T p)+p dot b(x)+R_epsilon+Q_epsilon+P_epsilon, $

且后三项均在 $L^2$ 中收敛到零。因此

$ (Y_t^epsilon-y)/epsilon arrow.r_(epsilon → 0) g(t,y,sigma(x)^T p)+p dot b(x) quad "in" L^2. $

命题得证。

#v(1em)
#box(fill: luma(242), inset: 10pt, radius: 4pt)[
  *证明的逻辑链。* 线性终端值使 $A_s=y+p dot(X_s-x)$ 成为自然的一阶近似；先验估计表明真实 BSDE 与该近似的误差足够小；最后把短区间平均的生成元依次对解变量、空间变量和时间变量冻结。这正是由 BSDE 解反演生成元的机制。
]
