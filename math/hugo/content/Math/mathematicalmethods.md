+++
title = "Mathematical methods pt. 1"
draft = false
+++

## Precalc {#precalc}


### Binomial expansion {#binomial-expansion}

\begin{align\*}
(x+y)^n = (x+y)^{-m} = & x^{-m} \left(1+\frac{y}{x}\right)^{-m} \\\\
                     = & x^{-m} \sum\_{k=0}^{\infty} {-m \choose k} \left(\frac{y}{x}\right)^k
\end{align\*}

where m is positive and x > y and:

\\[
{-m \choose k} = (-1)^k {m+k-1 \choose k}
\\]

.

Whatever's n:

\\[
\binom{n}{k+1} = \frac{n-k}{k+1} \binom{n}{k}
\\]


## Complex & hyperbolic {#complex-and-hyperbolic}


### Identities {#identities}

\\[
e^{i\theta} = \cos{\theta} + i\sin{\theta}
\\]

\\[
z\_1z\_2 = (x\_1x\_2 - y\_1y\_2) + i(x\_1y\_2+y\_1x\_2)
\\]

\\[
\abs{z\_1z\_2} = \abs{z\_1}\abs{z\_2}
\\]

\\[
\arg(x+iy) = \tan^{-1}{y\over x}
\\]

\\[
\arg(z\_1z\_2) = \arg{z\_1} + \arg{z\_2}
\\]

\\[
\frac{z\_1}{z\_2} = \frac{x\_1x\_2+y\_1y\_2}{x\_2^2+y\_2^2} + i\frac{x\_2y\_1-x\_1y\_2}{x\_2^2+y\_2^2}
\\]

\\[
e^z = \exp z = 1 + z + \frac{z^2}{2!} + \frac{z^3}{3!}
\\]


### De moivre's {#de-moivre-s}

\\[
(\cos\theta + i\sin\theta)^n = \cos{n\theta} + i\sin{n\theta}
\\]

given \\(z = e^{i\theta}\\)

\\[
z^n + \frac{1}{z^n} = 2\cos{n\theta}
\\]

\\[
z^n - \frac{1}{z^n} = 2i\sin{n\theta}
\\]


#### Application {#application}

\\[
\cos^3\theta = \frac{1}{8} \left(z+\frac{1}{z}\right)^3
\\]


### Roots of unity {#roots-of-unity}

Notice

\\[
z^n = e^{2ik\pi} = 1
\\]

where k is any integer

So the solutions are:

\\[
z = e^{2ik\pi/n}
\\]


### Integration {#integration}

\\[
\int e^{ax} cos(bx) \dd x
\\]


### Hyperbolic identities {#hyperbolic-identities}

\\[
\cosh x = \frac12(e^x + e^{-x})
\\]

\\[
\sinh x = \frac12(e^x - e^{-x})
\\]

Circular Trig identities hold for hyperbolic functions but replace sinh^2 by -sinh^2 and tanh^2 by -tanh^2


## Series {#series}


### Arithmetic series {#arithmetic-series}

\\[
\sum\_{n=0}^{N-1} (a + nd)
\\]

Diverges

\\[
S\_N = \frac{N}{2}[2a + (N-1)d]
\\]


### Geometric series {#geometric-series}

\\[
\sum\_{n=0}^{N-1} ar^n
\\]

\\[
S\_N = \frac{a(1-r^N)}{1-r}
\\]

\\[
S\_\infty = \frac{a}{1-r}
\\]


### Arithmetico-geometric series {#arithmetico-geometric-series}

\\[
\sum\_{n=0}^{N-1} (a+nd)r^n
\\]

\\[
S\_N = \frac{a-[a+(N-1)d]r^N}{1-r} + \frac{rd(1-r^{N-1})}{(1-r)^2}
\\]

\\[
S = \frac{a}{1-r} + \frac{rd}{(1-r)^2}
\\]


### Difference method {#difference-method}

Consider the series \\(\sum u\_n\\)

If u\_n can be expressed in the form:

\\[
u\_n = f(n) - f(n-1)
\\]term

Notice sum of \\(f\\) telescopes (\\(S\_n = f(n)-f(0)\\)).

If

\\[
u\_n = f(n) - f(n-m)
\\]

then
\\[
S\_N = \sum\_{k=1}^m f(N-k+1) - \sum\_{k=1}^m f(1-k)
\\]


### Convergence {#convergence}


#### Real and positive (absolute convergence) {#real-and-positive--absolute-convergence}

