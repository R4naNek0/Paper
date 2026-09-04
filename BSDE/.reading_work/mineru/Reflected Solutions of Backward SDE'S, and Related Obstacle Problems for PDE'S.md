![](images/8f370131ce6a33138dd4c414d285d68a04e19b399824fb78b3d057bd88cddd14.jpg)

Reflected Solutions of Backward SDE'S, and Related Obstacle Problems for PDE'S Author(s): N. El Karoui, C. Kapoudjian, E. Pardoux, S. Peng, M. C. Quenez  
Source: The Annals of Probability, Vol. 25, No. 2, (Apr., 1997), pp. 702-737  
Published by: Institute of Mathematical Statistics  
Stable URL: http://www.jstor.org/stable/2959608  
Accessed: 24/07/2008 14:04

Your use of the JSTOR archive indicates your acceptance of JSTOR's Terms and Conditions of Use, available at http://www.jstor.org/page/info/about/policies/terms.jsp. JSTOR's Terms and Conditions of Use provides, in part, that unless you have obtained prior permission, you may not download an entire issue of a journal or multiple copies of articles, and you may use content in the JSTOR archive only for your personal, non-commercial use.

Please contact the publisher regarding any further use of this work. Publisher contact information may be obtained at http://www.jstor.org/action/showPublisher?publisherCode=ims.

Each copy of any part of a JSTOR transmission must contain the same copyright notice that appears on the screen or printed page of such transmission.

JSTOR is a not-for-profit organization founded in 1995 to build trusted digital archives for scholarship. We work with the scholarly community to preserve their work and the materials they rely upon, and to build a common research platform that promotes the discovery and use of these resources. For more information about JSTOR, please contact support@jstor.org.

# REFLECTED SOLUTIONS OF BACKWARD SDE'S, AND RELATED OBSTACLE PROBLEMS FOR PDE'S

BY N. EL KAROUI, C. KAPOUDJIAN, E. PARDOUX, S. PENG AND M. C. QUENEZ

Université Pierre et Marie Curie, Ecole Normale Supérieure, Lyon, Université de Provence, Shandong University and Université de Marne la Vallée

We study reflected solutions of one-dimensional backward stochastic differential equations. The “reflection” keeps the solution above a given stochastic process. We prove uniqueness and existence both by a fixed point argument and by approximation via penalization. We show that when the coefficient has a special form, then the solution of our problem is the value function of a mixed optimal stopping–optimal stochastic control problem. We finally show that, when put in a Markovian framework, the solution of our reflected BSDE provides a probabilistic formula for the unique viscosity solution of an obstacle problem for a parabolic partial differential equation.

1. Introduction. Backward stochastic differential equations, BSDE's in short, were first introduced by Pardoux and Peng [17]. It has been since widely recognized that they provide a useful framework for formulating many problems in mathematical finance; see in particular [9] and [13]. They also appear to be useful for problems in stochastic control and differential games (see [13] and [14]), for constructing $\Gamma$ -martingales on manifolds with prescribed limits (see [5]) and providing probabilistic formulas for solutions of systems of quasi-linear partial differential equations (see [18]).

In this paper, we study the case where the solution is forced to stay above a given stochastic process, called the obstacle. An increasing process is introduced which pushes the solution upwards, so that it may remain above the obstacle. The problem is formulated in detail in Section 2. We show that the solution can be associated with a classical deterministic Skorohod problem. From this, it is easy to derive that the increasing process of the reflected BSDE can be expressed as an infimum. Furthermore, we state that the solution of the BSDE corresponds to the value of an optimal stopping time problem.

In Section 3, we state some estimates of the solutions from which we derive some integrability properties of the solution. We also give some a priori estimates on the spread of the solutions of two RBSDE's. In Section 4, we prove a comparison theorem, similar to that in [13] and [19], for nonreflected BSDE's. Then, we give some properties of the increasing process associated with the RBSDE.

In Sections 5 and 6, existence is established via two different approximation schemes. The first one studied in Section 5 is a Picard-type iterative procedure. The definition of the sequence requires at each step the solution of an optimal stopping time problem, which is solved with the help of the notion of the Snell envelope. The second approximation is constructed by penalization of the constraint in Section 6. In Section 7, we restrict ourselves to concave coefficients, in which case the solution of the RBSDE is shown to be the value function of a mixed optimal stopping–optimal stochastic control problem.

Finally, in Section 8, we show that, provided the problem is formulated within a Markovian framework, the solution of the reflected BSDE provides a probabilistic representation for the unique viscosity solution of an obstacle problem for a nonlinear parabolic partial differential equation.

We note that obstacle problems for linear partial derivative equations appear as Hamilton–Jacobi–Bellman equations for optimal stopping problems; see, for example, [3]. This interpretation is generalized here to nonlinear PDE's.

It has been noticed in $[18]$ that solutions of BSDE's are naturally connected with viscosity solutions of possibly degenerate parabolic PDE's. The notion of viscosity solution, invented by M. Crandall and P. L. Lions, is a powerful tool for studying PDE's without smoothness requirement on the solution. We refer the reader to the survey paper of Crandall, Ishii and Lions $[4]$ , from which we have borrowed several notions and results. We have also used some techniques from Barles $[1]$ and Barles and Burdeau $[2]$ for proving the uniqueness result in Section 8.

Let us mention that the main result of this paper has already been applied to a financial problem in [12].

2. Reflected BSDE, Skorohod problem and stopping time problem. Let $\{B_{t}, 0 \leq t \leq T\}$ be a d-dimensional standard Brownian motion defined on a probability space $(\Omega, \mathcal{F}, P)$ . Let $\{F_{t}, 0 \leq t \leq T\}$ be the natural filtration of $\{B_{t}\}$ , where $F_{0}$ contains all P-null sets of F and let P be the $\sigma$ -algebra of predictable subsets of $\Omega \times [0, T]$ .

Let us introduce some notation.

$\mathbb{L}^2 = \{\xi \text{ is an } \mathcal{F}_T\text{-measurable random variable s.t. } E(|\xi|^2) < +\infty\}$ ,

$\mathbb{H}^2 = \left\{\{\varphi_t, 0 \leq t \leq T\}\text{ is a predictable process s.t. } E \int_0^T |\varphi_t|^2 dt < +\infty \right\},$

$\mathcal{S}^2 = \bigg\{\{\varphi_t, 0 \leq t \leq T\}$ is a predictable process s.t. $E\Big(\sup_{0 \leq t \leq T} |\varphi_t|^2\Big) < +\infty\bigg\}$ .

We are given three objects: the first is a terminal value $\xi$ s.t.

(i) $\xi \in \mathbb{L}^2$ .

The second is a “coefficient” f, which is a map

$$
f \colon \Omega \times [ 0, T ] \times \mathbb {R} \times \mathbb {R} ^ {d} \to \mathbb {R},
$$

such that

(ii) $\forall (y,z)\in \mathbb{R}\times \mathbb{R}^d,f(\cdot ,y,z)\in \mathbb{H}^2,$

(iii) for some $K > 0$ and all $y, y' \in \mathbb{R}, z, z' \in \mathbb{R}^d$ , a.s.

$$
\left| f (t, y, z) - f \left(t, y ^ {\prime}, z ^ {\prime}\right) \right| \leq K \left(\left| y - y ^ {\prime} \right| + \left| z - z ^ {\prime} \right|\right)
$$

and the third is an “obstacle” $\{S_{t}, 0 \leq t \leq T\}$ , which is a continuous progressively measurable real-valued process satisfying

$$
\text {(iv)} E \left(\sup _ {0 \leq t \leq T} (S _ {t} ^ {+}) ^ {2}\right) <   \infty .
$$

We shall always assume that $S_T \leq \xi$ a.s.

In the last section, in order to get a probabilistic representation for an obstacle problem for PDE's, we shall assume that $\xi, f$ and $S$ are given functions of a diffusion process $\{X_t, 0 \leq t \leq T\}$ .

Let us now introduce our reflected BSDE. The solution of our RBSDE is a triple $\{(Y_{t}, Z_{t}, K_{t}), 0 \leq t \leq T\}$ of $F_{t}$ progressively measurable processes taking values in R, $R^{d}$ and $R_{+}$ , respectively, and satisfying:

(v) $Z \in \mathbb{H}^2$ , in particular $E \int_0^T |Z_t|^2 dt < \infty$ ;

$(\mathbf{v}^{\prime})Y\in \mathcal{S}^{2}\quad \mathrm{and}\quad K_{T}\in \mathbb{L}^{2};$

$$
\text {(vi)} Y _ {t} = \xi + \int_ {t} ^ {T} f (s, Y _ {s}, Z _ {s}) d s + K _ {T} - K _ {t} - \int_ {t} ^ {T} (Z _ {s}, d B _ {s}), \quad 0 \leq t \leq T;
$$

$$
\text {(vii)} Y _ {t} \geq S _ {t}, \quad 0 \leq t \leq T;
$$

(viii) $\{K_{t}\}$ is continuous and increasing, $K_{0} = 0$ and $\int_0^T (Y_t - S_t)dK_t = 0$ .

