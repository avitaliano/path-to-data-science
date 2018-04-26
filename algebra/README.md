# Linear Algebra

### Magnitude

* Given any vector v = [v<sub>1</sub>, v<sub>2</sub>, v<sub>3</sub>, ..., v<sub>n</sub>]:
* Magnitude(v) = sqrt( v<sub>1</sub><sup>2</sup> + v<sub>2</sub><sup>2</sup> + v<sub>3</sub><sup>2</sup> + ... + v<sub>n</sub><sup>2</sup> ), or sqrt(sum(v<sub>i</sub><sup>2</sup>))

### Direction

* Vector is an unit vector if magnitude(v) = 1
* Normalize(v) = v / magnitude(v)
* Normalize(v) = unit vector pointing to the same direction as v
* **Zero vector has no normalization nor direction**

### Inner Product (Dot Product)
* inner_product(v, w) = v.w = magnitude(v) * magnitude(w) * cos(theta), where theta = the shorter angle between v and w
* theta = arccos( v.w / (magnitude(v) * magnitude(w)) )
* v.w = v<sub>1</sub> * w<sub>1</sub> + v<sub>2</sub> * w<sub>2</sub> + ... + v<sub>n</sub> * w<sub>n</sub>

### Parallel and Orthogonal Vectors

* v and w are parallel if one is a scalar multiple of the other.
* v is parallel to 2v, 1/2v
* v a w are orthogonal if v.w = 0