<!--list-separator-->

-  Prelim test (not sufficient)

    \\[
    \lim\_{n\to\infty} u\_n = 0.
    \\]

<!--list-separator-->

-  Comparison test

    if \\(\sum v\_n\\) is convergent and

    \\[
    u\_n \leq v\_n \text{ for } n > N.
    \\]

    converse is true

<!--list-separator-->

-  D'Alembert's ratio test

    \\[
    \rho = \lim\_{n\to\infty} \left(\frac{u\_{n+1}}{u\_n}\right).
    \\]

    if \\(\rho < 1\\) the series is convergent; if \\(\rho > 1\\) the series is divergent;
    if \\(\rho = 1\\), it's undetermined by this test

<!--list-separator-->

-  Ratio comparison test

    \\(v\_n\\) is convergent and

    \\[
    \frac{u\_{n+1}}{u\_n} \leq \frac{v\_{n+1}}{v\_n}
    \\]

    for all n greater than a fixed value N

    converse is true

<!--list-separator-->

-  Quotient test

    \\[
    \rho = \lim\_{n\to\infty}\left(\frac{u\_n}{v\_n}\right)
    \\].

    if \\(\rho \neq 0\\) and finite: both converge or both diverge;
    if \\(\rho = 0\\) and \\(\sum v\_n\\) converges: then \\(\sum u\_n\\) converges;
    if \\(\rho = \infty\\) and \\(\sum v\_n\\) diverges: then \\(\sum u\_n\\) diverges;

<!--list-separator-->

-  Integral test

    if the limit of the integral

    \\[
    \lim\_{N\to\infty} \int^N U(x) \dd{x}
    \\]

    exists, the series \\(\sum u\_n\\) is convergent.

    the lower limit is not stated to avoid silly cases like singularities

<!--list-separator-->

-  Cauchy's root test

    \\[
    \rho = \lim\_{n\to\infty} (u\_n)^{1/n}.
    \\]

    if \\(\rho < 1\\) the series is convergent;
    if \\(\rho > 1\\) the series is divergent;
    if \\(\rho = 1\\), it's undetermined by this test;

    good for when the nth term contains an nth power like \\(\sum\_{n=1}^{\infty} \left(\frac{1}{n}\right)^n\\)

<!--list-separator-->

-  Grouping

    trivial


#### Otherwise (merely convergent) {#otherwise--merely-convergent}

<!--list-separator-->

-  Alternating series test

    \\[
    \sum\_{n=1}^\infty (-1)^{n+1} u\_n
    \\]

    where \\(u\_n \geq 0\\).

    It converges when:

    1.  \\(u\_n \to 0\\) as \\(n \to \infty\\)

    2.  \\(u\_n < u\_{n-1}\\) for all \\(n>N\\) for some finite \\(N\\).

        otherwise it oscillates


### Operations {#operations}

If the infinite series \\(\sum u\_n\\) and \\(\sum v\_n\\) are both absolutely convergent then
the series \\(\sum w\_n\\), where:

\\[
w\_n = u\_1v\_n + u\_2v\_{n-1} + \ldots + u\_nv\_1
\\]

is also absolutely convergent.

\\(\sum w\_n\\) is the Cauchy product and it converges to ST is u converges to S and v converges to T;


### Power series {#power-series}

Converges if:

\\[
\rho = \abs{x} \lim\_{n\to\infty} \abs{\frac{a\_{n+1}}{a\_n}} < 1
\\]


### Taylor series {#taylor-series}

\\[
f(a+h) = \frac{h^{n-1}}{(n-1)!}f^{(n-1)}(a) + R\_n(h)
\\]

\\[
R\_n(h) = \frac{h^n}{n!}f^{(n)}(\zeta)
\\]

for some \\(\zeta \in [a,a+h]\\)


## Partial derivatives {#partial-derivatives}


### Total differential {#total-differential}

\\[
\dd f = \pdv{f}{x}\dd x + \pdv{f}{y}\dd y
\\]

If \\(x\_i = x\_i(x\_1), i = 2,3,\ldots,n\\), then the total derivative is:

\\[
\dv{f}{x\_1} = \pdv{f}{x\_1} + \left(\pdv{f}{x\_2}\right)\dv{x\_2}{x\_1} + \ldots + \left(\pdv{f}{x\_n}\right) \dv{x\_n}{x\_1}
\\]

Pretend that the other variables do not change with \\(x\_1\\) when evaluating \\(\pdv{f}{x\_1}\\)


