---
title: Harmonic series
---

$\forall n > 1, n \in \mathbb{Z}: \log(n + 1) < \sum_{k=1}^{n} \frac{1}{k} < 1 + \log(n)$

To prove this, use the fact that

$$\forall x \ge 0: \frac{1}{x+1} < \frac{1}{\max(1, \left\lceil x \right\rceil)} \le \frac{1}{\max(1,x)}$$

~~~ {.run_python}
import matplotlib.pyplot as plt
import numpy as np
x=np.linspace(0,3, 1000)
plt.figure(figsize=(5,4))
plt.grid(True)
p1, = plt.plot(x,1/np.maximum(x, 1))
p2, = plt.plot(x,1/np.maximum(np.ceil(x), 1))
p3, = plt.plot(x,1/(x+1))
axes = plt.gca()
axes.set_ylim([0, 1.2])
plt.legend([p1,p2,p3], [r'$\frac{1}{\max(x,1)}$', r'$\frac{1}{\max(1, \left\lceil x \right\rceil)}$', r'$\frac{1}{x + 1}$'])
plt.savefig("img.png", bbox_inches='tight')
return inline_image("img.png")
~~~

Integrate this to get initial inequality. 