# Linear Algebra

## Vectors

### Magnitude

* Given any vector ***v = [v<sub>1</sub>, v<sub>2</sub>, v<sub>3</sub>, ..., v<sub>n</sub>]*** :
* Magnitude(v) or ***||v|| = sqrt( v<sub>1</sub><sup>2</sup> + v<sub>2</sub><sup>2</sup> + v<sub>3</sub><sup>2</sup> + ... + v<sub>n</sub><sup>2</sup> )*** , or ***sqrt(sum(v<sub>i</sub><sup>2</sup>))***

---

### Direction

* Vector is an unit vector if ***||v|| = 1***
* Normalize(v) or ***u<sub>v</sub> = v / ||v||***
* Normalize(v) = unit vector pointing to the same direction as v
* **Zero vector has no normalization nor direction**

---

### Inner Product (Dot Product)
* inner_product(v, w) or ***v.w = ||v|| * ||w|| * cos(theta)*** , where theta = the shorter angle between v and w
* ***theta = arccos( v.w / (||v|| * ||w||) )***
* ***v.w = v<sub>1</sub> * w<sub>1</sub> + v<sub>2</sub> * w<sub>2</sub> + ... + v<sub>n</sub> * w<sub>n</sub>***

#### Cauchy- Schwarz Inequality
* Since ***-1 <= cos(x) <= 1*** and,
* ***v.w = ||v|| * ||w|| * cos(thetha)*** ,
* then ***\- ||v|| * ||w|| <= v.w. <= ||v|| * ||w||***
* ***abs(v.w) <= ||v|| * ||w||***

#### Facts 
Considering ***v*** and ***w*** different from 0:

1.

* if ***v.w = ||v|| * ||w||*** ,
* then cos(theta) = 1 and theta = 0
* so ***v*** and ***w*** points to same direction (they are scalar from each other)

2.

* if ***v.w = \- ||v|| * ||w||***,
* then cos(theta) = \-1  and theta = 180<sup>o</sup>
* so ***v*** and ***w*** points to oposite directions

3.

* if ***v.w = 0***,
* then cos(theta) = 0  and theta = 90<sup>o</sup>
* so ***v*** and ***w***are at a right angle to each other

4.

* ***v.v*** = ?,
* theta = 0, so cos(theta) = 1,
* v.v = ||v||<sup>2</sup>
* another aspect of magnitude: ***||v|| = sqrt(v.v)***

---

### Parallel and Orthogonal Vectors

* ***v*** and ***w*** are parallel if one is a scalar multiple of the other.
* ***v*** is parallel to 2v, 1/2v
* ***v*** a ***w*** are orthogonal if ***v.w = 0***

---

### Projecting Vectors

* Given any base vector **b**, let project a vector **v** onto **b**
* Let ***proj<sub>b</sub>v*** or ***v<sup>||</sup>*** be the projection of **v** onto **b** 
* Let **v** and **b** start at the same point, drawing a right triangle, then ***v<sup>||</sup>*** is adjacent leg and **v** is hypotenuse
* Then the oposite leg can be expressed as ***v<sup>&#10178;</sup>***
* Then ***v*** can be expressed as ***v<sup>||</sup> + v<sup>&#10178;</sup>***
* So: ***cos(theta) = ||v<sup>||</sup>|| / ||v||***
* Rearranging: ***||v<sup>||</sup>|| = ||v|| * cos(theta)***
* From dot product (v,b): ***cos(theta) = v.b / (||v|| * ||b||)***
* Replacing cos(theta): ***||v<sup>||</sup>|| = ||v|| * v.b / (||v|| * ||b||)***
* Canceling ||v||: ***||v<sup>||</sup>|| = v.b / ||b|| = v.u<sub>b</sub>*** , since ***b/||b|| = u<sub>v</sub>***
*
* ***||v<sup>||</sup>|| = v.u<sub>b</sub>***
* ***v<sup>||</sup>*** points in the same (oposite) direction as ***b***
* So ***||v<sup>||</sup>|| * u<sub>b</sub> = v<sup>||</sup>***
* Replacing ||v<sup>||</sup>||: ***(v.u<sub>b</sub>).u<sub>b</sub> = v<sup>||</sup>***
*
* So projection of **v** onto **b**, ***proj<sub>b</sub>v =  v<sup>||</sup> = (v.u<sub>b</sub>).u<sub>b</sub>***