### Exact differentials {#exact-differentials}

A differential is exact if when given:

\\[
\dd f = A(x,y)\dd x + B(x,y) \dd y
\\],

\\[
\pdv{A}{y} = \pdv{B}{x},
\\]

or

\\[
\pdv{g\_i}{x\_j} = \pdv{g\_j}{x\_i} \text{ for all pairs $i,j$}.
\\]

and there are \\(\frac12 n(n-1)\\) relationships to be satisfied


### Useful theorems {#useful-theorems}

Reciprocity relation:

\\[
\left(\pdv{x}{y}\right)\_z = \left(\pdv{y}{x}\right)\_z^{-1}
\\]

given both exist and neither of zero

Cyclic relation:

\\[
\left(\pdv{y}{z}\right)\_x \left(\pdv{z}{x}\right)\_y \left(\pdv{x}{y}\right)\_z = -1
\\]


### Chain rule {#chain-rule}

\\[
\dv{f}{u} = \pdv{f}{x}\dv{x}{u} + \pdv{f}{y}\dv{y}{u}
\\]

Good for parametric equations without having to express x(u) and y(u) in terms of u.

Can be extended to problems requiring change of variable by replacing the total derivative with partial ones


### Taylor's theorem {#taylor-s-theorem}

\begin{align\*}
f(x,y) = f(x\_0,y\_0) & + \pdv{f}{x}\Delta x + \pdv{f}{y} \Delta y \\\\
                    & + \frac{1}{2!}\left[\pdv[2]{f}{x}(\Delta x)^2 + 2\pdv[2]{f}{x}{y}\Delta x \Delta y + \pdv[2]{f}{y}(\Delta y)^2\right] + \ldots \\\\
\end{align\*}

\\[
= \sum\_{n=0}^{\infty}\frac{1}{n!}\left[\left(\Delta x \pdv{x} + \Delta y \pdv{y}\right)^n f(x,y)\right]\_{x\_0,y\_0}
\\]

or more generally:

\\[
f(\textbf x) = f(\textbf{x}\_0) + \sum\_i \pdv{f}{x\_i}\Delta x\_i + \frac{1}{2!}\sum\_i\sum\_j\pdv[2]{f}{x\_i}{x\_j}\Delta x\_i \Delta x\_j + \ldots
\\]
\\[
= \sum\_{n=0}^\infty \frac{1}{n!}\left[\left(\Delta \textbf{x} \cdot \nabla\right)^n f(\textbf x)\right]\_{\textbf{x}=\textbf{x}\_0}
\\]


### Stationary values {#stationary-values}

all stationary points have \\(f\_x = f\_y = 0\\)
minima if \\(f\_{xx}\\) and \\(f\_{yy}\\) are positive and \\(f\_{xy}^2 < f\_{xx}f\_{yy}\\)
maxima if \\(f\_{xx}\\) and \\(f\_{yy}\\) are negative and \\(f\_{xy}^2 < f\_{xx}f\_{yy}\\)
saddle points if \\(f\_{xx}\\) and \\(f\_{yy}\\) have opposite signs or \\(f\_{xy}^2 > f\_{xx}{yy}\\)


### Stationary values under constraints (lagrange multipliers) {#stationary-values-under-constraints--lagrange-multipliers}

Abridged problem statement:
Find the maximum value of the differentiable function f(x,y) subject to the constraint g(x,y) = c, where c is a constant.

We must choose a \\(\lambda\\) (**Lagrange undetermined multiplier**) such that:

\\[
\pdv{f}{x} + \lambda\pdv{g}{x} = 0
\\]

\\[
\pdv{f}{y} + \lambda\pdv{g}{y}=0
\\]

this can be extended to multiple constraints given the no. of contraints is smaller than the number of variables


### Envelope {#envelope}

A function where

\\[
f(x,y,\alpha\_1) = 0
\\]

and

\\[
\pdv{f(x,y,\alpha\_1)}{\alpha}=0
\\]


### Differentiation of integrals {#differentiation-of-integrals}

\\[
\dv{x}\left[\int\_u^v f(x,t) \dd{t} \right] = \int\_u^v \pdv{f(x,t)}{x}\dd{t}
\\]

given v and u are constants

\\[
\dv{x}\left[\int\_{u(x)}^{v(x)} f(x,t) \dd{t}\right]
= f(x,v(x))\dv{v}{x} - f(x,u(x))\dv{u}{x} + \int\_{u(x)}^{v(x)}\pdv{f(x,t)}{x}\dd{t}
\\]


