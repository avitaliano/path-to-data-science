# Change Interval

# Typical Tranding Dat 70.000 data points for any given stock
# delta_t = ( X(t+1) - X(t) ) / X(t)
# mean(delta_t) = -0.00074%
# sd(delta_t) = 0.01344%
# Calculate confidence interval 5%, magic number 1.96:
delta_t.mean = -0.00074
delta_t.sd = 0.01344

lower_ci <- delta_t.mean - delta_t.sd * 1.96
upper_ci <- delta_t.mean + delta_t.sd * 1.96

# how frequent does this trigger?
0.05 * 70000
# 3500 is too much
# to trigger once in a decade, we will use the magic number 6.5
lower_ci <- delta_t.mean - delta_t.sd * 6.5
upper_ci <- delta_t.mean + delta_t.sd * 6.5

# testing trigger:
x = c(286.83, 286.85)
delta_t = (x[2] - x[1])/x[1] * 100
# is this abnormal?
delta_t < lower_ci || delta_t > upper_ci # no. it's inside the ci.

x = c(247.6, 247.55)
delta_t = (x[2] - x[1])/x[1] * 100
delta_t < lower_ci || delta_t > upper_ci # no. it's inside the ci.

x = c(242.5, 240)
delta_t = (x[2] - x[1])/x[1] * 100
delta_t < lower_ci || delta_t > upper_ci # yes.

x = c(205.71, 201)
delta_t = (x[2] - x[1])/x[1] * 100
delta_t < lower_ci || delta_t > upper_ci # yes.