Actually, a general solution of our RBSDE should satisfy assumptions (vi) to (viii). But we will, above all, consider solutions which satisfy integrability assumptions, that is, (v) and (v').

We will see later in Section 3 that $(\mathbf{v}^{\prime})$ follows from (v) and furthermore (see Remark 3.2) that, without loss of generality, condition (iv) can be replaced by $E(\sup_{0\leq t\leq T}S_t^2) < \infty$ .

Note that from (vi) and (viii) it follows that $\{Y_{t}\}$ is continuous. Intuitively, $d K_{t}/dt$ represents the amount of “push upwards” that we add to $-(dY_{t}/dt)$ , so that the constraint (vii) is satisfied. Condition (viii) says that the push is minimal, in the sense that we push only when the constraint is saturated, that is, when $Y_{t}=S_{t}$ . Notice that in a deterministic framework, this corresponds to the Skorohod problem. Consequently, we will be able to apply some well known properties of the Skorohod problem. Recall the Skorohod lemma (see, e.g., [11] and [20], page 229).

LEMMA 2.1. Let $x$ be a real-valued continuous function on $[0, \infty[$ such that $x_0 \geq 0$ . There exists a unique pair $(y, k)$ of functions on $[0, \infty[$ such that (a) $y = x + k$ , (b) $y$ is positive and (c) $\{k_t\}$ is continuous and increasing, $k_0 = 0$ and $\int_0^\infty y_t dk_t = 0$ . The pair $(y, k)$ is said to be the solution of the Skorohod problem. The function $k$ is moreover given by

$$
k _ {t} = \sup _ {s \leq t} x _ {s} ^ {-}
$$

Now, our problem involves a Skorohod problem and consequently, the increasing process can be written as a supremum. More precisely, we give the following proposition.

PROPOSITION 2.2. Let $\{(Y_t, Z_t, K_t), 0 \leq t \leq T\}$ be a solution of the above RBSDE satisfying conditions (vi) to (viii). Then for each $t \in [0, T]$ ,

$$
K _ {T} - K _ {t} = \sup _ {t \leq u \leq T} \left(\xi + \int_ {u} ^ {T} f (s, Y _ {s}, Z _ {s}) d s - \int_ {u} ^ {T} (Z _ {s}, d B _ {s}) - S _ {u}\right) ^ {-}.\tag{1}
$$

PROOF. Notice that $(Y_{T-t}(\omega)-S_{T-t}(\omega), K_{T-t}(\omega)-K_{T}(\omega), 0 \leq t \leq T)$ is the solution of a Skorohod problem. Applying the Skorohod lemma with

$$
x _ {t} = \left(\xi + \int_ {T - t} ^ {T} f (s, Y _ {s}, Z _ {s}) d s - \int_ {T - t} ^ {T} (Z _ {s}, d B _ {s}) - S _ {T - t}\right) (\omega),
$$

$k_{t} = (K_{T} - K_{T - t})(\omega)$ and $y_{t} = (Y_{T - t} - S_{T - t})(\omega)$ , we derive the desired result. $\square$

It is not at all clear from (1) that $\{K_{t}\}$ will be $F_{t}$ -adapted. The adaptedness of $(Y, K)$ will come from the adjustment of the process Z. In other words, Z is the process which has the effect of making $(Y, K)$ adapted.

In the following proposition, we show that the square-integrable solution $Y_{t}$ of the RBSDE corresponds to the value of an optimal stopping time problem.

PROPOSITION 2.3. Let $\{(Y_t, Z_t, K_t), 0 \leq t \leq T\}$ be a solution of the above RBSDE satisfying conditions (v) to (viii). Then for each $t \in [0, T]$ ,

$$
Y _ {t} = \operatorname{ess} \sup _ {v \in \mathcal {T} _ {t}} E \biggl [ \int_ {t} ^ {v} f (s, Y _ {s}, Z _ {s}) d s + S _ {v} \mathbf {1} _ {\{v <   T \}} + \xi \mathbf {1} _ {\{v = T \}} | \mathcal {F} _ {t} \biggr ]\tag{2}
$$

where $\mathcal{T}$ is the set of all stopping times dominated by $T$ , and

$$
\mathcal {T} _ {t} = \{v \in \mathcal {T}; t \leq v \leq T \}.
$$

PROOF. Let $v \in T_{t}$ . From (v) and (v'), we may take the conditional expectation in (vi) written between times t and v, hence

$$
\begin{array}{r l} & Y _ {t} = E \bigg [ \int_ {t} ^ {v} f (s, Y _ {s}, Z _ {s}) d s + Y _ {v} + K _ {v} - K _ {t} | \mathcal {F} _ {t} \bigg ] \\ & \qquad \geq E \bigg [ \int_ {t} ^ {v} f (s, Y _ {s}, Z _ {s}) d s + S _ {v} \mathbf {1} _ {\{v <   T \}} + \xi \mathbf {1} _ {\{v = T \}} | \mathcal {F} _ {t} \bigg ]. \end{array}
$$

We now choose an optimal element of $T_{t}$ in order to get the reversed inequality. Let

$$
D _ {t} = \inf \{t \leq u \leq T; Y _ {u} = S _ {u} \},
$$

with the convention that $D_{t} = T$ if $Y_{u} > S_{u}, t \leq u \leq T$ . Now the condition $\int_0^T (Y_t - S_t)dK_t = 0$ and the continuity of $K$ imply that

$$
K _ {D _ {t}} - K _ {t} = 0.
$$

It follows that

$$
Y _ {t} = E \left[ \int_ {t} ^ {D _ {t}} f (s, Y _ {s}, Z _ {s}) d s + S _ {D _ {t}} \mathbf {1} _ {\{D _ {t} <   T \}} + \xi \mathbf {1} _ {\{D _ {t} = T \}} | \mathcal {F} _ {t} \right]
$$

Hence, the result follows.

REMARK 2.4. Note that in the particular case where $f = 0$ , $S_T = \xi \geq 0$ , it follows from the previous propositions that

$$
\begin{array}{r l} & Y _ {0} = E [ \xi + K _ {T} ] \\ & \qquad = E \Big [ \xi + \sup _ {t} (S _ {t} + M _ {T} - M _ {t} - \xi) ^ {+} \Big ] \end{array}
$$

Hence, since

$$
\begin{array}{l} {S _ {T} = \xi ,} \\ {Y _ {0} = \sup _ {v \in \mathcal {T} _ {0}} E [ S _ {v} ] = E \Big [ \sup _ {t} (S _ {t} + M _ {T} - M _ {t}) \Big ],} \end{array}
$$

where $M_{t}=\int_{0}^{t}(Z_{s},dB_{s})$ . The last identity has already been established in [6] for a quite general filtration (not necessarily Brownian) and process S (not even quasi-left-continuous).

3. Some a priori estimates. We will now give some estimates of Y in order to derive some integrability properties of Y, when Z is supposed to be square-integrable. In other words, we want to prove that condition (v) implies condition (v').

First, we show that $Y_{t}$ is smaller than a square-integrable process solution of a forward SDE which depends on the process Z and has initial condition $Y_{0}$ . Second, we show that $Y_{t}$ is greater than a square-integrable process solution of a backward SDE which depends on the processes Y and Z.

PROPOSITION 3.1. (a) Let $\{(Y_t, Z_t, K_t), 0 \leq t \leq T\}$ be the solution of the above RBSDE satisfying assumptions (vi) to (viii). Let us consider $\{\overline{Y}_t, 0 \leq t \leq T\}$ , the (square-integrable) solution of the forward SDE

$$
\overline {{Y}} _ {t} = Y _ {0} - \int_ {0} ^ {t} f (s, \overline {{Y}} _ {s}, Z _ {s}) d s + \int_ {0} ^ {t} (Z _ {s}, d B _ {s}).
$$

Then

$$
Y _ {t} \leq \overline {{{{Y}}}} _ {t}, \quad 0 \leq t \leq T a. s.
$$

If assumption (v) $(Z\in \mathbb{H}^2)$ is satisfied (and using the assumption that $\mathcal{F}_0$ is trivial), then $\overline{Y}\in \mathcal{S}^2$ and consequently, $Y^{+}\in \mathcal{S}^{2}$ .

(b) Let $\{(Y_t, Z_t, K_t), 0 \leq t \leq T\}$ be the solution of the above RBSDE satisfying assumptions (vi) to (viii) and assumption (v).

Let $\beta_{t}$ be the bounded process defined by

$$
\beta_ {t} = \frac {f (t , Y _ {t} , Z _ {t}) - f (t , 0 , Z _ {t})}{Y _ {t}} \quad i f Y _ {t} \neq 0 a n d \beta_ {t} = 0 o t h e r w i s e.\tag{3}
$$

Let $(\underline{Y}_t,\underline{Z}_t)$ be the (square-integrable) solution of the classical backward SDE:

$$
- d \underline {{{Y}}} _ {t} = (\beta_ {t} \underline {{{Y}}} _ {t} + f (t, 0, Z _ {t})) d t - (\underline {{{Z}}} _ {t}, d B _ {t}); \quad \underline {{{Y}}} _ {T} = \xi .\tag{4}
$$

Then

$$
Y _ {t} \geq \underline {{{Y}}} _ {t}, \quad 0 \leq t \leq T a. s.
$$

PROOF. Notice that $\{Y_t, 0 \leq t \leq T\}$ is solution of the forward SDE given by

$$
Y _ {t} = Y _ {0} - \int_ {0} ^ {t} f (s, Y _ {s}, Z _ {s}) d s - K _ {t} + \int_ {0} ^ {t} (Z _ {s}, d B _ {s}).
$$

The result follows by applying the comparison theorem for ordinary differential equations. More precisely, we have

$$
\overline {{Y}} _ {t} - Y _ {t} = \int_ {0} ^ {t} \alpha_ {s} (Y _ {s} - \overline {{Y}} _ {s}) d s + K _ {t},
$$

where $\alpha_{s} = (f(s, Y_{s}, Z_{s}) - f(s, \overline{Y}_{s}, Z_{s})) / Y_{s} - \overline{Y}_{s}$ if $Y_{s} \neq \overline{Y}_{s}$ and 0 otherwise. From that and from the fact that $f$ is Lipschitz with respect to $y$ , and hence $\alpha$ is bounded, it follows that $\overline{Y}_{t} - Y_{t} \geq 0$ .

Note that when $Z$ is square-integrable, the square-integrability of $\overline{Y}_t$ follows from the fact that $Y_0$ is deterministic and hence square-integrable.

It remains to show the second estimate. The method will consist in linearizing the equation with respect to Z, and exploiting some techniques used in [13] for establishing the comparison theorem. First, notice that $(Y_{t}, Z_{t})$ satisfies

$$
- d Y _ {t} = (\beta_ {t} Y _ {t} + f (t, 0, Z _ {t})) d t + d K _ {t} - (Z _ {t}, d B _ {t}),
$$

where $\beta_{t}$ is the process defined by (3). Notice that, since $f$ is Lipschitz with respect to $y$ , the process $\beta$ is bounded.

Define $R_{t} = \exp \{\int_{0}^{t}\beta_{s}ds\}$ , and introduce the discounted processes: $\tilde{Y}_{t} = R_{t}Y_{t};\tilde{Z}_{t} = R_{t}Z_{t};\tilde{K}_{t} = \int_{0}^{t}R_{s}dK_{s}$ .

Applying Itô's formula to $R_{t}Y_{t}$ , we easily prove that

$$
\tilde {Y} _ {t} = R _ {T} \xi + \int_ {t} ^ {T} R _ {s} f (s, 0, Z _ {s}) d s + \tilde {K} _ {T} - \tilde {K} _ {t} - \int_ {t} ^ {T} (\tilde {Z} _ {s}, d B _ {s}).\tag{5}
$$

Consequently,

$$
\tilde {Y} _ {t} \geq R _ {T} \xi + \int_ {t} ^ {T} R _ {s} f (s, 0, Z _ {s}) d s - \int_ {t} ^ {T} (\tilde {Z} _ {s}, d B _ {s}).\tag{6}
$$

That is, $\tilde{Y}_{t}$ is greater than a square-integrable process. Hence, using the estimate (a), it follows that $Y_{t}$ is square-integrable. Thus, by taking conditional expectation in inequality (6), we prove that $\tilde{Y}_{t}$ is greater than the square-integrable process $R_{t}\underline{Y}_{t}$ , where $\underline{Y}_{t}$ is solution of BSDE (4). Estimate (b) follows easily.

REMARK 3.2. Furthermore, we have that if $\{(Y_{t}, Z_{t}, K_{t}), 0 \leq t \leq T\}$ is the solution of the above RBSDE satisfying assumptions (vi) to (viii) and the integrability assumption (v), then, $Y_{t} \geq Y_{t}^{0}, 0 \leq t \leq T$ , where $(Y^{0}, Z^{0})$ corresponds to the solution of the BSDE without constraint,

$$
Y _ {t} ^ {0} = \xi + \int_ {t} ^ {T} f (s, Y _ {s} ^ {0}, Z _ {s} ^ {0}) d s - \int_ {t} ^ {T} (Z _ {s} ^ {0}, d B _ {s}).\tag{7}
$$

So, we can replace $S_{t}$ by $S_{t} \vee Y_{t}^{0}$ ; consequently, we may assume without loss of generality that $E(\sup_{0 \leq t \leq T} S_{t}^{2}) < \infty$ , that is, that $S \in \mathcal{S}^2$ .

Furthermore, we have shown that if the process Z is square-integrable, then Y and K are also square-integrable. More precisely, we state the corollary.

COROLLARY 3.3. Let $\{(Y_t, Z_t, K_t), 0 \leq t \leq T\}$ be a solution of the above RBSDE satisfying assumptions (vi) to (viii) and the integrability assumption (v) on $Z$ . Then condition $(\mathbf{v}')$ is satisfied; that is,

(α)

$$
E \left[ \sup _ {0 \leq t \leq T} Y _ {t} ^ {2} + K _ {T} ^ {2} \right] <   \infty , t h a t i s, Y \in \mathbb {H} ^ {2}, \quad K _ {T} \in \mathbb {L} ^ {2},\tag{β}
$$

$\left\{\int_{0}^{t}(Y_sZ_s,dB_s); 0 \leq t \leq T\right\}$ is a uniformly integrable martingale.

PROOF. Let us prove the second claim

$$
\begin{array}{r l} & E \bigg [ \bigg (\int_ {0} ^ {T} Y _ {t} ^ {2} | Z _ {t} | ^ {2} d t \bigg) ^ {1 / 2} \bigg ] \leq E \bigg [ \sup _ {0 \leq t \leq T} | Y _ {t} | \bigg (\int_ {0} ^ {T} | Z _ {t} | ^ {2} d t \bigg) ^ {1 / 2} \bigg ] \\ & \qquad \leq \frac {1}{2} E \Big (\sup _ {0 \leq t \leq T} Y _ {t} ^ {2} \Big) + \frac {1}{2} E \int_ {0} ^ {T} | Z _ {t} | ^ {2} d t \end{array}
$$

and $(\beta)$ follows from the Davis–Burkholder–Gundy inequality for the first moment of the supremum of a martingale.

REMARK 3.4. Recall that the square-integrability of $\overline{Y}_{t}$ in Proposition 3.1 was established by using the fact that the $\sigma$ -algebra $F_{0}$ is trivial, which implies that $Y_{0}$ is deterministic and hence square-integrable.

Another proof of Corollary 3.3 can be given which does not use the fact that $Y_{0}$ is deterministic. We have just showed that $(\tilde{Y}_{t}, \tilde{Z}_{t}, \tilde{K}_{t})$ is a solution of equation (5); more precisely, $(\tilde{Y}_{t}, \tilde{Z}_{t}, \tilde{K}_{t})$ is a solution of the reflected BSDE associated with the coefficient $R_{t}f(t,0,Z_{t})$ , the terminal condition $R_{T}\xi$ and the obstacle $\tilde{S}_{t}=R_{t}S_{t}$ . Then, applying Proposition 2.2, we have

$$
\tilde {K} _ {T} = \sup _ {0 \leq u \leq T} \left(R _ {T} \xi + \int_ {u} ^ {T} R _ {s} f (s, 0, Z _ {s}) d s - \int_ {u} ^ {T} (\tilde {Z} _ {s}, d B _ {s}) - \tilde {S} _ {u}\right) ^ {-}
$$

and hence

$$
\tilde {K} _ {T} \leq R _ {T} | \xi | + \int_ {0} ^ {T} R _ {s} | f (s, 0, Z _ {s}) | d s + \sup _ {0 \leq u \leq T} \left| \int_ {u} ^ {T} (\tilde {Z} _ {s}, d B _ {s}) \right| + \sup _ {0 \leq u \leq T} \tilde {S} _ {u} ^ {+}.
$$

Using the Burkolder–Davis–Gundy inequality, it is easy to prove that $E[K_{T}^{2}] < +\infty$ . Furthermore, by equation (5), we conclude that $E[\sup_{0 \leq t \leq T} Y_{t}^{2}] < +\infty$ . ☐

We now give a more precise a priori estimate on the norm of the solution.

PROPOSITION 3.5. Let $\{(Y_t, Z_t, K_t), 0 \leq t \leq T\}$ be a solution of the above RBSDE. Then there exists a constant $C$ such that

$$
E \left(\sup _ {0 \leq t \leq T} Y _ {t} ^ {2} + \int_ {0} ^ {T} | Z _ {t} | ^ {2} d t + K _ {T} ^ {2}\right) \leq C E \left(\xi^ {2} + \int_ {0} ^ {T} f ^ {2} (t, 0, 0) d t + \sup _ {0 \leq t \leq T} \left(S _ {t} ^ {+}\right) ^ {2}\right).
$$

PROOF. Applying Itô's formula to the process $Y_{t}$ and the function $y \to y^{2}$ yields

$$
\begin{array}{r l r} & & {Y _ {t} ^ {2} + \int_ {t} ^ {T} | Z _ {s} | ^ {2} d s = \xi^ {2} + 2 \int_ {t} ^ {T} Y _ {s} f (s, Y _ {s}, Z _ {s}) d s} \\ & & {\qquad + 2 \int_ {t} ^ {T} Y _ {s} d K _ {s} - 2 \int_ {t} ^ {T} Y _ {s} (Z _ {s}, d B _ {s})} \\ & & {= \xi^ {2} + 2 \int_ {t} ^ {T} Y _ {s} f (s, Y _ {s}, Z _ {s}) d s} \\ & & {\qquad + 2 \int_ {t} ^ {T} S _ {s} d K _ {s} - 2 \int_ {t} ^ {T} Y _ {s} (Z _ {s}, d B _ {s}),} \end{array}
$$

where we have used the identity $\int_0^T (Y_t - S_t)dK_t = 0$

Using Corollary 2.2 and the Lipschitz property of f, we have that, with $c = 1 + 2K + 2K^{2}$ ,

$$
\begin{array}{r l} & E \bigg (Y _ {t} ^ {2} + \int_ {t} ^ {T} | Z _ {s} | ^ {2} d s \bigg) \\ & \quad = E \bigg [ \xi^ {2} + 2 \int_ {t} ^ {T} Y _ {s} f (s, Y _ {s}, Z _ {s}) d s + 2 \int_ {t} ^ {T} S _ {s} d K _ {s} \bigg ] \\ & \leq E \bigg [ \xi^ {2} + 2 \int_ {t} ^ {T} Y _ {s} f (s, 0, 0) d s \\ & \qquad + 2 K \int_ {t} ^ {T} (| Y _ {s} | ^ {2} + | Y _ {s} | | Z _ {s} |) d s + 2 \int_ {t} ^ {T} S _ {s} d K _ {s} \bigg ] \\ & \leq E \bigg [ \xi^ {2} + \int_ {t} ^ {T} f (s, 0, 0) ^ {2} d s + 2 \int_ {t} ^ {T} S _ {s} d K _ {s} + c \int_ {t} ^ {T} Y _ {s} ^ {2} d s + \frac 12 \int_ {t} ^ {T} | Z _ {s} ^ {2} | d s \bigg ]. \end{array}
$$

Gronwall's lemma applied to $Y$ gives:

$$
E (Y _ {t} ^ {2}) \leq C E \bigg [ \xi^ {2} + \int_ {t} ^ {T} f (s, 0, 0) ^ {2} d s + 2 \int_ {t} ^ {T} S _ {s} d K _ {s} \bigg ].\tag{8}
$$

It follows that

$$
E \int_ {0} ^ {T} | Z _ {s} ^ {2} | d s \leq C ^ {\prime} E \bigg [ \xi^ {2} + \int_ {0} ^ {T} f (s, 0, 0) ^ {2} d s + 2 \int_ {0} ^ {T} S _ {s} d K _ {s} \bigg ].\tag{9}
$$

We now give an estimate of $E[K_T^2]$ . From the equation

$$
K _ {T} = Y _ {0} - \xi - \int_ {0} ^ {T} f (t, Y _ {t}, Z _ {t}) d t + \int_ {0} ^ {T} (Z _ {t}, d B _ {t}),
$$

and estimates (8) and (9), we show the following inequalities:

$$
\begin{array}{l} E [ K _ {T} ^ {2} ] \leq C E \bigg [ \xi^ {2} + \int_ {0} ^ {T} f (s, 0, 0) ^ {2} d s + 2 \int_ {0} ^ {T} S _ {s} d K _ {s} \bigg ] \\ \leq C E \bigg [ \xi^ {2} + \int_ {0} ^ {T} f (s, 0, 0) ^ {2} d s \bigg ] + 2 C ^ {2} E \Big [ \sup _ {0 \leq s \leq T} (S _ {s} ^ {+}) ^ {2} \Big ] + \frac {1}{2} E [ K _ {T} ^ {2} ]. \end{array}
$$

Consequently,

$$
E \left[ K _ {T} ^ {2} \right] \leq C E \left[ \xi^ {2} + \int_ {0} ^ {T} f ^ {2} (s, 0, 0) d s + \sup _ {0 \leq s \leq T} \left(S _ {s} ^ {+}\right) ^ {2} \right].
$$

It follows easily that for each $t \in [0, T]$ ,

$$
E \left(Y _ {t} ^ {2} + \int_ {0} ^ {T} | Z _ {t} | ^ {2} d t + K _ {T} ^ {2}\right) \leq C E \left(\xi^ {2} + \int_ {0} ^ {T} f ^ {2} (t, 0, 0) d t + \sup _ {0 \leq t \leq T} \left(S _ {t} ^ {+}\right) ^ {2}\right).
$$

The result then follows easily from Burkholder's inequality. $\square$

We can now estimate the variation in the solution induced by a variation in the data.

PROPOSITION 3.6. Let $(\xi, f, S)$ and $(\xi', f', S')$ be two triplets satisfying the above assumptions, in particular (i), (ii), (iii) and (iv).

Suppose $(Y, Z, K)$ is a solution of the RBSDE $(\xi, f, S)$ and $(Y', Z', K')$ is a solution of the RBSDE $(\xi', f', S')$ . Define

$$
\Delta \xi = \xi - \xi^ {\prime}, \quad \Delta f = f - f ^ {\prime}, \quad \Delta S = S - S ^ {\prime};
$$

$$
\Delta Y = Y - Y ^ {\prime}, \quad \Delta Z = Z - Z ^ {\prime}, \quad \Delta K = K - K ^ {\prime}.
$$

Then there exists a constant $c$ such that

$$
\begin{array}{r l} & E \bigg (\underset {0 \leq t \leq T} {\sup} | \Delta Y _ {t} | ^ {2} + \int_ {0} ^ {T} | \Delta Z _ {t} | ^ {2} d t + | \Delta K _ {T} | ^ {2} \bigg) \\ & \quad \leq c E \bigg (| \Delta \xi | ^ {2} + \int_ {0} ^ {T} | \Delta f (t, Y _ {t}, Z _ {t}) | ^ {2} d t \bigg) \\ & \quad + c \Big [ E \Big (\underset {0 \leq t \leq T} {\sup} | \Delta S _ {t} | ^ {2} \Big) \Big ] ^ {1 / 2} \Psi_ {T} ^ {1 / 2}, \end{array}
$$

where

$$
\Psi_ {T} = E \bigg [ \xi^ {2} + \int_ {0} ^ {T} f ^ {2} (t, 0, 0) d t + \sup _ {0 \leq t \leq T} (S _ {t} ^ {+}) ^ {2} + \xi^ {\prime 2} + \int_ {0} ^ {T} f ^ {\prime 2} (t, 0, 0) d t + \sup _ {0 \leq t \leq T} (S _ {t} ^ {\prime +}) ^ {2} \bigg ].
$$

PROOF. The computations are similar to those in the previous proof, so we shall only sketch the argument. Since $\int_{t}^{T}(\Delta Y_{s}-\Delta S_{s})d(\Delta K_{s})\leq0$ ,

$$
\begin{array}{r l} & E | \Delta Y _ {t} | ^ {2} + E \int_ {t} ^ {T} | \Delta Z _ {s} | ^ {2} d s \leq E | \Delta \xi | ^ {2} + 2 \int_ {t} ^ {T} \Delta f (s, Y _ {s}, Z _ {s}) \Delta Y _ {s} d s \\ & \qquad + 2 E \int_ {t} ^ {T} [ f ^ {\prime} (s, Y _ {s}, Z _ {s}) - f ^ {\prime} (s, Y _ {s} ^ {\prime}, Z _ {s} ^ {\prime}) ] \Delta Y _ {s} d s \\ & \qquad + 2 E \int_ {t} ^ {T} \Delta S _ {s} d (\Delta K _ {s}). \end{array}
$$

Arguments already used in the previous proof lead to

$$
\begin{array}{r l r} & & {E (\Delta Y _ {t}) ^ {2} + \frac {1}{2} E \int_ {t} ^ {T} | \Delta Z _ {s} | ^ {2} d s \leq c E \bigg [ | \Delta \xi | ^ {2} + \int_ {t} ^ {T} | \Delta f (s, Y _ {s}, Z _ {s}) | ^ {2}} \\ & & {\quad + \int_ {t} ^ {T} | \Delta Y _ {s} | ^ {2} d s + \Big (\underset {0 \leq t \leq T} {\sup} | \Delta S _ {t} | \Big) (K _ {T} + K _ {T} ^ {\prime}) \bigg ].} \end{array}
$$

It remains to use Gronwall's lemma, Proposition 2.3 and the Burkholder-Davis-Gundy inequality. $\square$

We deduce immediately the following uniqueness result from the Proposition 3.6 with $\xi' = \xi$ , $f' = f$ and $S' = S$ .

COROLLARY 3.7. Under the assumptions (i), (ii), (iii) and (iv), there exists at most one progressively measurable triple $\{(Y_{t}, Z_{t}, K_{t}), 0 \leq t \leq T\}$ , which satisfies (v), (vi), (vii) and (viii).

REMARK 3.8. Instead of saying that a triple $\{(Y_t, Z_t, K_t); 0 \leq t \leq T\}$ of $\mathbb{R} \times \mathbb{R}^d \times \mathbb{R}_+$ -valued progressively measurable processes is a solution of our RBSDE, we could say that a pair $\{(Y_t, Z_t); 0 \leq t \leq T\}$ of $\mathbb{R} \times \mathbb{R}^d$ -valued progressively measurable processes satisfying (v) and (vii) is a solution of our RBSDE, meaning that, if $\{K_t, 0 \leq t \leq T\}$ is defined by (vi), then the pair $(Y, K)$ also satisfies (viii).

In that sense, it follows from Corollary 3.7 that there exists at most one pair $\{(Y_t, Z_t); 0 \leq t \leq T\}$ of progressively measurable processes which solves the RBSDE.

4. Comparison theorem and properties of the increasing process. We next prove a comparison theorem, similar to that of [19] and [13] for non-reflected BSDE's.

THEOREM 4.1. Let $(\xi, f, S)$ and $(\xi', f', S')$ be two sets of data, each one satisfying all the assumptions (i), (ii), (iii) and (iv) [with the exception that the Lipschitz condition (iii) could be satisfied by either $f$ or $f'$ only], and suppose in addition the following:

(i) $\xi \leq \xi' a.s.$ ,

(ii) $f(t,y,z)\leq f'(t,y,z)dP\times dt$ a.e., $\forall (y,z)\in \mathbb{R}\times \mathbb{R}^d$

(iii) $S_{t}\leq S_{t}^{\prime},0\leq t\leq T,a.s.$

Let $(Y, Z, K)$ be a solution of the RBSDE with data $(\xi, f, S)$ and $(Y', Z', K')$ a solution of the RBSDE with data $(\xi', f', S')$ . Then

$$
Y _ {t} \leq Y _ {t} ^ {\prime}, \quad 0 \leq t \leq T a. s.
$$

PROOF. Applying Itô's formula to $|(Y_t - Y'_t)^+|^2$ , and taking the expectation (see Corollary 3.3), we have:

$$
\begin{array}{r l} & E | (Y _ {t} - Y _ {t} ^ {\prime}) ^ {+} | ^ {2} + E \int_ {t} ^ {T} \mathbf {1} _ {\{Y _ {s} > Y _ {s} ^ {\prime} \}} | Z _ {s} - Z _ {s} ^ {\prime} | ^ {2} d s \\ & \quad \leq 2 E \int_ {t} ^ {T} (Y _ {s} - Y _ {s} ^ {\prime}) ^ {+} [ f (s, Y _ {s}, Z _ {s}) - f ^ {\prime} (s, Y _ {s} ^ {\prime}, Z _ {s} ^ {\prime}) ] d s \\ & \quad + 2 E \int_ {t} ^ {T} (Y _ {s} - Y _ {s} ^ {\prime}) ^ {+} (d K _ {s} - d K _ {s} ^ {\prime}). \end{array}
$$

Since on $\{Y_t > Y'_t\}$ , $Y_t > S'_t \geq S_t$ , we have

$$
\begin{array}{r l} & {\int_ {t} ^ {T} (Y _ {s} - Y _ {s} ^ {\prime}) ^ {+} (d K _ {s} - d K _ {s} ^ {\prime}) = - \int_ {t} ^ {T} (Y _ {s} - Y _ {s} ^ {\prime}) ^ {+} d K _ {s} ^ {\prime}} \\ & {\qquad \le 0.} \end{array}
$$

Assume now that the Lipschitz condition in the statement applies to $f$ . Then

$$
\begin{array}{r l} & E | (Y _ {t} - Y _ {t} ^ {\prime}) ^ {+} | ^ {2} + E \int_ {t} ^ {T} \mathbf {1} _ {\{Y _ {s} > Y _ {s} ^ {\prime} \}} | Z _ {s} - Z _ {s} ^ {\prime} | ^ {2} d s \\ & \quad \leq 2 E \int_ {t} ^ {T} (Y _ {s} - Y _ {s} ^ {\prime}) ^ {+} [ f (s, Y _ {s}, Z _ {s}) - f (s, Y _ {s} ^ {\prime}, Z _ {s} ^ {\prime}) ] d s \\ & \quad \leq 2 K E \int_ {t} ^ {T} (Y _ {s} - Y _ {s} ^ {\prime}) ^ {+} (| Y _ {s} - Y _ {s} ^ {\prime} | + | Z _ {s} - Z _ {s} ^ {\prime} |) d s \\ & \quad \leq E \int_ {t} ^ {T} \mathbf {1} _ {\{Y _ {s} > Y _ {s} ^ {\prime} \}} | Z _ {s} - Z _ {s} ^ {\prime} | ^ {2} d s + \overline {{K}} E \int_ {t} ^ {T} | (Y _ {s} - Y _ {s} ^ {\prime}) ^ {+} | ^ {2} d s. \end{array}
$$

Hence

$$
E | (Y _ {t} - Y _ {t} ^ {\prime}) ^ {+} | ^ {2} \leq \overline {{K}} E \int_ {t} ^ {T} | (Y _ {s} - Y _ {s} ^ {\prime}) ^ {+} | ^ {2} d s,
$$

and from Gronwall's lemma, $(Y_{t} - Y_{t}^{\prime})^{+} = 0, 0 \leq t \leq T$ .

We note that our notion of RBSDE has much similarity with the classical notion of reflected (forward) SDE. However, we shall give a proposition and proof exhibiting the main difference between the two notions: at least in case of a regular obstacle, the increasing process is absolutely continuous.

PROPOSITION 4.2. Assume the conditions (i)-(iv) on the data, and moreover that $\{S_t\}$ is a semimartingale of the form

$$
S _ {t} = S _ {0} + \int_ {0} ^ {t} U _ {s} d s + \int_ {0} ^ {t} (V _ {s}, d B _ {s}),
$$

where $\{U_t\}$ and $\{V_t\}$ are, respectively, $\mathbb{R}$ and $\mathbb{R}^d$ -valued $\mathcal{F}_t$ progressively measurable processes satisfying

$$
\int_ {0} ^ {T} (| U _ {t} | + | V _ {t} | ^ {2}) d t <   \infty a. s.
$$

Let $(Y,Z,K)$ be a solution of the RBSDE. Then

$$
Z _ {t} = V _ {t}, \quad d P \times d t a. e. o n t h e s e t \{Y _ {t} = S _ {t} \}\tag{10}
$$

and

$$
0 \leq d K _ {t} \leq \mathbf {1} _ {\{Y _ {t} = S _ {t} \}} [ f (t, S _ {t}, V _ {t}) + U _ {t} ] ^ {-} d t.\tag{11}
$$

PROOF. It follows from (vi) and the assumption that

$$
d \left(Y _ {t} - S _ {t}\right) = - \left(f \left(t, Y _ {t}, Z _ {t}\right) + U _ {t}\right) d t - d K _ {t} + \left(Z _ {t} - V _ {t}, d B _ {t}\right).
$$

If we denote by $\{L_t, 0 \leq t \leq T\}$ the local time at 0 of the continuous semi-martingale $\{Y_t - S_t\}$ , it follows from the Itô-Tanaka formula that

$$
\begin{array}{r} d (Y _ {t} - S _ {t}) ^ {+} = - \mathbf {1} _ {\{Y _ {t} > S _ {t} \}} (f (t, Y _ {t}, Z _ {t}) + U _ {t}) d t \\ + \mathbf {1} _ {\{Y _ {t} > S _ {t} \}} (Z _ {t} - V _ {t}, d B _ {t}) + \frac {1}{2} d L _ {t}. \end{array}
$$

But $(Y_{t} - S_{t})^{+}\equiv Y_{t} - S_{t}$ , from (vii). Hence the two above differentials coincide, and so do the martingale and bounded variation parts. Consequently,

$$
\mathbf {1} _ {\{Y _ {t} = S _ {t} \}} (Z _ {t} - V _ {t}, d B _ {t}) = 0,
$$

from which the first statement follows, and

$$
\begin{array}{r} d K _ {t} + \frac {1}{2} d L _ {t} = - \mathbf {1} _ {\{Y _ {t} = S _ {t} \}} (f (t, Y _ {t}, Z _ {t}) + U _ {t}) d t \\ = - \mathbf {1} _ {\{Y _ {t} = S _ {t} \}} (f (t, S _ {t}, V _ {t}) + U _ {t}) d t. \end{array}\tag{12}
$$

Hence

$$
d K _ {t} + \frac {1}{2} d L _ {t} = \mathbf {1} _ {\{Y _ {t} = S _ {t} \}} (f (t, S _ {t}, V _ {t}) + U _ {t}) ^ {-} d t.\tag{13}
$$

The second result follows from the fact that $\{K_{t}\}$ is increasing. Note that we have proved that the local time at 0 of $\{Y_{t}-S_{t}\}$ is absolutely continuous.

REMARK 4.3. This property can be generalized easily to an obstacle $S_{t}$ which is a more general semimartingale.

$$
S _ {t} = S _ {0} + \int_ {0} ^ {t} U _ {s} d s + A _ {t} + \int_ {0} ^ {t} (V _ {s}, d B _ {s}),
$$

where A is a continuous process of integrable variation such that the measure $dA_{t}$ is singular with respect to dt and which admits as a decomposition $A_{t} = A_{t}^{+} - A_{t}^{-}$ , where $A_{t}^{+}$ and $A_{t}^{-}$ are increasing processes. Also, $\{U_{t}\}$ and $\{V_{t}\}$ are, respectively, R and $R^{d}$ -valued $F_{t}$ progressively measurable processes satisfying:

$$
\int_ {0} ^ {T} (| U _ {t} | d t + | V _ {t} | ^ {2} d t) + A _ {T} ^ {+} + A _ {T} ^ {-} <   \infty \quad \mathrm{a.s.}
$$

The first equality (10) is still satisfied and the second estimate (11) or, more precisely, equation (12) is replaced by

$$
\begin{array}{r} d K _ {t} + \frac {1}{2} d L _ {t} = - \mathbf {1} _ {\{Y _ {t} = S _ {t} \}} (f (t, S _ {t}, V _ {t}) d t + U _ {t} d t + d A _ {t}) \\ = \mathbf {1} _ {\{Y _ {t} = S _ {t} \}} ([ f (t, S _ {t}, V _ {t}) + U _ {t} ] ^ {-} d t + d A _ {t} ^ {-}). \end{array}
$$

It follows that there exists a predictable process $(\alpha_{t}, 0 \leq t \leq T)$ such that $0 \leq \alpha_{t} \leq 1$ and

$$
d K _ {t} = \alpha_ {t} \mathbf {1} _ {\{Y _ {t} = S _ {t} \}} ([ f (t, S _ {t}, V _ {t}) + U _ {t} ] ^ {-} d t + d A _ {t} ^ {-}).
$$

REMARK 4.4. The local time $L_{t}$ at 0 of $Y_{t} - S_{t}$ is not always identically equal to zero. That is, the process $\alpha_{t}$ is not always equal to 1 as is shown by a counterexample given by Jacka [15].

Let $\{B_t, t \geq 0\}$ be a Brownian motion on the filtered space $(\Omega, (\mathcal{F}_t), P)$ with $\mathcal{F}_t = \sigma(B_s, s \leq t)$ . Let $l_t^b$ be the local time at $b$ of $B$ . Define $S_t = |B_t - a| - |B_t + a|$ for some fixed $a > 0$ .

Notice that by Tanaka's formula, the semimartingale $(S_{t}, t \geq 0)$ admits the following Doob-Meyer decomposition:

$$
S _ {t} = S _ {0} + A _ {t} + \int_ {0} ^ {t} \operatorname{sgn} (B _ {s} - a) d B _ {s} - \int_ {0} ^ {t} \operatorname{sgn} (B _ {s} + a) d B _ {s},
$$

where the finite variation process $A_{t}$ is given by $A_{t} = l_{t}^{a} - l_{t}^{-a}$ .

In this example, the coefficient f is taken to be equal to 0 and the terminal condition $\xi$ is equal to $S_{T}$ . From Proposition 2.3, the process $(Y_{t}, 0 \leq t \leq T)$ associated with the RBSDE corresponding to those parameters is the Snell envelope of $S_{t}$ ; that is,

$$
Y _ {t} = \operatorname{ess} \sup _ {v \in \mathcal {T} _ {t}} E [ S _ {v} / \mathcal {F} _ {t} ]
$$

with the decomposition

$$
- d Y _ {t} = \alpha_ {t} \mathbf {1} _ {\{Y _ {t} = S _ {t} \}} d l _ {t} ^ {- a} - (Z _ {t}, d W _ {t}); \quad Y _ {T} = S _ {T}.
$$

Notice that the function $x \to |x - a| - |x + a|$ is bounded above by $2a$ and achieves its maximum at any $x \leq a$ .

If $B_{t} > -a$ , let us introduce $D_{t}^{*} = \inf \{s \geq t / B_{s} \leq -a\} \wedge T$ . Recall that $D_{t} = \inf \{s \geq t / Y_{t} = S_{t}\} \wedge T$ is the optimal time stopping for $Y_{T}$ . Let us show that $D_{t}^{*} = D_{t}$ . It is sufficient to show that $\{B_{t} \leq -a\} = \{Y_{t} = S_{t}\}$ . First, it is clear that $\{B_{t} \leq -a\} \subseteq \{Y_{t} = S_{t}\}$ . Let us show the inverse inclusion: suppose that $B_{t} > -a$ , then, $Y_{t} - S_{t} \geq E[l_{D_{t}^{*}}^{a} - l_{t}^{a} - (l_{D_{t}^{*}}^{-a} - l_{t}^{-a})|\mathcal{F}_{t}]$ .

Now, it is clear that $l_{D_t^*}^{-a} - l_t^{-a} = 0$ . Furthermore, $E[l_{D_t^*}^a - l_t^a] > 0$ since there is a positive probability that $l^a$ will increase on $[t, D_t^*]$ . It follows that $Y_t - S_t > 0$ . Consequently, $\{B_t \leq -a\} = \{Y_t = S_t\}$ and hence $D_t^* = D_t$ . We have

$$
\begin{array}{r} Y _ {0} = E \left[ l _ {T} ^ {a} - l _ {T} ^ {- a} + \int_ {0} ^ {T} \alpha_ {t} \mathbf {1} _ {\{Y _ {t} = S _ {t} \}} d l _ {t} ^ {- a} \right] \\ = E \left[ l _ {T} ^ {a} - \int_ {0} ^ {T} (\mathbf {1} - \alpha_ {t}) \mathbf {1} _ {\{Y _ {t} = S _ {t} \}} d l _ {t} ^ {- a} \right] \end{array}
$$

Since $Y_0 = E[l_{D_0^*}^a]$ , we have

$$
E \left[ l _ {T} ^ {a} - l _ {D _ {0} ^ {*}} ^ {a} \right] = E \left[ \int_ {0} ^ {T} \left(1 - \alpha_ {t}\right) \mathbf {1} _ {\{Y _ {t} = S _ {t} \}} d l _ {t} ^ {- a} \right]
$$

Now, $E[l_T^a - l_{D_0^*}^a] > 0$ and hence, the process $\alpha_t$ is not identically equal to 1. Jacka [15] has computed $\alpha_t$ explicitly:

$$
\alpha_ {t} = 2 \phi (2 a / (T - t) ^ {1 / 2}) - 1,
$$

where $\phi$ is the standard normal distribution function.

5. Existence of a solution of the RBSDE by Picard iteration. One approach to the solution of (forward) reflected SDE's is to use the solution of the Skorohod problem for constructing a Picard-type iterative approximation to the reflected equation, see, for example, [11]. We shall use the same approach here for our RBSDE. Note that in the forward case the solution of the Skorohod problem is given explicitly. Here, the Skorohod problem is replaced by a more complicated problem which involves optimal stopping and which we shall call the backward reflection problem, BRP in short. It is as follows. Suppose that f does not depend on $(y, z)$ ; that is, it is a given $F_{t}$ progressively measurable process satisfying

$$
E \int_ {0} ^ {T} f (t) ^ {2} d t <   \infty .\tag{ii'}
$$

A solution to the BRP is a triple $(Y, Z, K)$ which satisfies (v), (vii), (viii) and

$$
Y _ {t} = \xi + \int_ {t} ^ {T} f (s) d s + K _ {T} - K _ {t} - \int_ {t} ^ {T} \left(Z _ {s}, d B _ {s}\right), \quad 0 \leq t \leq T.\tag{vi'}
$$

Assuming w.l.o.g. that $K_0 = 0$ , we deduce that

$$
Y _ {t} + \int_ {0} ^ {t} f (s) d s = Y _ {0} - K _ {t} + \int_ {0} ^ {t} \left(Z _ {s}, d B _ {s}\right), \quad 0 \leq t \leq T.
$$

Hence $\{Y_t + \int_0^t f(s)ds, 0 \leq t \leq T\}$ is a supermartingale, which from (vii) dominates the process $\{S_t + \int_0^t f(s)ds, 0 \leq t \leq T\}$ .

We now establish the following proposition.

PROPOSITION 5.1. Under the assumptions (i), (ii) and (iv), the BRP (v), (vi'), (vii) and (viii), has a unique solution $\{(Y_t, Z_t, K_t); 0 \leq t \leq T\}$ .

PROOF. Uniqueness follows from Corollary 3.7. We now prove existence. From Proposition 2.3, let us introduce the process $\{Y_{t}; 0 \leq t \leq T\}$ defined by

$$
Y _ {t} = \operatorname{ess} \sup _ {v \in \mathcal {T} _ {t}} E \left[ \int_ {t} ^ {v} f (s) d s + S _ {v} \mathbf {1} _ {\{v <   T \}} + \xi \mathbf {1} _ {\{v = T \}} | \mathcal {F} _ {t} \right], \quad 0 \leq t \leq T.
$$

The process $Y_{t} + \int_{0}^{t} f(s) ds$ is the value function of an optimal stopping time problem with payoff:

$$
H _ {t} = \int_ {0} ^ {t} f (s) d s + S _ {t} \mathbf {1} _ {\{t <   T \}} + \xi \mathbf {1} _ {\{t = T \}}.
$$

By the theory of Snell envelopes (cf. [10] and [16]), it is also the smallest continuous supermartingale which dominates $H_{t}$ . The continuity of $\{Y_{t}\}$ follows from that of $\{H_{t}\}$ on the interval $[0, T)$ , and the assumption that the jump of H at time T is positive.

We have moreover that

$$
\left| Y _ {t} \right| \leq E \left[ | \xi | + \int_ {0} ^ {T} | f (t) | d t + \sup _ {0 \leq t \leq T} \left| S _ {t} \right| \left| \mathcal {F} _ {t} \right. \right].
$$

Hence, by Burkholder's inequality,

$$
E \left(\sup _ {0 \leq t \leq T} Y _ {t} ^ {2}\right) \leq c E \left(\xi^ {2} + \int_ {0} ^ {T} f ^ {2} (t) d t + \sup _ {0 \leq t \leq T} S _ {t} ^ {2}\right).
$$

Denote by $D_{t}$ the stopping time

$$
D _ {t} = \inf \{t \leq u \leq T; Y _ {u} \leq S _ {u} \} \wedge T.
$$

Then $D_{t}$ is optimal, in the sense that

$$
Y _ {t} = E \left[ \int_ {t} ^ {D _ {t}} f (s) d s + S _ {D _ {t}} \mathbf {1} _ {\{D _ {t} <   T \}} + \xi \mathbf {1} _ {\{D _ {t} = T \}} | \mathcal {F} _ {t} \right], \quad 0 \leq t \leq T.\tag{14}
$$

Let us now introduce the Doob–Meyer decomposition of the continuous supermartingale $Y_{t} + \int_{0}^{t} f(s) ds$ . There exists an adapted increasing continuous process $\{K_{t}\}$ and a continuous uniformly integrable martingale $\{M_{t}\}$ such that

$$
Y _ {t} = M _ {t} - \int_ {0} ^ {t} f (s) d s - K _ {t},
$$

$K_{0} = 0$ and $K_{t} = K_{D_{t}}$ . Indeed, by condition (vi), we have that

$$
Y _ {t} = E \left[ \int_ {t} ^ {D _ {t}} f (s) d s + S _ {D _ {t}} \mathbf {1} _ {\{D _ {t} <   T \}} + \xi \mathbf {1} _ {\{D _ {t} = T \}} + K _ {D _ {t}} - K _ {t} | \mathcal {F} _ {t} \right], \quad 0 \leq t \leq T.
$$

It then follows from (14) that $E[K_{D_t} - K_t|\mathcal{F}_t] = 0$ and hence $K_{D_t} = K_t$ , or equivalently $\int_0^T (Y_t - S_t)dK_t = 0$ .

It remains to prove some integrability results. Since

$$
\left\{Y _ {t} + \int_ {0} ^ {t} f (s) d s, 0 \leq t \leq T \right\}
$$

is a square-integrable supermartingale which dominates the square-integrable martingale

$$
\left\{E \bigg (\int_ {0} ^ {T} f (s) d s + \xi | \mathcal {F} _ {t} \bigg); 0 \leq t \leq T \right\},
$$

it follows from Theorem VII.8 in Delacherie and Meyer [8] that $K_{T}$ is square-integrable. Hence the martingale

$$
M _ {t} = E \left(M _ {T} \mid \mathcal {F} _ {t}\right) = E \left(\xi + \int_ {0} ^ {T} f (s) d s - K _ {T} \mid \mathcal {F} _ {t}\right)
$$

is also square-integrable. Finally, since $\mathcal{F}_t$ is a Brownian filtration, $M_t = \int_0^t Z_s dB_s$ , where $E\int_0^T |Z_t|^2 dt < \infty$ .

Actually, we can show directly that $E\int_0^T |Z_t|^2 dt < \infty$ , which is equivalent to $E(K_T^2) < \infty$ . Indeed, let $v \leq T$ be a stopping time such that $E(K_v^2) < \infty$ .

We have

$$
\begin{array}{l} E (K _ {v} ^ {2}) = 2 E \int_ {0} ^ {v} (K _ {v} - K _ {t}) d K _ {t} \\ \qquad = 2 E \int_ {0} ^ {v} E (K _ {v} - K _ {t} | \mathcal {F} _ {t}) d K _ {t} \\ \qquad = 2 E \int_ {0} ^ {v} E \bigg (Y _ {t} - Y _ {v} - \int_ {t} ^ {v} f (s) d s | \mathcal {F} _ {t} \bigg) d K _ {t} \\ \qquad \leq 2 E \bigg [ \bigg (2 \sup _ {0 \leq t \leq T} | Y _ {t} | + \int_ {0} ^ {T} | f (s) | d s \bigg) K _ {v} \bigg ] \\ \qquad \leq 2 \bigg [ E \bigg (2 \sup _ {0 \leq t \leq T} | Y _ {t} | + \int_ {0} ^ {T} | f (s) | d s \bigg) ^ {2} \bigg ] ^ {1 / 2} [ E K _ {v} ^ {2} ] ^ {1 / 2}. \end{array}
$$

Taking the limit as $v \uparrow T$ , the result follows. □

We can now establish the following theorem.

THEOREM 5.2. Under the above assumptions, in particular (i), (ii), (iii) and (iv), the RBSDE with (v), (vi), (vii), (viii) has a unique solution $(Y,Z,K)$ .

PROOF. Denote by $\mathcal{S}$ the space of progressively measurable $\{(Y_t, Z_t); 0 \leq t \leq T\}$ with values in $\mathbb{R} \times \mathbb{R}^d$ which satisfy (v) and (vii).

We define a mapping $\Phi$ from $\mathcal{S}$ into itself as follows. Given $(U, V) \in \Phi$ , let $(Y, Z) = \Phi(U, V)$ be the unique element of $\mathcal{S}$ which is such that, if we define the process

$$
K _ {t} = Y _ {t} - Y _ {0} - \int_ {0} ^ {t} f (s, U _ {s}, V _ {s}) d s + \int_ {0} ^ {t} (Z _ {s}, d B _ {s}), \qquad 0 \leq t \leq T,
$$

then the triple $(Y, Z, K)$ solves the BRP associated with $f(s) = f(s, U_s, V_s)$ . In other words, the pair $(Y, Z)$ is the unique solution of the same BRP, in the sense of Remark 3.8.

Let $(U', V')$ be another element of $\mathscr{S}$ , and define $(Y', Z') = \Phi(U', V')$ ,

$$
\overline {{U}} = U - U ^ {\prime}, \qquad \overline {{V}} = V - V ^ {\prime}, \qquad \overline {{Y}} = Y - Y ^ {\prime}, \qquad \overline {{Z}} = Z - Z ^ {\prime}.
$$

It follows from arguments similar to those in the proofs of Propositions 3.5 and 3.6 that for any $\beta > 0$ ,

$$
\begin{array}{r l} & {e ^ {\beta t} E (\overline {{Y}} _ {t} ^ {2}) + E \int_ {t} ^ {T} e ^ {\beta s} \big [ \beta \overline {{Y}} _ {s} ^ {2} + | \overline {{Z}} _ {s} | ^ {2} \big ] d s} \\ & {\qquad = 2 E \int_ {t} ^ {T} e ^ {\beta s} \overline {{Y}} _ {s} [ f (s, U _ {s}, V _ {s}) - f (s, U _ {s} ^ {\prime}, V _ {s} ^ {\prime}) ] d s} \\ & {\qquad \leq 4 K ^ {2} E \int_ {t} ^ {T} e ^ {\beta s} \overline {{Y}} _ {s} ^ {2} d s + \frac {1}{2} E \int_ {t} ^ {T} e ^ {\beta s} \big [ \overline {{U}} _ {s} ^ {2} + | \overline {{V}} _ {s} | ^ {2} \big ] d s,} \end{array}
$$

so that if we choose $\beta = 4K^2 +1$ , we deduce

$$
E \int_ {0} ^ {T} e ^ {\beta t} \bigl [ \overline {{{Y}}} _ {t} ^ {2} + | \overline {{{Z}}} _ {t} | ^ {2} \bigr ] d t \leq \frac {1}{2} E \int_ {0} ^ {T} e ^ {\beta t} \bigl [ \overline {{{U}}} _ {t} ^ {2} + | \overline {{{V}}} _ {t} | ^ {2} \bigr ] d t.
$$

Hence the mapping $\Phi$ is a strict contraction on S equipped with the norm

$$
\| (Y, Z) \| _ {\beta} = \left(E \int_ {0} ^ {T} e ^ {\beta t} (Y _ {t} ^ {2} + | Z _ {t} | ^ {2}) d t\right) ^ {1 / 2},
$$

and it has a unique fixed point, which is the unique solution of the RBSDE (in the sense of Remark 3.8).

6. Existence of a solution of the RBSDE: approximation via penalization. In this section, we will give another proof of Theorem 5.2, based on approximation via penalization. The result of this section will be useful in Section 8. In the following, c will denote a constant whose value can vary from line to line.

For each $n \in N$ , let $\{(Y_{t}^{n}, Z_{t}^{n}); 0 \leq t \leq T\}$ denote the unique pair of $F_{t}$ progressively measurable processes with values in $R \times R^{d}$ satisfying

$$
E \int_ {0} ^ {T} | Z _ {t} ^ {n} | ^ {2} d t <   \infty
$$

and

$$
Y _ {t} ^ {n} = \xi + \int_ {t} ^ {T} f (s, Y _ {s} ^ {n}, Z _ {s} ^ {n}) d s + n \int_ {t} ^ {T} (Y _ {s} ^ {n} - S _ {s}) ^ {-} d s - \int_ {t} ^ {T} (Z _ {s} ^ {n}, d B _ {s}),\tag{15}
$$

where $\xi$ and f satisfy the assumptions stated in Section 2. We define

$$
K _ {t} ^ {n} = n \int_ {0} ^ {t} (Y _ {s} ^ {n} - S _ {s}) ^ {-} d s, \qquad 0 \leq t \leq T.
$$

It follows from the theory of (unconstrained) BSDE's that for each $n$ ,

$$
E \left(\sup _ {0 \leq t \leq T} | Y _ {t} ^ {n} | ^ {2}\right) <   \infty .
$$

We now establish a priori estimates, uniform in $n$ , on the sequence $(Y^n, Z^n, K^n)$ .

$$
\begin{array}{r l} & E | Y _ {t} ^ {n} | ^ {2} + E \int_ {t} ^ {T} | Z _ {s} ^ {n} | ^ {2} d s \\ & \quad = E | \xi | ^ {2} + 2 E \int_ {t} ^ {T} f (s, Y _ {s} ^ {n}, Z _ {s} ^ {n}) Y _ {s} ^ {n} d s + 2 E \int_ {t} ^ {T} Y _ {s} ^ {n} d K _ {s} ^ {n} \\ & \quad \leq E | \xi | ^ {2} + 2 E \int_ {t} ^ {T} (f (s, 0, 0) + K | Y _ {s} ^ {n} | + K | Z _ {s} ^ {n} |) | Y _ {s} ^ {n} | d s + 2 E \int_ {t} ^ {T} S _ {s} d K _ {s} ^ {n} \\ & \quad \leq c \bigg (1 + E \int_ {t} ^ {T} | Y _ {s} ^ {n} | ^ {2} d s \bigg) + \frac {1}{3} E \int_ {t} ^ {T} | Z _ {s} ^ {n} | ^ {2} d s \\ & \quad \quad + \frac {1}{\alpha} E \Big [ \sup _ {0 \leq t \leq T} (S _ {t} ^ {+}) ^ {2} \Big ] + \alpha E [ (K _ {T} ^ {n} - K _ {t} ^ {n}) ^ {2} ], \end{array}
$$

but

$$
K _ {T} ^ {n} - K _ {t} ^ {n} = Y _ {t} ^ {n} - \xi - \int_ {t} ^ {T} f (s, Y _ {s} ^ {n}, Z _ {s} ^ {n}) d s + \int_ {t} ^ {T} (Z _ {s} ^ {n}, d B _ {s}).
$$

Hence

$$
E [ (K _ {T} ^ {n} - K _ {t} ^ {n}) ^ {2} ] \leq c \bigg \{E (| Y _ {t} ^ {n} | ^ {2}) + E (\xi^ {2}) + 1 + \int_ {t} ^ {T} (| Y _ {s} ^ {n} | ^ {2} + | Z _ {s} ^ {n} | ^ {2}) d s \bigg \}.
$$

Choosing $\alpha = (1 / 3c)$ , we have

$$
\frac {2}{3} E (| Y _ {t} ^ {n} | ^ {2}) + \frac {1}{3} E \int_ {t} ^ {T} | Z _ {s} ^ {n} | ^ {2} d s \leq c \bigg (1 + E \int_ {t} ^ {T} | Y _ {s} ^ {n} | ^ {2} d s \bigg).
$$

It then follows from Gronwall's lemma that

$$
\sup _ {0 \leq t \leq T} E (| Y _ {t} ^ {n} | ^ {2}) + E \int_ {0} ^ {T} | Z _ {t} ^ {n} | ^ {2} d t + E [ (K _ {T} ^ {n}) ^ {2} ] \leq c, \qquad n \in \mathbb {N}.
$$

Using again equation (15) and the Burkholder–Davis–Gundy inequality, we deduce that

$$
E \bigg (\sup _ {0 \leq t \leq T} | Y _ {t} ^ {n} | ^ {2} + \int_ {0} ^ {T} \dot {| Z _ {t} ^ {n} | ^ {2}} d t + (K _ {T} ^ {n}) ^ {2} \bigg) \leq c, \qquad n \in \mathbb {N}.\tag{16}
$$

Note that if we define

$$
f _ {n} (t, y, z) = f (t, y, z) + n (y - S _ {t}) ^ {-},
$$

$$
f _ {n} (t, y, z) \leq f _ {n + 1} (t, y, z),
$$

and it follows from the comparison Theorem 4.1 (in fact its version for nonreflected BSDE's, from [19] or [13], is sufficient for our purpose) that $Y_{t}^{n} \leq Y_{t}^{n+1}$ , $0 \leq t \leq T$ , a.s. Hence

$$
Y _ {t} ^ {n} \uparrow Y _ {t}, \qquad 0 \leq t \leq T \quad \mathrm{a.s.}
$$

and from (16) and Fatou's lemma,

$$
E \Big (\sup _ {0 \leq t \leq T} Y _ {t} ^ {2} \Big) \leq c.
$$

It then follows by dominated convergence that

$$
E \int_ {0} ^ {T} (Y _ {t} - Y _ {t} ^ {n}) ^ {2} d t \rightarrow 0 \quad \mathrm{as} n \rightarrow \infty .\tag{17}
$$

Now it follows from Itô's formula that

$$
\begin{array}{r l} & E (| Y _ {t} ^ {n} - Y _ {t} ^ {p} | ^ {2}) + E \int_ {t} ^ {T} | Z _ {s} ^ {n} - Z _ {s} ^ {p} | ^ {2} d s \\ & \qquad = 2 E \int_ {t} ^ {T} [ f (Y _ {s} ^ {n}, Z _ {s} ^ {n}) - f (Y _ {s} ^ {p}, Z _ {s} ^ {p}) ] (Y _ {s} ^ {n} - Y _ {s} ^ {p}) d s \\ & \qquad + 2 E \int_ {t} ^ {T} (Y _ {s} ^ {n} - Y _ {s} ^ {p}) d (K _ {s} ^ {n} - K _ {s} ^ {p}) \\ & \qquad \leq 2 K E \int_ {t} ^ {T} (| Y _ {s} ^ {n} - Y _ {s} ^ {p} | ^ {2} + | Y _ {s} ^ {n} - Y _ {s} ^ {p} | \times | Z _ {s} ^ {n} - Z _ {s} ^ {p} |) d s \\ & \qquad + 2 E \int_ {t} ^ {T} (Y _ {s} ^ {n} - S _ {s}) ^ {-} d K _ {s} ^ {p} + 2 E \int_ {t} ^ {T} (Y _ {s} ^ {p} - S _ {s}) ^ {-} d K _ {s} ^ {n} \end{array}
$$

from which one deduces the existence of a constant c such that

$$
\begin{array}{r} E \int_ {t} ^ {T} | Z _ {s} ^ {n} - Z _ {s} ^ {p} | ^ {2} d s \leq c E \int_ {t} ^ {T} | Y _ {s} ^ {n} - Y _ {s} ^ {p} | ^ {2} d s + 4 E \int_ {t} ^ {T} (Y _ {s} ^ {n} - S _ {s}) ^ {-} d K _ {s} ^ {p} \\ + 4 E \int_ {t} ^ {T} (Y _ {s} ^ {p} - S _ {s}) ^ {-} d K _ {s} ^ {n} \end{array}\tag{18}
$$

Let us admit for a moment the following lemma.

LEMMA 6.1.

$$
E \Big (\sup _ {0 \leq t \leq T} | (Y _ {t} ^ {n} - S _ {t}) ^ {-} | ^ {2} \Big) \to 0 \quad a s n \to \infty .
$$

We can now conclude. Indeed, (16) and Lemma 6.1 imply that

$$
E \int_ {0} ^ {T} (Y _ {t} ^ {n} - S _ {t}) ^ {-} d K _ {t} ^ {p} + E \int_ {t} ^ {T} (Y _ {t} ^ {p} - S _ {t}) ^ {-} d K _ {t} ^ {n} \rightarrow 0 \quad \mathrm{as} n, p \rightarrow \infty ,
$$

hence from (17) and (18):

$$
E \int_ {0} ^ {T} (| Y _ {t} ^ {n} - Y _ {t} ^ {p} | ^ {2} + | Z _ {t} ^ {n} - Z _ {t} ^ {p} | ^ {2}) d t \rightarrow 0 \quad \mathrm{as} n, p \rightarrow \infty .
$$

Moreover,

$$
\begin{array}{r l} & {| Y _ {t} ^ {n} - Y _ {t} ^ {p} | ^ {2} + \int_ {t} ^ {T} | Z _ {s} ^ {n} - Z _ {s} ^ {p} | ^ {2} d s} \\ & {\qquad = 2 \int_ {t} ^ {T} [ f (Y _ {s} ^ {n}, Z _ {s} ^ {n}) - f (Y _ {s} ^ {p}, Z _ {s} ^ {p}) ] (Y _ {s} ^ {n} - Y _ {s} ^ {p}) d s} \\ & {\qquad + 2 \int_ {t} ^ {T} (Y _ {s} ^ {n} - Y _ {s} ^ {p}) d (K _ {s} ^ {n} - K _ {s} ^ {p})} \\ & {\qquad - 2 \int_ {t} ^ {T} (Y _ {s} ^ {n} - Y _ {s} ^ {p}) (Z _ {s} ^ {n} - Z _ {s} ^ {p}) d B _ {s},} \end{array}
$$

and

$$
\begin{array}{r l} \sup _ {0 \leq t \leq T} | Y _ {t} ^ {n} - Y _ {t} ^ {p} | ^ {2} & \leq 2 \int_ {t} ^ {T} | f (Y _ {s} ^ {n}, Z _ {s} ^ {n}) - f (Y _ {s} ^ {p}, Z _ {s} ^ {p}) | \times | Y _ {s} ^ {n} - Y _ {s} ^ {p} | d s \\ & + 2 \int_ {0} ^ {T} (Y _ {s} ^ {n} - S _ {s}) ^ {-} d K _ {s} ^ {p} + 2 \int_ {0} ^ {T} (Y _ {s} ^ {p} - S _ {s}) ^ {-} d K _ {s} ^ {n} \\ & + 2 \sup _ {0 \leq t \leq T} \left| \int_ {t} ^ {T} (Y _ {s} ^ {n} - Y _ {s} ^ {p}) (Z _ {s} ^ {n} - Z _ {s} ^ {p}) d B _ {s} \right|, \end{array}
$$

and from the Burkholder–Davis–Gundy inequality,

$$
\begin{array}{r l} & E \Big (\underset {0 \leq t \leq T} {\sup} | Y _ {t} ^ {n} - Y _ {t} ^ {p} | ^ {2} \Big) \leq c E \int_ {0} ^ {T} \big (| Y _ {t} ^ {n} - Y _ {t} ^ {p} | ^ {2} + | Z _ {t} ^ {n} - Z _ {t} ^ {p} | ^ {2} \big) d s \\ & \qquad + 2 E \int_ {0} ^ {T} (Y _ {t} ^ {n} - S _ {t}) ^ {-} d K _ {t} ^ {p} + 2 E \int_ {0} ^ {T} (Y _ {t} ^ {p} - S _ {t}) ^ {-} d K _ {t} ^ {n} \\ & \qquad + \frac 12 E \Big (\underset {0 \leq t \leq T} {\sup} | Y _ {t} ^ {n} - Y _ {t} ^ {p} | ^ {2} \Big) + c E \int_ {0} ^ {T} | Z _ {t} ^ {n} - Z _ {t} ^ {p} | ^ {2} d s. \end{array}
$$

Hence $E(\sup_t |Y_t^n - Y_t^p|^2) \to 0$ , as $n$ and $p \to \infty$ , and consequently from (15),

$$
E \Big (\sup _ {0 \leq t \leq T} | K _ {t} ^ {n} - K _ {t} ^ {p} | ^ {2} \Big) \to 0 \quad \mathrm{as} n, p \to \infty .\tag{19}
$$

Consequently there exists a pair $(Z, K)$ of progressively measurable processes with values in $\mathbb{R}^d \times \mathbb{R}$ such that

$$
E \left(\int_ {0} ^ {T} | Z _ {t} - Z _ {t} ^ {n} | ^ {2} d t + \sup _ {0 \leq t \leq T} | K _ {t} - K _ {t} ^ {n} | ^ {2}\right)\rightarrow 0,
$$

as $n \to \infty$ , and (v) and (vi) are satisfied by the triple $(Y, Z, K)$ ; (vii) follows from Lemma 6.1. It remains to check (viii).

Clearly, $\{K_{t}\}$ is increasing. Moreover, we have just seen that $(Y^{n}, K^{n})$ tends to $(Y, K)$ uniformly in t in probability. Then the measure $dK^{n}$ tends to dK weakly in probability,

$$
\int_ {0} ^ {T} (Y _ {t} ^ {n} - S _ {t}) d K _ {t} ^ {n} \rightarrow \int_ {0} ^ {T} (Y _ {t} - S _ {t}) d K _ {t}
$$

in probability, as $n \to \infty$ . We deduce from the same argument and Lemma 6.1 that

$$
\int_ {0} ^ {T} (Y _ {t} - S _ {t}) d K _ {t} \geq 0.
$$

On the other hand,

$$
\int_ {0} ^ {T} (Y _ {t} ^ {n} - S _ {t}) d K _ {t} ^ {n} \leq 0, \qquad n \in \mathbb {N}.
$$

Hence

$$
\int_ {0} ^ {T} (Y _ {t} - S _ {t}) d K _ {t} = 0 \quad \mathrm{a.s.}
$$

and we have proved that $(Y, Z, K)$ solves the RBSDE. We finally turn to the proof.

PROOF OF LEMMA 6.1. Since $Y_{t}^{n} \geq Y_{t}^{0}$ , we can w.l.o.g. replace $S_{t}$ by $S_{t} \vee Y_{t}^{0}$ ; that is, we may assume that $E(\sup_{0 \leq t \leq T} S_{t}^{2}) < \infty$ . We first want to compare a.s. $Y_{t}$ and $S_{t}$ for all $t \in [0, T]$ , while we do not know yet that $Y$ is a.s. continuous. From the comparison theorem for BSDE's, we have that a.s. $Y_{t}^{n} \geq \widetilde{Y}_{t}^{n}$ , $0 \leq t \leq T$ , $n \in \mathbb{N}$ , where $\{(\widetilde{Y}_{t}^{n}, \widetilde{Z}_{t}^{n}); 0 \leq t \leq T\}$ is the unique solution of the BSDE

$$
\widetilde {Y} _ {t} ^ {n} = \xi + \int_ {t} ^ {T} f (Y _ {s} ^ {n}, Z _ {s} ^ {n}) d s + n \int_ {t} ^ {T} (S _ {s} - \widetilde {Y} _ {s} ^ {n}) d s - \int_ {t} ^ {T} \widetilde {Z} _ {s} ^ {n} d B _ {s}.
$$

Let $v$ be a stopping time such that $0 \leq v \leq T$ . Then

$$
\widetilde {Y} _ {v} ^ {n} = E ^ {\mathcal {F} _ {v}} \bigg [ e ^ {- n (T - v)} \xi + \int_ {v} ^ {T} e ^ {- n (s - v)} f (Y _ {s} ^ {n}, Z _ {s} ^ {n}) d s + n \int_ {v} ^ {T} e ^ {- n (s - v)} S _ {s} d s \bigg ].
$$

It is easily seen that

$$
e ^ {- n (T - v)} \xi + n \int_ {v} ^ {T} e ^ {- n (s - v)} S _ {s} d s \rightarrow \xi {\bf 1} _ {\{v = T \}} + S _ {v} {\bf 1} _ {\{v <   T \}}
$$

a.s. and in $L^2(\Omega)$ , and the conditional expectation converges also in $L^2(\Omega)$ . Moreover,

$$
\left| \int_ {v} ^ {T} e ^ {- n (s - v)} f \left(Y _ {s} ^ {n}, Z _ {s} ^ {n}\right) d s \right| \leq \frac {1}{\sqrt {2 n}} \left(\int_ {0} ^ {T} f ^ {2} \left(Y _ {s} ^ {n}, Z _ {s} ^ {n}\right) d s\right) ^ {1 / 2},
$$

hence $E^{\mathcal{F}_v}\int_v^T e^{-n(s - v)}\underset {\sim}{f}(Y_s^n,Z_s^n)ds\to 0$ in $L^2 (\Omega)$ , as $n\rightarrow \infty$ .

Consequently $\tilde{Y}_{v}^{n}\to\xi1_{\{v=T\}}+S_{v}1_{\{v<T\}}$ in mean square, and $Y_{v}\geq S_{v}$ a.s. From this and the section theorem in Dellacherie and Meyer [7], page 220, it follows that a.s.

$$
Y _ {t} \geq S _ {t}, \quad 0 \leq t \leq T.
$$

Hence $(Y_{t}^{n} - S_{t})^{-}\downarrow 0,0\leq t\leq T$ , a.s., and from Dini's theorem the convergence is uniform in $t$ . The result finally follows by dominated convergence, since $(Y_{t}^{n} - S_{t})^{-}\leq (S_{t} - Y_{t}^{0})^{+}\leq |S_{t}| + |Y_{t}^{0}|$ □

7. Reflected backward stochastic differential equation and optimal stopping time-control problems. It is clear from Proposition 5.1 that in the case where $f$ is a given stochastic process, the solution $\{Y_t; 0 \leq t \leq T\}$ of the RBSDE (which we called BRP in that particular case) is the value function of an optimal stopping time problem. We shall now see how this fact can be generalized, first to the case where $f(t, y, z)$ is a linear function of $(y, z)$ , and second to the case where $f$ is a concave (or convex) function of $(y, z)$ . In the latter case, $\{Y_t, 0 \leq t \leq T\}$ will be the value function of a mixture of an optimal stopping time problem and a "classical" optimal stochastic control problem. We shall interpret those results in the "Markovian case." Note that in that case we shall make explicit the corresponding Hamilton-Jacobi-Bellman equation in the next section. We start with a proposition.

PROPOSITION 7.1. Suppose that $f$ is affine in $y, z$ ; that is, it takes the form

$$
f (t, y, z) = \delta_ {t} + \beta_ {t} y + \langle \gamma_ {t}, z \rangle ,
$$

where $\{\delta_t, \beta_t, \gamma_t; 0 \leq t \leq T\}$ are progressively measurable processes with values in $\mathbb{R} \times \mathbb{R} \times \mathbb{R}^d$ , such that $E \int_{O}^{T} \delta_t^2 dt < \infty$ , $|\beta_t| + |\gamma_t| \leq C$ a.s., $0 \leq t \leq T$ . Let $\{\Gamma_t; 0 \leq t \leq T\}$ denote the $\mathbb{R}$ -valued solution of the linear SDE

$$
d \Gamma_ {t} = \Gamma_ {t} [ \beta_ {t} d t + (\gamma_ {t}, d B _ {t}) ],
$$

$$
\Gamma_ {0} = 1.
$$

Then the unique solution $\{Y_t, Z_t, K_t; 0 \leq t \leq T\}$ of the BSDE with coefficient $f$ satisfies, for each $0 \leq t \leq T$ ,

$$
\Gamma_ {t} Y _ {t} = \operatorname{ess} \sup _ {v \in \mathcal {T} _ {t}} E \bigg [ \Gamma_ {v} \xi {\bf 1} _ {\{v = T \}} + \Gamma_ {v} S _ {v} {\bf 1} _ {\{v <   T \}} + \int_ {t} ^ {u} \Gamma_ {s} \delta_ {s} d s | \mathcal {F} _ {t} \bigg ].
$$

PROOF. It follows from Itô's formula that

$$
Y _ {t} \Gamma_ {t} = \xi \Gamma_ {T} + \int_ {t} ^ {T} \Gamma_ {s} \delta_ {s} d s + \int_ {t} ^ {T} \Gamma_ {s} d K _ {s} - \int_ {t} ^ {T} \Gamma_ {s} (Z _ {s} + Y _ {s} \gamma_ {s}, d B _ {s}).
$$

Let $(Y_t', Z_t', K_t') = (Y_t\Gamma_t, \Gamma_t(Z_t + Y_t\gamma_t), \int_0^t \Gamma_s dK_s)$ , $0 \leq t \leq T$ . This triplet solves the BRP with final condition $\xi\Gamma_T$ and coefficient $\{\Gamma_t\delta_t, 0 \leq t \leq T\}$ , without condition (v).

Also we only have that

$$
E \bigg [ (\xi \Gamma_ {T}) ^ {2 - \varepsilon} + \int_ {0} ^ {T} (\delta_ {t} \Gamma_ {t}) ^ {2 - \varepsilon} d t \bigg ] <   \infty
$$

for each $\varepsilon > 0$ , and not for $\varepsilon = 0$ ; the argument leading to (2) in Proposition 2.3 is still valid here. Hence

$$
Y _ {t} \Gamma_ {t} = \operatorname{ess} \sup _ {v \in \mathcal {T} _ {t}} E \biggl [ \Gamma_ {T} \xi {\bf 1} _ {\{v = T \}} + \Gamma_ {v} S _ {v} {\bf 1} _ {\{v <   T \}} + \int_ {t} ^ {v} \Gamma_ {s} \delta_ {s} d s | \mathcal {F} _ {t} \biggr ]
$$

from which the result follows. □

We now suppose that for each fixed $(\omega, t)$ , $f(t, y, z)$ is a concave function of $(y, z) \in \mathbb{R} \times \mathbb{R}^{d}$ . We define the conjugate function $F(t, \beta, \gamma)$ as follows. For each $(\omega, t, \beta, \gamma) \in \Omega \times [0, T] \times \mathbb{R} \times \mathbb{R}^{d}$ ,

$$
F (\omega , t, \beta , \gamma) = \sup _ {(y, z)} [ f (\omega , t, y, z) - \beta y - \langle \gamma , z \rangle ],
$$

$$
D _ {t} ^ {F} (\omega) = \{(\beta , \gamma) \in \mathbb {R} \times \mathbb {R} ^ {d}; F (\omega , t, \beta , \gamma) <   \infty \}.
$$

It follows from well-known results (see, e.g., [13]) that

$$
f (t, y, z) = \inf _ {(\beta , \gamma) \in D _ {t} ^ {F}} \{F (t, \beta , \gamma) + \beta y + \langle \gamma , z \rangle \},
$$

the infimum is achieved, and the set $D_{t}^{F}$ is a.s. bounded.

Let us now denote by $\mathcal{A}$ the set of bounded progressively measurable $\mathbb{R} \times \mathbb{R}^d$ -valued processes $\{(\beta_t, \gamma_t); 0 \leq t \leq T\}$ which are such that

$$
E \int_ {0} ^ {T} F (t, \beta_ {t}, \gamma_ {t}) ^ {2} d t <   \infty .
$$

To each $(\beta, \gamma) \in \mathcal{A}$ we associate the unique solution $\{(Y_t^{\beta,\gamma}, Z_t^{\beta,\gamma}, K_t^{\beta,\gamma}); 0 \leq t \leq T\}$ of the RBSDE with the affine coefficient $f^{\beta,\gamma}(t, y, z) = F(t, \beta_t, \gamma_t) + \beta_t y + \langle \gamma_t, z \rangle$ . We shall denote $\{(Y_t, Z_t, K_t); 0 \leq t \leq T\}$ the unique solution of the RBSDE with coefficient $f(t, y, z)$ . It follows from a section theorem in [7], page 220, that there exists $(\beta^*, \gamma^*) \in \mathcal{A}$ such that

$$
f (t, Y _ {t}, Z _ {t}) = F (t, \beta_ {t} ^ {*}, \gamma_ {t} ^ {*}) + \beta_ {t} ^ {*} Y _ {t} + \langle \gamma_ {t} ^ {*}, Z _ {t} \rangle d t \times d P \quad \text { a.e. }
$$

Hence

$$
\left(Y _ {t}, Z _ {t}, K _ {t}\right) = \left(Y _ {t} ^ {\beta^ {*}, \gamma^ {*}}, Z _ {t} ^ {\beta^ {*}, \gamma^ {*}}, K _ {t} ^ {\beta^ {*}, \gamma^ {*}}\right), \quad 0 \leq t \leq T \quad \text {a.s.}
$$

We can now deduce an interpretation of $Y_{t}^{\beta,\gamma}$ and $Y_{t}=Y_{t}^{\beta^{*},\gamma^{*}}$ as value functions of optimization problems.

THEOREM 7.2. For each $(\beta, \gamma) \in \mathcal{A}$ ,

$$
Y _ {t} ^ {\beta , \gamma} = \operatorname{ess} \sup _ {v \in \mathcal {T} _ {t}} E [ \Phi (t, v, \beta , \gamma) | \mathcal {F} _ {t} ],
$$

where

$$
\Phi (t, v, \beta , \gamma) = \Gamma_ {t, v} ^ {\beta , \gamma} [ S _ {v} \mathbf {1} _ {\{v <   T \}} + \xi \mathbf {1} _ {\{v = T \}} ] + \int_ {t} ^ {v} \Gamma_ {t, s} ^ {\beta , \gamma} F (s, \beta_ {s}, \gamma_ {s}) d s
$$

and for each $0 \leq t \leq T$ , $\{\Gamma_{t,s}^{\beta,\gamma}; t \leq s \leq T\}$ is the unique solution of the linear SDE

$$
d \Gamma_ {t, s} = \Gamma_ {t, s} (\beta_ {s} d s + (\gamma_ {s}, d B _ {s})), \quad \Gamma_ {t, t} = 1.
$$

Moreover,

$$
\begin{array}{l} Y _ {t} = \operatorname * {e s s} \inf _ {(\beta ,   \gamma) \in \mathcal {A}} Y _ {t} ^ {\beta ,   \gamma} \\ \qquad = \operatorname * {e s s} \inf _ {(\beta ,   \gamma) \in \mathcal {A}} \operatorname * {e s s} \sup _ {v \in \mathcal {T} _ {t}} E [ \Phi (t, v, \beta , \gamma) | \mathcal {F} _ {t} ] \\ \qquad = \operatorname * {e s s} \sup _ {v \in \mathcal {T} _ {t}} \operatorname * {e s s} \inf _ {(\beta ,   \gamma) \in \mathcal {A}} E [ \Phi (t, v, \beta , \gamma) | \mathcal {F} _ {t} ]. \end{array}
$$

In other words, $Y_{t}$ is the value function of a minimax control problem, and the triple $(\beta^{*}, \gamma^{*}, D_{t})$ , where $D_{t} = \inf\{t \leq s \leq T; Y_{s} = S_{s}\}$ is optimal.

PROOF. The first part of the statement follows from Proposition 7.1. Moreover, from the comparison Theorem 4.1,

$$
Y _ {t} \leq Y _ {t} ^ {\beta , \gamma} \quad \forall (\beta , \gamma) \in \mathcal {A}.
$$

On the other hand,

$$
\begin{array}{r l} & Y _ {t} = Y _ {t} ^ {\beta^ {*}, \gamma^ {*}} \\ & \qquad \geq \inf _ {(\beta , \gamma) \in \mathcal {A}} Y _ {t} ^ {\beta , \gamma}, \end{array}
$$

and consequently

$$
Y _ {t} = \operatorname{ess} \inf _ {(\beta , \gamma) \in \mathcal {A}} \operatorname{ess} \sup _ {v \in \mathcal {T} _ {t}} E [ \Phi (t, v, \beta , \gamma) | \mathcal {F} _ {t} ],
$$

and the fact that $D_{t}$ is optimal follows from an argument given in the proof of Proposition 5.1. We finally prove that ess inf and ess sup can be interchanged. We certainly have

$$
\begin{array}{l} Y _ {t} = \operatorname * {e s s} \inf _ {(\beta ,   \gamma) \in \mathcal {A}} \operatorname * {e s s} \sup _ {v \in \mathcal {T} _ {t}} E [ \Phi (t, v, \beta , \gamma) | \mathcal {F} _ {t} ] \\ \qquad \qquad \qquad \qquad \qquad \qquad \geq \operatorname * {e s s} \sup _ {v \in \mathcal {T} _ {t}} \operatorname * {e s s} \inf _ {(\beta ,   \gamma) \in \mathcal {A}} E [ \Phi (t, v, \beta , \gamma) | \mathcal {F} _ {t} ]. \end{array}
$$

On the other hand,

$$
\begin{array}{r l} & Y _ {t} = \operatorname * {e s s} \inf _ {(\beta , \gamma) \in \mathcal {A}} E [ \Phi (t, D _ {t} ^ {\beta , \gamma}, \beta , \gamma) | \mathcal {F} _ {t} ] \\ & \qquad \leq \operatorname * {e s s} \sup _ {v \in \mathcal {T} _ {t}} \operatorname * {e s s} \inf _ {(\beta , \gamma) \in \mathcal {A}} E [ \Phi (t, v, \beta , \gamma) | \mathcal {F} _ {t} ], \end{array}
$$

where $D_t^{\beta, \gamma} = \inf \{t \leq s \leq T; Y_s^{\beta, \gamma} = S_s\}$ .

We finally note that one has a similar representation of $Y_{t}$ in case f is a convex function of $(y,z)$ , with $\operatorname{ess}\inf_{(\beta,\gamma)}\operatorname{ess}\sup_{v}[\cdot]$ replaced by $\operatorname{ess}\sup_{(\beta,\gamma)}\operatorname{ess}\sup_{v}[\cdot]$ .

8. Relation between a RBSDE and an obstacle problem for a nonlinear parabolic PDE. In this section, we will show that the reflected BSDE studied in the previous sections allows us to give a probabilistic representation of solutions of some obstacle problems for PDE's. For that purpose, we will put the RBSDE in a Markovian framework.

Let $b\colon [0,T]\times \mathbb{R}^d\to \mathbb{R}^d$ and $\sigma = [0,T]\times \mathbb{R}^d\to \mathbb{R}^{d\times d}$ be continuous mappings, which are Lipschitz with respect to their second variable, uniformly with respect to $t\in [0,T]$ . For each $(t,x)\in [0,T]\times \mathbb{R}^d$ , let $\{X_s^{t,x};  t\leq s\leq T\}$ be the unique $\mathbb{R}^d$ -valued solution of the SDE:

$$
X _ {s} ^ {t, x} = x + \int_ {t} ^ {s} b (r, X _ {r} ^ {t, x}) d r + \int_ {t} ^ {s} \sigma (r, X _ {r} ^ {t, x}) d B _ {r}.
$$

We suppose now that the data $(\xi, f, S)$ of the RBSDE take the following form:

$$
\begin{array}{c} {\xi = g (X _ {T} ^ {t, x}),} \\ {f (s, y, z) = f (s, X _ {s} ^ {t, x}, y, z),} \\ {S _ {s} = h (s, X _ {s} ^ {t, x}),} \end{array}
$$

where $g, f$ and $h$ are as follows. First, $g \in C(\mathbb{R}^d)$ and has at most polynomial growth at infinity. Second,

$$
f \colon [ 0, T ] \times \mathbb {R} ^ {d} \times \mathbb {R} \times \mathbb {R} ^ {d} \to \mathbb {R}
$$

is jointly continuous and for some $K > 0$ , $p \in \mathbb{N}$ , satisfies

(20)

$$
| f (t, x, 0, 0) | \leq K (1 + | x | ^ {p}),\tag{21}
$$

$$
\left| f (t, x, y, z) - f \left(t, x, y ^ {\prime}, z ^ {\prime}\right) \right| \leq K \left(\left| y - y ^ {\prime} \right| + \left| z - z ^ {\prime} \right|\right),
$$

for $t\in [0,T]$ , $x,z,z^{\prime}\in \mathbb{R}^{d}$ , $y,y^{\prime}\in \mathbb{R}$ . Finally,

$$
h \colon [ 0, T ] \times \mathbb {R} ^ {d} \to \mathbb {R}
$$

is jointly continuous in $t$ and $x$ and satisfies

$$
h (t, x) \leq K (1 + | x | ^ {p}), \quad t \in [ 0, T ], x \in \mathbb {R} ^ {d}.\tag{22}
$$

We assume moreover that $h(T, x) \leq g(x)$ , $x \in \mathbb{R}^d$ .

For each t > 0, we denote by $\{F_{s}^{t}, t \leq s \leq T\}$ the natural filtration of the Brownian motion $\{B_{s} - B_{t}, t \leq s \leq T\}$ , argumented by the P-null sets of F. It follows from the results of the above sections that for each $(t, x)$ , there exists a unique triple $(Y^{t,x}, Z^{t,x}, K^{t,x})$ of $\{F_{s}^{t}\}$ progressively measurable processes, which solves the following RBSDE:

$$
\mathrm{(i)} E \int_ {t} ^ {T} (| Y _ {s} ^ {t, x} | ^ {2} + | Z _ {s} ^ {t, x} | ^ {2}) d s <   \infty ;\tag{ii}
$$

$$
\begin{array}{r l} & Y _ {s} ^ {t, x} = g (X _ {T} ^ {t, x}) + \int_ {s} ^ {T} f (r, X _ {r} ^ {t, x}, Y _ {r} ^ {t, x}, Z _ {r} ^ {t, x}) d r + K _ {T} ^ {t, x} - K _ {s} ^ {t, x} \\ & \qquad - \int_ {s} ^ {T} (Z _ {r} ^ {t, x}, d B _ {r}), \qquad t \leq s \leq T; \end{array}\tag{23}
$$

$$
Y _ {s} ^ {t, x} \geq h (s, X _ {s} ^ {t, x}), \quad t <   s \leq T;
$$

(iv) $\{K_s^{t,x}\}$ is increasing and continuous, and

$$
\int_ {t} ^ {T} (Y _ {s} ^ {t, x} - h (s, X _ {s} ^ {t, x})) d K _ {s} ^ {t, x} = 0.
$$

We now consider the related obstacle problem for a parabolic PDE. Roughly speaking, a solution of the obstacle problem is a function $u\colon[0,T]\times\mathbb{R}^{d}\to\mathbb{R}$ which satisfies:

$$
\begin{array}{l} \min \bigg (u (t, x) - h (t, x), \\ \qquad - \frac {\partial u}{\partial t} (t, x) - L _ {t} u (\dot {t}, x) - f (t, x, u (t, x), (\nabla u \sigma) (t, x)) \bigg) = 0, \end{array}\tag{24}
$$

$$
(t, x) \in (0, T) \times \mathbb {R} ^ {d},
$$

$$
u (T, x) = g (x), \qquad x \in \mathbb {R} ^ {d},
$$

where

$$
L _ {t} = \frac {1}{2} \sum_ {i, j = 1} ^ {d} (\sigma \sigma^ {*} (t, x)) _ {i, j} \frac {\partial^ {2}}{\partial x _ {i} \partial x _ {j}} + \sum_ {i = 1} ^ {d} b _ {i} (t, x) \frac {\partial}{\partial x _ {i}}.
$$

More precisely, we shall consider solutions of (24) in the viscosity sense. It will be convenient for the sequel to define the notion of viscosity solution in the language of sub- and super-jets; see [4]. Below, $S(d)$ will denote the set of $d \times d$ symmetric nonnegative matrices.

DEFINITION 8.1. Let $u \in C((0, T) \times \mathbb{R}^d)$ and $(t, x) \in (0, T) \times \mathbb{R}^d$ . We denote by $\mathcal{P}^{2, +}u(t, x)$ [the "parabolic superjet" of $u$ at $(t, x)$ ] the set of triples $(p, q, X) \in \mathbb{R} \times \mathbb{R}^d \times S(d)$ which are such that

$$
\begin{array}{r l} & u (s, y) \leq u (t, x) + p (s - t) + \langle q, y - x \rangle \\ & \qquad + \frac {1}{2} \langle X (y - x), y - x \rangle + o (| s - t | + | y - x | ^ {2}). \end{array}
$$

Similarly, we denote by $\mathcal{P}^{2,-}u(t,x)$ [the "parabolic subjet" of $u$ at $(t,x)]$ the set of triples $(p,q,X)\in\mathbb{R}\times\mathbb{R}^{d}\times S(d)$ which are such that

$$
\begin{array}{l} u (s, y) \geq u (t, x) + p (s - t) + \langle q, y - x \rangle \\ \qquad + \frac {1}{2} \langle X (y - x), y - x \rangle + o (| s - t | + | y - x | ^ {2}). \end{array}
$$

EXAMPLE 8.2. Suppose that $\varphi \in C^{1,2}((0,T) \times \mathbb{R}^d)$ . If $u - \varphi$ has a local maximum at $(t,x)$ , then

$$
\left(\frac {\partial \varphi}{\partial t} (t, x), \nabla_ {x} \varphi (t, x), \partial_ {x} ^ {2} \varphi (t, x)\right) \in \mathscr {P} ^ {2, +} u (t, x).
$$

If $u - \varphi$ has a local minimum at $(t, x)$ , then

$$
\left(\frac {\partial \varphi}{\partial t} (t, x), \nabla_ {x} \varphi (t, x), \partial_ {x} ^ {2} \varphi (t, x)\right) \in \mathcal {P} ^ {2, -} u (t, x).
$$

We can now give the definition of a viscosity solution of the parabolic obstacle problem (24).

DEFINITION 8.3. (a) It can be said that $u \in C([0, T] \times \mathbb{R}^d)$ is a viscosity subsolution of (24) if $u(T, x) \leq g(x), x \in \mathbb{R}^d$ , and at any point $(t, x) \in (0, T) \times \mathbb{R}^d$ , for any $(p, q, X) \in \mathcal{P}^{2, +}u(t, x)$ ,

$$
\min \left(u (t, x) - h (t, x), - p - \frac {1}{2} T r (a X) - (b, q) - f (t, x, u (t, x), q \sigma (t, x))\right) \leq 0.
$$

In other words at any point $(t, x)$ where $u(t, x) > h(t, x)$ ,

$$
- p - \frac {1}{2} T r (a X) - (b, q) - f (t, x, u (t, x), q \sigma (t, x)) \leq 0.
$$

(b) It can be said that $u \in C([0, T] \times \mathbb{R}^d)$ is a viscosity supersolution of (24) if $u(T, x) \geq g(x), x \in \mathbb{R}^d$ , and at any point $(t, x) \in (0, T) \times \mathbb{R}^d$ , for any $(p, q, X) \in \mathcal{P}^{2, -}u(t, x)$ ,

$$
\min \left(u (t, x) - h (t, x), - p - \frac {1}{2} T r (a X) - (b, q) - f (t, x, u (t, x), q \sigma (t, x))\right) \geq 0.
$$

In the other words, at each point, we have both $u(t,x) \geq h(t,x)$ and

$$
- p - \frac {1}{2} T r (a X) - (b, q) - f (t, x, u (t, x), q \sigma (t, x)) \geq 0.
$$

(c) $u \in C([0, T] \times \mathbb{R}^d)$ is said to be a viscosity solution of (24) if it is both a viscosity sub- and supersolution.

We now define

$$
u (t, x) \triangleq Y _ {t} ^ {t, x}, \qquad (t, x) \in [ 0, T ] \times \mathbb {R} ^ {d},\tag{25}
$$

which is a deterministic quantity.

LEMMA 8.4. $u \in C([0, T] \times \mathbb{R}^d)$ .

PROOF. We define $Y_{s}^{t,x}$ for all $s \in [0, T]$ by choosing $Y_{s}^{t,x} = Y_{t}^{t,x}$ for $0 \leq s \leq t$ . It suffices to show that whenever $(t_n, x_n) \to (t, x)$ ,

$$
E \Big (\sup _ {0 \leq s \leq T} | Y _ {s} ^ {t _ {n}, x _ {n}} - Y _ {s} ^ {t, x} | ^ {2} \Big) \to 0.\tag{26}
$$

Indeed, this will show that

$$
(s, t, x) \rightarrow Y _ {s} ^ {t, x}
$$

is mean-square continuous, and so is

$$
(t, x) \rightarrow Y _ {t} ^ {t, x}.
$$

But $Y_{t}^{t,x}$ is deterministic, since it is $\mathcal{F}_t^t$ measurable.

Now (26) is a consequence of Proposition 3.6 and the following convergences as $n \to \infty$ :

$$
\begin{array}{c} E | g (X _ {T} ^ {t, x}) - g (X _ {T} ^ {t _ {n}, x _ {n}}) | ^ {2} \to 0 \\ E \Big (\sup _ {0 \leq s \leq T} | h (s, X _ {s} ^ {t, x}) - h (s, X _ {s} ^ {t _ {n}, x _ {n}}) | ^ {2} \Big) \to 0 \\ E \int_ {0} ^ {T} | {\bf 1} _ {[ t, T ]} (s) f (s, X _ {s} ^ {t, x}, Y _ {s} ^ {t, x}, Z _ {s} ^ {t, x}) \\ - {\bf 1} _ {[ t _ {n}, T ]} (s) f (s, X _ {s} ^ {t _ {n}, x _ {n}}, Y _ {s} ^ {t, x}, Z _ {s} ^ {t, x}) | ^ {2} d s \to 0, \end{array}
$$

which follow from the continuity assumptions, (20), (21), (22) and the polynomial growth of f, g and h.

THEOREM 8.5. Defined by (25), u is a viscosity solution of the obstacle problem (24).

PROOF. We are going to use the approximation of the RBSDE (23) by penalization, which was studied in Section 6. For each $(t,x)\in [0,T]\times \mathbb{R}^d$ , $n\in \mathbb{N}^*$ , let $\{(^{n}Y_{s}^{t,x},{}^{n}Z_{s}^{t,x}), t\leq s\leq T\}$ denote the solution of the BSDE

$$
\begin{array}{r l} ^ {n} Y _ {s} ^ {t, x} = g (X _ {T} ^ {t, x}) + \int_ {s} ^ {T} f (r, X _ {r} ^ {t, x}, ^ {n} Y _ {r} ^ {t, x}, ^ {n} Z _ {r} ^ {t, x}) d r \\ & + n \int_ {s} ^ {T} (^ {n} Y _ {r} ^ {t, x} - h (r, X _ {r} ^ {t, x})) ^ {-} - \int_ {s} ^ {T} (^ {n} Z _ {r} ^ {t, x}, d B _ {r}), \qquad t \leq s \leq T. \end{array}
$$

It is known from [18] that

$$
u _ {n} (t, x) \triangleq {} ^ {n} Y _ {t} ^ {t, x}, \qquad 0 \leq t \leq T, x \in \mathbb {R} ^ {d},
$$

is the viscosity solution of the parabolic PDE

$$
\frac {\partial u _ {n}}{\partial t} (t, x) + L _ {t} u _ {n} (t, x) + f _ {n} (t, x, u _ {n} (t, x), (\nabla u _ {n} \sigma) (t, x)) = 0,
$$

$$
0 \leq t \leq T, x \in \mathbb {R} ^ {d},
$$

$$
u (T, x) = g (x), x \in \mathbb {R} ^ {d},
$$

where $f_{n}(t,x,r,p\sigma(t,x)) = f(t,x,r,p\sigma(t,x)) + n(r - h(t,x))^{-}$ . However, from the results of the previous section, for each $0 \leq t \leq T$ , $x \in R^{d}$ ,

$$
u _ {n} (t, x) \uparrow u (t, x) \quad \text { as } n \rightarrow \infty .
$$

Since $u_{n}$ and $u$ are continuous, it follows from Dini's theorem that the above convergence is uniform on compacts.

We now show that $u$ is a subsolution of (24). Let $(t, x)$ be a point at which $u(t, x) > h(t, x)$ , and let $(p, q, X) \in \mathcal{P}^{2, +}u(t, x)$ .

From Lemma 6.1 in [4], there exists sequences

$$
\begin{array}{c} n _ {j} \to + \infty , \\ (t _ {j}, x _ {j}) \to (t, x), \\ (p _ {j}, q _ {j}, X _ {j}) \in \mathcal {P} ^ {2, +} u _ {n _ {j}} (t _ {j}, x _ {j}), \end{array}
$$

such that

$$
(p _ {j}, q _ {j} X _ {j}) \rightarrow (p, q, X).
$$

But for any $j$ ,

$$
\begin{array}{r l} & - p _ {j} - \frac {1}{2} T r (a X _ {j}) - (b, q _ {j}) - f (t _ {j}, x _ {j}, u _ {n _ {j}} (t _ {j}, x _ {j}), q _ {j} \sigma (t _ {j}, x _ {j})) \\ & \quad - n _ {j} (u _ {n _ {j}} (t _ {j}, x _ {j}) - h (t _ {j}, x _ {j})) ^ {-} \leq 0. \end{array}
$$

From the assumption that $u(t,x) > h(t,x)$ and the uniform convergence of $u_{n}$ , it follows that for j large enough $u_{n_{j}}(t_{j},x_{j}) > h(t_{j},x_{j})$ ; hence, taking the limit as $j \to \infty$ in the above inequality yields:

$$
- p - \frac {1}{2} T r (a X) - (b, q) - f (t, x, u (t, x), q \sigma (t, x)) \leq 0,
$$

and we have proved that u is a subsolution of (24).

We conclude by showing that $u$ is a supersolution of (24). Let $(t, x)$ be an arbitrary point in $[0, T] \times \mathbb{R}^d$ , and $(p, q, X) \in \mathcal{P}^{2, -}u(t, x)$ . We already know that $u(t, x) \geq h(t, x)$ . By the same argument as above, there exist sequences:

$$
\begin{array}{c} n _ {j} \to \infty , \\ (t _ {j}, x _ {j}) \to (t, x), \\ (p _ {j}, q _ {j}, X _ {j}) \in \mathcal {P} ^ {2, -} u _ {n _ {j}} (t _ {j}, x _ {j}), \end{array}
$$

such that

$$
(p _ {j}, q _ {j}, X _ {j}) \rightarrow (p, q, X).
$$

But for any $j$ ,

$$
\begin{array}{c} - p _ {j} - \frac {1}{2} T r (a X _ {j}) - (b, q _ {j}) - f (t _ {j}, x _ {j}, u _ {n _ {j}} (t _ {j}, x _ {j}), q _ {j} \sigma (t _ {j}, x _ {j})) \\ - n _ {j} (u _ {n _ {j}} (t _ {j}, x _ {j}) - h (t _ {j}, x _ {j})) ^ {-} \geq 0. \end{array}
$$

Hence

$$
- p _ {j} - \frac {1}{2} T r (a X _ {j}) - (b, q _ {j}) - f (t _ {j}, x _ {j}, u _ {n _ {j}} (t _ {j}, x _ {j}), q _ {j} \sigma (t, x)) \geq 0,
$$

and taking the limit as $j \to \infty$ , we conclude that:

$$
- p - \frac {1}{2} T r (a X) - (b, q) - f (t, x, u (t, x), q \sigma (t, x)) \geq 0.
$$

In order to establish a uniqueness result, we need to impose the following additional assumption. For each R > 0, there exists a continuous function $m_{R}: R_{+} \to R_{+}$ such that $m_{R}(0) = 0$ and

$$
| f (t, x, r, p) - f (t, y, r, p) | \leq m _ {R} (| x - y | (1 + | p |)),\tag{27}
$$

for all $t \in [0, T]$ , $|x|$ , $|y| \leq R$ , $|r| \leq R$ , $p \in \mathbb{R}^d$ .

THEOREM 8.6. Under the above assumption, including condition (27), the obstacle problem (24) has at most one viscosity solution in the class of continuous functions which grow at most polynomially at infinity.

PROOF. It suffices to show that if $u, v \in C([0, T] \times \mathbb{R}^d)$ have at most polynomial growth at infinity, satisfy $u(T, x) = v(T, x) = g(x)$ , $x \in \mathbb{R}^d$ , and are, respectively, a sub- and a supersolution of the obstacle problem (24), then $u \leq v$ . For some $\lambda > 0$ to be chosen below, let

$$
\tilde {u} (t, x) = u (t, x) e ^ {\lambda t} \xi^ {- 1} (x),
$$

$$
\widetilde {v} (t, x) = v (t, x) e ^ {\lambda t} \xi^ {- 1} (x),
$$

$$
\widetilde {h} (t, x) = h (t, x) e ^ {\lambda t} \xi^ {- 1} (x),
$$

$$
\widetilde {g} (x) = g (x) e ^ {\lambda T} \xi^ {- 1} (x),
$$

where $\xi(x) = (1 + |x|^2)^{k/2}$ , and $k \in \mathbb{N}$ is chosen such that $\widetilde{u}$ and $\widetilde{v}$ are bounded. We note that

$$
\begin{array}{l} \eta (x) := \xi^ {- 1} (x) D \xi (x) = k (1 + | x | ^ {2}) ^ {- 1} x, \\ \kappa (x) := \xi^ {- 1} (x) D ^ {2} \xi (x) = k (1 + | x | ^ {2}) ^ {- 1} I - k (k - 2) (1 + | x | ^ {2}) ^ {- 2} x \otimes x, \end{array}
$$

where $D\xi$ denotes the gradient of $\xi$ , and $D^{2}\xi$ the matrix of second order partial derivatives of $\xi$ . Then $\widetilde{u}$ (resp. $\widetilde{v}$ ) is a bounded viscosity subsolution (resp. supersolution) of the obstacle problem:

$$
\begin{array}{r l} & {\min \bigg (\widetilde {u} (t, x) - \widetilde {h} (t, x),} \\ & {\qquad - \frac {\partial \widetilde {u}}{\partial t} (t, x) - \widetilde {L} \widetilde {u} (t, x) - \widetilde {f} (t, x, \widetilde {u} (t, x), (\nabla \widetilde {u} \sigma) (t, x)) \bigg) = 0,} \end{array}
$$

$$
\widetilde {u} (T, x) = \widetilde {g} (x),
$$

where

$$
\widetilde {L} \varphi = L \varphi + (a \eta , D \varphi) + \left[ \frac {1}{2} T r (a \kappa) + (b, \eta) - \lambda \right] \varphi ,
$$

$$
\begin{array}{r l} & {\widetilde {f} (t, x, \widetilde {u} (t, x), (\nabla \widetilde {u} \sigma) (t, x))} \\ & {\qquad = e ^ {\lambda t} \xi^ {- 1} (x) f \big (t, x, e ^ {- \lambda t} \xi (x) \widetilde {u} (t, x),} \\ & {\qquad \qquad e ^ {- \lambda t} \xi (x) (D \widetilde {u} \sigma) (t, x) + e ^ {- \lambda t} D \xi (x) (\sigma \widetilde {u}) (t, x) \big).} \end{array}
$$

We rewrite the above problem as

$$
\begin{array}{c} \min \bigg (\widetilde {u} (t, x) - \widetilde {h} (t, x),   - \frac {\partial \widetilde {u}}{\partial t} (t, x) + F (t, x, \widetilde {u} (t, x),   D \widetilde {u} (t, x), D ^ {2} \widetilde {u} (t, x)) \bigg) = 0, \\ \widetilde {u} (T, x) = \widetilde {g} (x). \end{array}
$$

We choose $\lambda$ large enough so that

$$
r \rightarrow F (t, x, r, q, X)
$$

is strictly increasing for any $(t, x, q, X) \in [0, T] \times \mathbb{R}^{d} \times \mathbb{R}^{d} \times S(d)$ , which is possible since $a\kappa$ and $(b, \eta)$ are bounded. Hence F is “proper” in the terminology of [4], and it also satisfies (27), since in particular $a\eta$ is Lipschitz.

From now on, we drop the tildes, and we make a last modification. Namely we replace $v(t,x)$ by $v(t,x)+(\varepsilon/t)$ , with $\varepsilon>0$ . Since $\varepsilon$ is arbitrary, if we prove that for the “transformed” functions, u, v satisfy $u\leq v$ , we will have proved the same inequality for the “old” functions u and v. Moreover, since F is proper, and the old v was a supersolution, we have that

$$
- \frac {\partial v}{\partial t} + F (t, x, v (t, x), D v (t, x), D ^ {2} v (t, x)) \geq \frac {\varepsilon}{t ^ {2}},\tag{28}
$$

and moreover $v(t,x)\uparrow +\infty$ as $t\downarrow 0$ , uniformly in $x$ .

For any $R > 0$ , let $B_R \triangleq \{x \in \mathbb{R}^d; |x| < R\}$ . We need only show that for any $R > 0$ ,

$$
\sup _ {[ 0, T ] \times B _ {R}} (u - v) ^ {+} \leq \sup _ {[ 0, T ] \times \partial B _ {R}} (u - v) ^ {+},
$$

since the right-hand side tends to zero as $R \to \infty$ .

Let us suppose that for some $R > 0$ , there exists $(t_0, x_0) \in [0, T] \times B_R$ such that

$$
\delta = u (t _ {0}, x _ {0}) - v (t _ {0}, x _ {0}) > \sup _ {[ 0, T ] \times \partial B _ {R}} (u - v) ^ {+} \geq 0,\tag{29}
$$

and we will find a contradiction.

For each $\alpha > 0$ , let $(\hat{t}, \hat{x}, \hat{y})$ be a point in the compact set $[0, T] \times \overline{B}_R \times \overline{B}_R$ where the continuous function

$$
\Phi_ {\alpha} (t, x, y) = u (t, x) - v (t, y) - \frac {\alpha}{2} | x - y | ^ {2}
$$

achieves its maximum.

Let us admit for a moment the following lemma.

LEMMA 8.7. (i) For $\alpha$ large enough, $(\hat{t},\widehat{x},\widehat{y})\in (0,T)\times B_R\times B_R.$

(ii) $\alpha |\widehat{x} -\widehat{y}|^2\to 0$ and $|\widehat{x} -\widehat{y}|^2\to 0$ , as $\alpha \rightarrow \infty$

(iii) $u(\hat{t},\widehat{x})\geq v(\hat{t},\widehat{y}) + \delta .$

Theorem 8.3 from [4] tells us that there exists

$$
(p, X, Y) \in \mathbb {R} \times \mathscr {S} (d) \times \mathscr {S} (d),
$$

such that

$$
(p, \alpha (\widehat {x} - \widehat {y}), X) \in \overline {{\mathcal {P}}} ^ {2, +} u (\widehat {t}, \widehat {x})
$$

$$
(p, \alpha (\widehat {x} - \widehat {y}), Y) \in \overline {{\mathcal {P}}} ^ {2, -} v (\widehat {t}, \widehat {x}),
$$

and

$$
\left( \begin{array}{c c} X & 0 \\ 0 & - Y \end{array} \right) \leq 3 \alpha \left( \begin{array}{c c} I & - I \\ - I & I \end{array} \right).\tag{30}
$$

Now from Lemma 8.7(iii), $u(\hat{t}, \widehat{x}) \geq h(\hat{t}, \widehat{y}) + \delta$ , since $v$ is a supersolution. Then since $h$ is uniformly continuous on compacts, for $\alpha$ large enough, $u(\hat{t}, \widehat{x}) > h(\hat{t}, \widehat{x})$ . Hence since $u$ is a subsolution,

$$
- p + F (\widehat {t}, \widehat {x}, u (\widehat {t}, \widehat {x}), \alpha (\widehat {x} - \widehat {y}), X) \leq 0
$$

and from (28)

$$
- p + F (\widehat {t}, \widehat {y}, v (\widehat {t}, \widehat {y}), \alpha (\widehat {x} - \widehat {y}), Y) \geq \varepsilon / t ^ {2}.
$$

Next from Lemma 8.7(iii),

$$
u (\hat {t}, \widehat {x}) \geq v (\hat {t}, \widehat {y}).
$$

Hence, since $F$ is proper,

$$
- p + F (\hat {t}, \widehat {x}, v (\hat {t}, \widehat {y}), \alpha (\widehat {x} - \widehat {y}), X) \leq 0
$$

and consequently

$$
\varepsilon / t ^ {2} \leq F (\hat {t}, \widehat {y}, v (\hat {t}, \widehat {y}), \alpha (\widehat {x} - \widehat {y}), Y) - F (\hat {t}, \widehat {x}, v (\hat {t}, \widehat {y}), \alpha (\widehat {x} - \widehat {y}), X).
$$

Define $G$ by

$$
F (t, x, r, q, X) = - \frac {1}{2} T r (a X) + G (t, x, r, q).
$$

We have

$$
\begin{array}{r l} & {\varepsilon / t ^ {2} \leq T r [ a (\hat {t}, \widehat {x}) X - a (\hat {t}, \widehat {y}) Y ]} \\ & {\qquad + G (\hat {t}, \widehat {y}, v (\hat {t}, \widehat {y}), \alpha (\widehat {x} - \widehat {y})) - G (\hat {t}, \widehat {x}, v (\hat {t}, \widehat {y}), \alpha (\widehat {x} - \widehat {y}))} \\ & {\varepsilon / t ^ {2} \leq T r [ a (\hat {t}, \widehat {x}) X - a (\hat {t}, \widehat {y}) Y ]} \\ & {\qquad + \tilde {K} \alpha | \widehat {x} - \widehat {y} | ^ {2} + m _ {\bar {R}} (| \widehat {x} - \widehat {y} | + \alpha | \widehat {x} - \widehat {y} | ^ {2}),} \end{array}
$$

where $\bar{R} = R \vee \sup_{(t,x) \in [0,T] \times \overline{B}_R} |v(t,x)|$ , since $G$ satisfies the same condition as $f$ in (27). However, from (30), $\forall q, q' \in \mathbb{R}^d$ ,

$$
(X q, q) - (Y q ^ {\prime}, q ^ {\prime}) \leq 3 \alpha | q - q ^ {\prime} | ^ {2},
$$

and

$$
\begin{array}{l} T r [ a (\hat {t}, \widehat {x}) X - a (\hat {t}, \widehat {y}) Y ] \\ \qquad = T r [ \sigma^ {*} (\hat {t}, \widehat {x}) X \sigma (\hat {t}, \widehat {x}) - \sigma^ {*} (\hat {t}, \widehat {y}) Y \sigma (\hat {t}, \widehat {y}) ] \\ \qquad = \sum_ {i = 1} ^ {d} [ (X \sigma (\hat {t}, \widehat {x}) e _ {i}, \sigma (\hat {t}, \widehat {x}) e _ {i}) - (Y \sigma (\hat {t}, \widehat {y}) e _ {i}, \sigma (\hat {t}, \widehat {y}) e _ {i}) ] \\ \qquad \leq 3 \alpha d K ^ {2} | \widehat {x} - \widehat {y} | ^ {2}. \end{array}
$$

Finally, we deduce that

$$
\varepsilon / t ^ {2} \leq c (| \widehat {x} - \widehat {y} | ^ {2} + \alpha | \widehat {x} - \widehat {y} | ^ {2}) + m _ {\bar {R}} (| \widehat {x} - \widehat {y} | + \alpha | \widehat {x} - \widehat {y} | ^ {2}),
$$

which contradicts Lemma 8.7. We proceed to the proof.

PROOF OF LEMMA 8.7. Let us first prove (ii). We have that

$$
\begin{array}{l} u (\hat {t}, \widehat {y}) - v (\hat {t}, \widehat {y}) \leq \sup _ {(t, y)} \Phi_ {\alpha} (t, y, y) \\ \quad \leq \sup _ {(t, x, y)} \Phi_ {\alpha} (t, x, y) \\ \quad = u (\hat {t}, \widehat {x}) - v (\hat {t}, \widehat {y}) - \frac {\alpha}{2} | \widehat {x} - \widehat {y} | ^ {2}. \end{array}
$$

Hence

$$
\frac {\alpha}{2} | \widehat {x} - \widehat {y} | ^ {2} \leq u (\widehat {t}, \widehat {x}) - u (\widehat {t}, \widehat {y}),
$$

and consequently $\alpha |\widehat{x} -\widehat{y}|^2$ is bounded, and as $\alpha \to \infty$ , $|\widehat{x} -\widehat{y} |\to 0$ . Since $u$ is uniformly continuous on $[0,T]\times \overline{B}_R$ , (ii) is established.

We now prove (iii). From (29),

$$
\begin{array}{l} \delta \leq \sup _ {(t, x)} \Phi_ {\alpha} (t, x, x) \\ \quad \leq \sup _ {(t, x, y)} \Phi_ {\alpha} (t, x, y) \\ \quad \leq u (\hat {t}, \widehat {x}) - v (\hat {t}, \widehat {y}). \end{array}
$$

We finally prove (i). Since $u(T, x) = g(x) = v(T, x) - T / \varepsilon$ , from (ii), the uniform continuity of $u(T, \cdot)$ and $v(T, \cdot)$ on $\overline{B}_R$ , and (iii), $\hat{t} < T$ .

Since $u$ and $v - (\varepsilon / t)$ are bounded,

$$
- C - \frac {\varepsilon}{t} - \frac {\alpha}{2} | x - y | ^ {2} \leq \Phi_ {\alpha} (t, x, y) \leq C - \frac {\varepsilon}{t}.
$$

Taking the sup over $(t, x, y)$ in the left inequality yields:

$$
- C - \frac {\varepsilon}{T} \leq \Phi_ {\alpha} (\hat {t}, \widehat {x}, \widehat {y}) \leq C - \frac {\varepsilon}{\hat {t}},
$$

hence

$$
\hat {t} \geq (2 C + T ^ {- 1} \varepsilon) ^ {- 1} \varepsilon > 0.
$$

Moreover, from (ii), (iii) and the uniform continuity of $u$ and $v$ on $[0, T] \times \overline{B}_R$ , for any $0 < \delta' < \delta$ , there exists $M$ such that $\alpha \geq M$ implies that $u(\hat{t}, \widehat{x}) - v(\hat{t}, \widehat{x}) \geq \delta'$ , $u(\hat{t}, \widehat{y}) - v(\hat{t}, \widehat{y}) \geq \delta'$ . In view of (29), if $\delta'$ is chosen close enough to $\delta$ , these inequalities imply that $\widehat{x}, \widehat{y} \in B_R$ .

In order to conclude from Theorems 8.5 and 8.6 that $u(t, x) \triangleq Y_{t}^{t, x}$ is the unique viscosity solution of the obstacle problems (24), it remains to show that it grows at most polynomially at infinity. A careful analysis of the estimates leading to the inequality preceding (16) shows that there exists a universal constant c, independent of the data, such that for each $n \in N$ ,

$$
\sup _ {0 \leq t \leq T} E | Y _ {t} ^ {n} | ^ {2} \leq c E \left(\xi^ {2} + \int_ {0} ^ {T} f ^ {2} (s, 0, 0) d s + \sup _ {0 \leq t \leq T} S _ {t} ^ {+ 2}\right).
$$

From Fatou's lemma, the same inequality holds for $Y_{t} = \lim_{n}Y_{t}^{n}$ . Hence, with the notation of the present section, we have in particular that

$$
\left. \left| Y _ {t} ^ {t, x} \right| ^ {2} \leq c E \left(g \left(X _ {T} ^ {t, x}\right) ^ {2} + \int_ {t} ^ {T} f ^ {2} \left(s, X _ {s} ^ {t, x}, 0, 0\right) d s + \sup _ {t \leq s \leq T} h \left(s, X _ {s} ^ {t, x}\right) ^ {2}\right). \right.
$$

The result now follows from (20), (22), the same assumption for $g$ and the standard estimate

$$
\sup _ {t \leq s \leq T} E | X _ {s} ^ {t, x} | ^ {2} \leq c (T) (1 + | x | ^ {2}).
$$

REMARK 8.8. Suppose now that for each $(t, x)$ , $f(t, x, y, z)$ is a concave function of $(y, z)$ . We then associate the conjugate function

$$
\boldsymbol {F} \colon [ 0, T ] \times \mathbb {R} ^ {d} \times \mathbb {R} \times \mathbb {R} ^ {d} \to \mathbb {R}
$$

by the formula

$$
F (t, x, \beta , \gamma) = \sup _ {(y, z)} [ f (t, x, y, z) - \beta y - \langle \gamma , z \rangle ].
$$

Define moreover $\Gamma_{t,s}^{\beta,\gamma}$ as in Theorem 7.2 and for $t\leq v\leq T$

$$
\begin{array}{r l} & {\Phi_ {x} (t, v, \beta , \gamma) = \Gamma_ {t, v} ^ {\beta , \gamma} \big [ h (v, X _ {v} ^ {t, x}) \mathbf {1} _ {\{v <   T \}} + g (X _ {T} ^ {t, x}) \mathbf {1} _ {\{v = T \}} \big ]} \\ & {\qquad + \int_ {t} ^ {v} \Gamma_ {t, s} ^ {\beta , \gamma} F (s, X _ {s} ^ {t, x}, \beta_ {s}, \gamma_ {s}) d s.} \end{array}
$$

It follows from Theorem 7.2 that

$$
Y _ {t} ^ {t, x} = \operatorname{ess} \inf _ {(\beta , \gamma) \in A} \operatorname{ess} \sup _ {v \in \mathcal {T} _ {t}} E [ \Phi_ {x} (t, v, \beta , \gamma) / \mathcal {F} _ {t} ]
$$

and (24) is the Hamilton–Jacobi–Bellman equation of the corresponding minimax control problem.

## REFERENCES

[1] BARLES, G. (1994). Solutions de Viscosité des Équations de Hamilton–Jacobi du Premier Ordre et Applications. Springer, New York.

[2] BARLES, G. and BURDEAU, J. (1995). The Dirichlet problem for semilinear second order degenerate elliptic equations and applications to stochastic exit time problems. Comm. Partial Differ. Equations 20 129–178.

[3] BENSOUSSAN, A. and LIONS, J. L. (1978). Applications des Inéquations Variationelles en Contrôle Stochastique. Dunod, Paris.

[4] CRANDALL, M., ISHII, H. and LIONS, P. L. (1992). User's guide to the viscosity solutions of second order partial differential equations. Bull. Amer. Math. Soc. 27 1–67.

[5] DARLING, R. (1995). Constructing gamma martingales with prescribed limits, using backward SDEs. Ann. Probab. 23 1234–1261.

[6] DAVIS, M. and KARATZAS, I. (1994). A deterministic approach to optimal stopping. In Probability, Statistics and Optimization (F. P. Kelly, ed.) 455–466. Wiley, New York.

[7] DELLACHERIE, C. and MEYER, P. A. (1975). Probabilités et Potentiel. I–IV. Hermann, Paris.

[8] DELLACHERIE, C. and MEYER, P. A. (1980). Probabilités et Potentiel. V–VIII. Hermann, Paris.

[9] DUFFIE, D. and EPSTEIN, L. (1992). Stochastic differential utility. Econometrica 60 353–394.

[10] EL KAROUI, N. (1981). Les aspects probabilistes du contrôle stochastique. In Ecole d'Eté de Saint Flour 1979. Lecture Notes in Math. 876. Springer, Berlin.

[11] EL KAROUI, N. and CHALEYAT-MAUREL, M. (1978). Un problème de réflexion et ses applications au temps local et aux equations differentielles stochastiques sur R. Cas continu. In Temps Locaux. Astérisque 52–53 117–144. Soc. Math. France, Paris.

[12] EL KAROUI, N. and JEANBLANC-PICQUÉ, M. (1993). Optimization of consumption with labor income. Unpublished manuscript.

[13] EL KAROUI, N., PENG, S. and QUENEZ, M. C. (1994). Backward stochastic differential equations in finance. Math. Finance. To appear.

[14] HAMADENE, S. and LEPELTIER, J. P. (1995). Zero-sum stochastic differential games and backward equations. Systems Control Lett. 24 259–263.

[15] JACKA, S. (1993). Local times, optimal stopping and semimartingales. Ann. Probab. 21 329-339.

[16] KARATZAS, I. and SHREVE, S. (1996). Mathematical Finance. To appear.

[17] PARDOUX, E. and PENG, S. (1990). Adapted solution of a backward stochastic differential equation. Systems Control Lett. 14 55–61.

[18] PARDOUX, E. and PENG, S. (1992). Backward SDEs and quasilinear PDEs. In Stochastic Partial Differential Equations and Their Applications (B. L. Rozovskii and R. B. Sowers, eds.). Lecture Notes in Control and Inform. Sci. 176. Springer, Berlin.

[19] PARDOUX, E. and PENG, S. (1996). Some backward SDEs with non-Lipschitz coefficients. Proc. Conf. Metz. To appear.

[20] REVUZ, D. and YOR, M. (1994). Continuous Martingales and Brownian Motion. Springer, New York.

N. EL KAROUI

C. KAPOUDJIAN

LABORATOIRE DE PROBABILITÉS, URA CNRS 224

ECOLE NORMALE SUPÉRIEURE

UNIVERSITÉ PIERRE ET MARIE CURIE

46, ALLÉE D'ITALIE

4, PLACE JUSSIEU

69364 LYON CEDEX

75232 PARIS CEDEX 05

FRANCE

FRANCE

E-MAIL: ne@ccr.jussieu.fr

E. PARDOUX

S. PENG

LATP, URA CNRS 225

INSTITUTE OF MATHEMATICS

CENTRE DE MATHÉMATIQUES ET D'INFORMATIQUE

SHANDONG UNIVERSITY

UNIVERSITÉ DE PROVENCE

JINAN, 250100

39, RUE F. JOLIOT CURIE

CHINA

F13453 MARSEILLE CEDEX 13

E-MAIL: pengsg@shandong.ihep.ac.cn

FRANCE

E-MAIL: pardoux@gyptis.univ-mrs.fr

M. C. QUENEZ

EQUIPE DE MATHÉMATIQUES

UNIVERSITÉ DE MARNE LA VALLÉE

2 RUE DE LA BUTTE VERTE

93.166 Noisy-Le-GRAND

FRANCE

E-MAIL: quenez@math.univ-mlv.fr