---

### Cross Product

* Only exists in three dimensions
* Cross Product ***v<sub>x</sub>w*** is a vector orthogonal to both ***v*** and ***w***
* ***||v<sub>x</sub>w|| = ||v|| * ||w|| * sin(theta)***
* If ***v*** or ***w*** is zero vector, then ***v<sub>x</sub>w = 0***
* There are always 2 vectors resulting from the cross product
  * Which one is the right one? 
  * Use the "right hand" method: 
  * thumb pointing the first vector
  * indicator point to the second vector
  * middle finger indicates cross product direction :)
  * ***v<sub>x</sub>w = - (w<sub>x</sub>v)***
* Formula for ***v<sub>x</sub>w*** :
  * if  ***v = [x<sub>1</sub>, y<sub>1</sub>, z<sub>1</sub>]*** , and ***w = [x<sub>2</sub>, y<sub>2</sub>, z<sub>2</sub>]*** ,
  * then ***v<sub>x</sub>w = [y<sub>1</sub> * z<sub>2</sub> - y<sub>2</sub> * z<sub>1</sub>, -(x<sub>1</sub> * z<sub>2</sub> - x<sub>2</sub> * z<sub>1</sub>), x<sub>1</sub> * y<sub>2</sub> - x<sub>2</sub> * y<sub>1</sub>]***
  
---
  
## Intersections
  
### Example
  
* "Flat Objects" = defined by **linear** equations
* Linear equations:
  * add and subtract variables and constants
  * multiply a variable by a constant
  * Examples:
    * x + 2y = 1, y/2 -2z =x
   * Nonlinear:
     * x<sup>2</sup> - 1  = y, y/x = 3
  
* In real world, equations come from observed or modeled relationships between real-rowld quantities.

Suppose a stock-tranding situation, where I have 2 options (A and B) to put in the portfolio.

* w<sub>A</sub> = proportion of portfolio invested in A
* w<sub>B</sub> = proportion of portfolio invested in B
* So ***0 <= w<sub>A</sub>, w<sub>B</sub> <= 1*** , and ***w<sub>A</sub> + w<sub>B</sub> = 1***  
* &beta;-value = measure of correlation of a stock's price movements with market movements
* &beta; of portfolio = weighted average of individual components's &beta;-values
* So, if ***&beta;<sub>A</sub> = -1, &beta;<sub>B</sub> = 2***   &rArr;  ***&beta;<sub>Portfolio</sub> = w<sub>A</sub> * (-1) + w<sub>B</sub> * (2) =  2w<sub>B</sub> - w<sub>A</sub>***
* ***&beta;<sub>Portfolio</sub> = 0*** means portifolio is uncorrelated with the market, with minimum market risk.
* Finding the intersecion betweeh the 2 equations, tells the weight of each stock in the portfolio to minimize market risk.

### Line in 2 dimensions

Pieces that define a linke:
* Basepoint: **x<sub>0</sub>>**
* Direction vector **v**
* Any point at the line can be described as ***x(t) = x<sub>0</sub> + t * v***
* The line can be represented as ***Ax + By = k*** , 
  * the base points as ***k/B*** and ***k/A***
  * the direction vector as ***[B,-A]***
* The line = set of points (x,y) such that ***[A B] * [x y] = k***
* Vector ***[A, B]*** = normal vector of the line (also orthogonal to the line)

### Intersecions of lines in 2D

* If 2 lines have parallel normal vectors, they are parallel
* How find nonparallel lines intersecion?
  * Given 2 nonparallel lines:
    * ***Ax + By = k<sub>1</sub>***
    * ***Cx + Dy = k<sub>2</sub>***
  * The intersection point is defined by:
    * ***x = (D * k<sub>1</sub> - B * k<sub>2</sub>) / (A * D - B * C)***
    * ***y = (-C * k<sub>1</sub> + A * k<sub>2</sub>) / (A * D - B * C)***





