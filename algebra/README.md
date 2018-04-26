# Linear Algebra

### Magnitude

* Given any vector v = [v<sub>1</sub>, v<sub>2</sub>, v<sub>3</sub>, ..., v<sub>n</sub>]:
* Magnitude(v) = sqrt( v<sub>1</sub><sup>2</sup> + v<sub>2</sub><sup>2</sup> + v<sub>3</sub><sup>2</sup> + ... + v<sub>n</sub><sup>2</sup> ), or sqrt(sum(v<sub>i</sub><sup>2</sup>))

---

### Direction

* Vector is an unit vector if magnitude(v) = 1
* Normalize(v) = v / magnitude(v)
* Normalize(v) = unit vector pointing to the same direction as v
* **Zero vector has no normalization nor direction**

---

### Inner Product (Dot Product)
* inner_product(v, w) = v.w = magnitude(v) * magnitude(w) * cos(theta), where theta = the shorter angle between v and w
* theta = arccos( v.w / (magnitude(v) * magnitude(w)) )
* v.w = v<sub>1</sub> * w<sub>1</sub> + v<sub>2</sub> * w<sub>2</sub> + ... + v<sub>n</sub> * w<sub>n</sub>

#### Cauchy- Schwarz Inequality
* Since -1 <= cos(x) <= 1 and,
* v.w = magnitude(v) * magnitude(w) * cos(thetha),
* \- magnitude(v) * magnitude(w) <= v.w. <= magnitude(v) * magnitude(w)
* abs(v.w) <= magnitude(v) * magnitude(w)

#### Facts 
Considering v and w different from 0:

1.

* if v.w = magnitude(v) * magnitude(w),
* then cos(theta) = 1 and theta = 0
* so v and w points to same direction (they are scalar from each other)

2.

* if v.w = \- magnitude(v) * magnitude(w),
* then cos(theta) = \-1  and theta = 180<sup>o</sup>
* so v and w points to oposite directions

3.

* if v.w = 0,
* then cos(theta) = 0  and theta = 90<sup>o</sup>
* so v and w are at a right angle to each other

4.

* v.v = ?,
* theta = 0, so cos(theta) = 1,
* v.v = magnitude(v)<sup>2</sup>
* another aspect of magnitude: magnitude(v) = sqrt(v.v.)

---

### Parallel and Orthogonal Vectors

* v and w are parallel if one is a scalar multiple of the other.
* v is parallel to 2v, 1/2v
* v a w are orthogonal if v.w = 0

