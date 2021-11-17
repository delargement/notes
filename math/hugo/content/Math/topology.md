+++
title = "Topology"
draft = false
+++

## Set theory {#set-theory}


### Inverse functions {#inverse-functions}

If f : A -> B,

\\[
f^{-1}(B\_0) = \\{a \vert f(a) \in B\_0\\}
\\]


### Relations {#relations}


#### Equivalence relations {#equivalence-relations}

If there is a equivalence relation C on A it has the following properties,

1.  Reflexivity: xCx for every x in A.
2.  Symmetry: if xCy, then yCx.
3.  Transitivity: if xCy and yCz, then xCz.

A **equivalence class** determined by x is given by:

\\[
E = \\{y \vert y \sim x\\}
\\]

**Lemma**: Two equivalence classes E and E' are either disjoint or equal.

**Partition**: Collection of disjoint nonempty subsets of A whose union is all of A.

Note that given any partition of A, there is exactly one equivalence relation from which it is derived.

**Example**: Define two points in the plane to be equivalent is they lie at the same distance from the origin. Then it is a equivalence relation and the collection of equivalence classes consists of all circles centered at the origin, along with the origin alone.


#### Order relation {#order-relation}

1.  (Comparability) For every x and y in A for which x != y, either xCy or yCx.
2.  (Nonreflexivity) For no x in A does the relation xCx hold.
3.  (Transitivity) If xCy and yCz, then xCz.

(a,b) is then the set {x | a < x < b}, which is an open interval. If the set is empty, a (b) is the immediate predecessor (sucessor) of b (a).

**Order type**: A and B have the same order type if there is a bijective correspondence between them that preserves order.

**Dictionary order**: A "lexicographic" order relation for cartesian products.

**Least upper bound property**: An ordered set A has the lub property if every nonempty subset A\_0 of A that is bounded above has a least upper bound. The greatest lowerbound property is defined similarly.


#### Size of set {#size-of-set}

1.  A is finite if \\(A \sim J\_n\\) for some n, where \\(J\_n\\) is the set whose elements are the integers 1 to n.
2.  A is infinite if A is not finite/ A is equivalent to one of its proper subsets.
3.  A is countable if \\(A \sim J\\)
4.  A is uncountable if A is neither finite nor countable
5.  A is at most countable if A is finite or countable

**Corollaries**:

-   Set of all integers is countable

**Proof**: The set of all integers is countable as we can set up a 1-1 correspondence: \\(f(n) = n/2\\) when n is even, and \\(f(n) = - (n-1)/2\\) when n is odd.

-   Every infinite subset of a countable set A is countable

-   The union of a sequence of countable sets is countable: Cantor diagonalisation

-   If \\(A\\) is a countable set, and \\(B\_n\\) is the set of all n-tuples \\((a\_1,\ldots,a\_n)\\), where \\(a\_k \in A (k = 1,\ldots,n)\\) and the elements \\(a\_1, \ldots, a\_n\\) need not be distinct. Then \\(B\_n\\) is countable