## Multiple Integrals {#multiple-integrals}


### Center of mass {#center-of-mass}

\\[
\bar{x} \int \dd M = \int x \dd M
\\]


### Pappus theorems {#pappus-theorems}

Volume generated by rotating the plane area about the x-axis

\\[
V = \int 2\pi y \dd{A} = 2\pi\bar{y}A
\\]

Area generated by rotating the plane curve about the x-axis (surface of revolution):
\\[
S = \int 2\pi y \dd{s} = 2\pi\bar{y}L
\\]


### Change of variables (Jacobian) {#change-of-variables--jacobian}

The Jacobian is defined by

\\[
J = \frac{\partial(x,y)}{\partial(u,v)} =\begin{vmatrix}
\pdv{x}{u} & \pdv{y}{u} \\\\
&\\\\
\pdv{x}{v} & \pdv{y}{v} \\\\
\end{vmatrix}
\\]
Thus:

\\[
\dd{x} \dd{y} = \left|J\right| \dd{u} \dd{v}
\\]

Note that:

\\[
\dd{x}\dd{y} =  r \dd{r} \dd{\phi}
\\]

Or that:
\\[
\dd{V} = r^2\sin\theta \dd{r}\dd{\theta}\dd{\phi}
\\]

Also:

\\[
J\_{xy}J\_{yx} = 1
\\]

or:

\\[
\frac{\partial(x\_1,\ldots,x\_n)}{\partial(y\_1,\ldots,y\_n)} = \left[\frac{\partial(x\_1,\ldots,x\_n)}{\partial(y\_1,\ldots,y\_n)}\right]^{-1}
\\]


## Vector algebra {#vector-algebra}

\\[
(a\times b)\cdot(c\times d) \equiv (a\cdot c)(b\cdot d)-(a\cdot d)(b\cdot c)
\\]

\\[
a\times(b \times c) = (a \cdot c)b - (a \cdot b)c
\\]

\\[
(a\times b)\times c = (a \cdot c)b - (b \cdot c)a
\\]


### Ratio theorem {#ratio-theorem}

{{< figure src="/static/ratiotheorem.png" >}}

\\[
\textbf{OP} = \frac{\mu}{\lambda+\mu}\textbf{a} + \frac{\lambda}{\lambda+\mu}\textbf{b}
\\]


### Geometry {#geometry}


#### Line {#line}

\\[
{\bf r} = {\bf a} + \lambda{\bf b}
\\]

\\[
({\bf r - a}) \times {\bf b} = 0
\\]


#### Plane {#plane}

\\[
({\bf r - a}) \cdot {\bf \hat n} = 0
\\]

\\[
{\bf r} \cdot {\bf \hat n} = d
\\]

\\[
{\bf r} = \alpha {\bf a} + \beta{\bf b} +\gamma {\bf n}
\\]

where a + b + c = 1

lx + my + nz = d


#### Sphere {#sphere}

|     |          |
|-----|----------|
| r-c | ^2 = a^2 |


## Normal modes {#normal-modes}

The potential must not depend on the time derivatives of these of these coordinates. The potential must have a local minimum at the equillibrium point. The potential at this point is zero.

T can be written as the quadratic form.

\\[
T = \sum\_i \sum\_j a\_{ij} \dot{q}\_i \dot{q}\_j = \dot{q}^TA\dot{q}
\\]

and likewise for V with q instead of qdot.

1.  A and B can be made symmetric.

2.  A and B are real and positive definite.


### Process {#process}

{{< figure src="/static/normalmode1.png" >}}

We may use the above equation to write the equation E = T + V.

In the above case:

\begin{aligned}
T & \approx \frac12 M l^2 (\dot{\theta}\_1^2 + \frac{1}{4} \dot{\theta}\_2^2 + \dot{\theta}\_1 \dot{\theta}\_2) + \frac{1}{24}M l^2 \dot{\theta}\_2^2 \\\\
& = \frac{1}{12} M l^2 \dot{q}^T \begin{pmatrix} 6 & 3 \\\ 3 & 2 \\\\end{pmatrix}\dot{q}
\end{aligned}

