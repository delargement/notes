+++
title = "Tensors"
draft = false
+++

## Cartesian tensors {#cartesian-tensors}


### Change of basis {#change-of-basis}

When basis vectors change by:

\\[
\bm{e}\_j' = S\_{ij}\bm{e}\_i
\\]

\\[
\bm{x}' = S^{-1}x
\\]

As components change inversely with the basis vectors. Thus a linear operator \\(\mathcal{A}\\) represented by \\(A\\) in a given coordinate system is represented by \\(A' = S^{-1}AS\\) in a new coordinate system.

For rigid body rotations, the transformation matrix \\(L\\) is orthogonal (since it must preserve inner products).

The transformation matrix is given by \\(L\_{ij} = \bm{e}\_i'\cdot\bm{e}\_j = \partial{x\_j}/\partial{x\_i'}\\). The following orthogonality relations hold:

\\[
L\_{ik}L\_{jk} = \delta\_{ij}
\\]
\\[
L\_{ki}L\_{kj} = \delta\_{ij}
\\]


### First and zero-order cartesian tensors {#first-and-zero-order-cartesian-tensors}

Consider any set of three quantities \\(v\_i\\) which are functions of coordinates \\(x\_i\\).

If the form of \\(v\_i'\\) in new variables can be obtained from old ones as follows,

\\[
v\_i' = L\_{ij}v\_j
\\]

\\(v\_i\\) are said to form the components of a _vector_ or _first-order Cartesian tensor_ \\(\bm{v}\\), such that \\(\bm{v} = v\_i\bm{e}\_i = v\_i'\bm{e}\_i'\\).


#### Example: Do the following form the components of a first-order Cartesian tensor? {#example-do-the-following-form-the-components-of-a-first-order-cartesian-tensor}

Denoting \\(\sin\theta\\) by \\(s\\) and \\(\cos\theta\\) by \\(c\\),

1.  \\(v = (x\_2,-x\_1)\\)

\\[
v\_1' = x\_2' = -sx\_1 + cx\_2
\\]

\\[
v\_2' = -x\_1' = -cx\_1 - sx\_2
\\]

For a cartesian tensor,

\\[
v\_1' = L\_{11}v\_1 + L\_{12}v\_2 = cx\_2 + s(-x\_1)
\\]

\\[
v\_2' = L\_{21}v\_1 + L\_{22}v\_2 = -s(x\_2) + c(-x\_1)
\\]

Since the expressions are the same regardless of \\(\theta\\), the pair \\((x\_2,-x\_1)\\) is a first-order cartesian tensor.


#### Zero-order tensors {#zero-order-tensors}

Scalars or tensors of zero-order contain only one element. An example is the square of the distance of a point from the origin. In fact, any scalar product of two first-order tensors is a zero-order tensor (can be shown using orthogonality of transformation matrix).


### Second- and higher-order Cartesian tensors {#second-and-higher-order-cartesian-tensors}

\\[
T\_{ij}' = L\_{ik}L\_{jl}T\_{kl}
\\]
\\[
T\_{ij} = L\_{kl}L\_{lj}T\_{kl}'
\\]

For higher orders;

\\[
T\_{ij\ldots k}' = L\_{ip}L\_{jq}\ldots L\_{kr}T\_{pq\ldots r}
\\]
\\[
T\_{ij\ldots k} = L\_{pi}L\_{qj}\ldots L\_{rk}T\_{pq\ldots r}'
\\]

In three dimensions, an Nth order Cartesian tensor has \\(3^{N}\\) components. Linear operators are not always tensors as the two subscripts in the 2nd order tensor must refer to the same coordinate system.


#### Outer product {#outer-product}

\\[
T\_{ij} = u\_iv\_j
\\]

Denoted as:

\\[
\bm{T} = \bm{u}\otimes\bm{v}
\\]


#### Gradient of vector {#gradient-of-vector}

\\[
T\_{ij} = \pdv{v\_i}{x\_j}
\\]

Denoted as:

\\[
\bm{T} = \nabla\bm{v}
\\]


#### Levi-Civita symbol {#levi-civita-symbol}

\\(\epsilon\_{ijk}\\) is totally antisymmetric (swapping indices turns it negative), and is the only three-subscript quantity with the property.

It can be turned into a Laplace (cofactor) expansion for finding the determinant of a 3x3 matrix by choosing l,m,n.

\\[
\vert A \vert \epsilon\_{lmn} = A\_{li}A\_{mj}A\_{nk}\epsilon\_{ijk}
\\]

Note:

\\[
\epsilon\_{lmn}' = L\_{li}L\_{mj}L\_{nk}\epsilon\_{ijk} = |L|\epsilon\_{lmn}
\\]

Since \\(|L|\\) is unity as \\(L\\) is orthogonal, is a third order Cartesian tensor.

Cross product \\(\bm{a} = \bm{b}\times\bm{c}\\), can be represented as:

\\[
a\_i = \epsilon\_{ijk}b\_jc\_k
\\]

<!--list-separator-->

-  Curl

    \\[
    (\curl \bm{v})\_i = \epsilon\_{ijk}\pdv{v\_k}{x\_j}
    \\]

<!--list-separator-->

-  Grad of div

    \\[
    [\grad(\div \bm{v})]\_i = \pdv{}{x\_i}\left(\pdv{v\_j}{x\_j}\right) = \delta\_{jk} \pdv{v\_j}{x\_i,x\_k}
    \\]

<!--list-separator-->

-  Curl of curl

    \\[
    [\curl (\curl \bm{v})]\_i = \epsilon\_{ijk}\pdv{}{x\_j}\left(\epsilon\_{klm}\pdv{v\_m}{x\_l}\right) = \epsilon\_{ijk}\epsilon\_{klm}\pdv{v\_m}{x\_j,x\_l}
    \\]

<!--list-separator-->

-  Scalar triple product

    \\[
    (\bm{a} \times \bm{b}) \cdot \bm{c} = \delta\_{ij}c\_i\epsilon\_{jkl}a\_kb\_l = \epsilon\_{ikl}c\_ia\_kb\_l
    \\]

<!--list-separator-->

-  Relationship with kronecker delta

    \\[
    \epsilon\_{ijk}\epsilon\_{klm} = \delta\_{il}\delta\_{jm} - \delta\_{im}\delta\_{jl}
    \\]

    \\[
    \epsilon\_{ijk}\epsilon\_{pqr} = \mqty|\delta\_{ip} & \delta\_{iq} & \delta\_{ir} \\\ \delta\_{jp} & \delta\_{jq} & \delta\_{jr} \\\ \delta\_{kp} & \delta\_{kq} & \delta\_{kr}|
    \\]

    Variations:

    \\[
    \epsilon\_{ijk}\epsilon\_{ilm} = \delta\_{jl}\delta\_{km} - \delta\_{jm}\delta\_{kl}
    \\]


### Isotropic tensors {#isotropic-tensors}

Tensors whose component values are independent of coordinate frames are called isotropic (or invariant) tensors. Kronecker delta and Levi-civita (and scalar multiples) are the only second and third order isotropic tensors.