\begin{aligned}
V & \approx \frac{1}{4} M l g (2\dot{\theta}\_1^2 + \dot{\theta}\_2^2 \\\\
& = \frac{1}{12} M l g q^T \begin{pmatrix} 6 & 0 \\\ 0 & 3 \\\\end{pmatrix}q
\end{aligned}

We may then apply conservation of energy \\(\dv{t} (T+V) = 0\\).

This simplifies\* to \\(A\ddot{q} + Bq = 0\\). Solutions of this form satisfy \\(q = x\cos\omega t\\)

There will be N values of \\(\omega\\) and these values are (normal || eigen)frequencies. This has non-trivial solutions only if:

\\[
\vert B - \omega^2 A \vert = 0
\\]

Note that the eigenvectors are mutually orthogonal (except when degeneracy) as A and B are real symmetric matrices.

It is possible to get multiple normal modes by exploiting symmetries and then using the fact that the eigenvectors are orthogonal.


### Rayleigh-Ritz method {#rayleigh-ritz-method}


## Vector calculus {#vector-calculus}


### Differentiation of a vector function {#differentiation-of-a-vector-function}

If magnitude \\(|\textbf{a}|\\) is constant wrt u

\\[
\textbf{a} \cdot \dv{\textbf{a}}{u} = 0
\\]

A function can be represented as:

\\[
\textbf{r}(u) = x(u)\textbf{i} + y(u)\textbf{j} + z(u)\textbf{k}
\\]

\\[
\textbf{r}(u) = u\textbf{i} + f(u)\textbf{j} + g(u)\textbf{k}
\\]


#### Arc length {#arc-length}

the arc length between two points on the curve \\({\bf r }(u)\\) is given by:

\\[
s = \int\_{u\_i}^{u\_2} \sqrt{\dv{\bf r}{u} \cdot \dv{\bf r}{u}} \dd{u}
\\]


#### tangent, binormal and normal (???) {#tangent-binormal-and-normal}

If the parameter u of r(u) is the arc length along the curve then dr/ds is the unit tangent vector \\(\hat{t}\\)

The curvature (\\(\kappa\\)) or the radius of curvature (\\(\rho\\))is defined by:

\\[
\kappa = \frac{1}{\rho} =\left|\dv{\hat{t}}{s}\right| = \left|\dv[2]{\hat{r}}{s}\right|
\\]

The unit vector perpendicular to \\(\hat{t}\\) is denoted by \\(\hat{n}\\), and is the principal normal.

Thus:

\\[
\dv{\hat{\bf t}}{s} = \kappa\hat{\bf n}
\\]

The unit vector \\(\bf \hat{b} = \hat{t} \times \hat{n}\\) is called the binormal to C, and t,n,b thus form a right handed

rectangular coordinate system.

The torsion (\\(\tau\\)) is given by \\(\dv{\hat b}{s}\\) and is related to the normal by \\(\dv{b}{s} =-\tau \hat n\\) or :

\\[
\tau = -\hat{\bf n} \cdot \dv{\hat{\bf b}}{s}
\\]

There is also the radius of torsion, \\(\sigma = 1/\tau\\)

\\[
\dv{\hat{\bf n}}{s} = \tau \hat{\bf b} - \kappa \hat{\bf t}
\\]

<!--list-separator-->

-  Frenet-Serret formulae

    \\[
    \dv{\hat{\bf t}}{s} = \kappa \hat{\bf n}
    \\]

    \\[
    \dv{\hat{\bf n}}{s} = \tau \hat{\bf b} - \kappa \hat{\bf t}
    \\]

    \\[
    \dv{\hat{\bf b}}{s} =-\tau \hat{\bf n}
    \\]


### Surfaces {#surfaces}

a surface can be given by:

\\[
{\bf r}(u,v) = u{\bf i} + v{\bf j} + f(u,v){\bf k}
\\]

_Coordinate_ curves are curves with u= constant or v = constant. Notice that the tangent vector of u=constant is in direction dr/du

A normal to the surface at P is given by:

\\[
{\bf n} = \pdv{\bf r}{u} \times \pdv{\bf r}{v}
\\]

or

\\[
\hat{\bf n}(x,y,z) = \frac{\pdv{r}{u}\times\pdv{r}{v}}{|\pdv{r}{u}\times\pdv{r}{v}|} = \frac{-\bf{i}\pdv{f}{x}-\bf{j}\pdv{f}{y}+\bf{k}}{\sqrt{1 + \left(\pdv{f}{x}\right)^2 + \left(\pdv{f}{y}\right)^2}}
\\]
The _element of area_ at P:

\\[
\dd{S} = |{\bf n}| \dd{u} \dd{v}
\\]

Thus:

\\[
A = \iint\_R |{\bf n}| \dd{u}\dd{v}
\\]


### Surface integrals of normal component of function F {#surface-integrals-of-normal-component-of-function-f}

\\[
\iint\_S \bf{F\cdot \hat{n}} \dd{S} = \lim\_{N\to\infty, \Delta S \to 0} \sum\_{l=1}^N \bf{F}(x\_l,y\_l,z\_l) \bf{\cdot \hat{n}\_l} \Delta S\_l
\\]

The surface area is given by:

\\[
\iint\_S \dd{S}
\\]


### Integrating over S -> Integrating over projection of S {#integrating-over-s-integrating-over-projection-of-s}

We find:

\\[
\hat{\bf n} \cdot \bf{k}=\frac{1}{\sqrt{1+\left(\partial{f}/\partial{x}\right)^2 + \left(\partial{f}/\partial{y}\right)^2}}
\\]

We can then write:

\\[
\iint\_S G(x,y,z) \dd{S} = \iint\_R G[x,y,f(x,y)] \cdot \sqrt{1 + \left(\pdv{f}{x}\right)^2 + \left(\pdv{f}{y}\right)^2} \dd{x}\dd{y}
\\]

which allows to integrate G over the projection on the x-y plane. This can be generalised to integration on the y-z plane and x-z plane.


#### Flux of F {#flux-of-f}

To integrate integrals of the form \\(\bf F \cdot \hat{n}\\)

we can simplify the earlier result into:

\begin{align\*}
\iint\_S \bf{F\cdot \hat{n}} \dd{S} & = \iint\_R -F\_x[x,y,f(x,y)]\pdv{f}{x} \\\ - & F\_y[x,y,f(x,y)]\pdv{f}{y}+ F\_z[x,y,f(x,y)] \dd{x} \dd{y}
\end{align\*}

The above integral is often called the flux of \\(\bf F\\). The rate of flow through a surface S can be given by subsitiuting F for \\(\rho(x,y,z){\bf v} (x,y,z)\\)


### Vector operators {#vector-operators}


#### Nabla {#nabla}

Gives a vector field

Cartesian:

\\[
\nabla \equiv {\bf \hat i}\pdv{x} + {\bf \hat j}\pdv{y} + {\bf \hat k}\pdv{z}
\\]


#### Divergence {#divergence}

<!--list-separator-->

-  Definitions

    \\[
    \div {\bf F} = \lim\_{\Delta V \to 0} \frac{1}{\Delta V} \iint\_S {\bf F \cdot \hat{n}} \dd{S}
    \\]

    Where \\(\Delta V\\) is taken about (x,y,z)

    This allows us to express gauss' law as \\(\div E = \rho/\epsilon\_0\\)

    <!--list-separator-->

    -  Cartesian

        \\[
        \div F = \pdv{F\_x}{x} + \pdv{F\_y}{y}+ \pdv{F\_z}{z}
        \\]

    <!--list-separator-->

    -  Cylindrical

        \\[
        \div F = \frac{1}{r}\pdv{}{r}\left(rF\_r\right) + \frac{1}{r}\pdv{F\_\theta}{\theta}+ \pdv{F\_z}{z}
        \\]

    <!--list-separator-->

    -  Spherical

        \\[
        \div F = \frac{1}{r^2}\pdv{}{r}\left(r^2F\_r\right) + \frac{1}{r \sin\phi}\pdv{}{\phi} \left( \sin\phi F\_\phi \right) +  \frac{1}{r \sin\phi}\pdv{F\_\theta}{\theta}
        \\]

<!--list-separator-->

-  Divergence theorem

    \\[
    \iint\_S {\bf F \cdot \hat{n}} \dd{S} = \iiint\_V {\div {\bf F}} \dd{V}
    \\]


#### Grad of a scalar field {#grad-of-a-scalar-field}

Rate of change of \\(\phi\\) (a scalar field) wrt distance s in direction \\(\bf a\\) (i.e. the directional derivative)

\\[
\dv{\phi}{s} = \nabla \phi \cdot {\bf \hat a}
\\]

To find the rate of change of a vector field in a particular direction:
\\[
\hat{\bf a} \cdot \nabla = a\_x \pdv{x} + a\_y \pdv{y} + a\_z\pdv{z}
\\]

e.g. \\(\dd{\bf E} = (\dd{\bf r} \cdot \nabla){\bf E}\\)

A second interesting property is that: \\(\nabla\phi\\) is a vector normal to the surface \\(\phi(x,y,z) = c\\) at every point
