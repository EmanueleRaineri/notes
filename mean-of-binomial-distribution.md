

# Mean of binomial distribution

The mean of a binomial distribution for \(N\) trials with probability of 
success \(\mu\) is \(N\mu\). This can be derived either by writing the binomial
ditribution as a sum of Bernoulli random variables each with probability of
success \(\mu\) or by computing explicitly the sum
\[
\sum_{k=0}^N k {N \choose k} \mu^k(1-\mu)^{N-k}
\]

In this second case the derivation is as follows:

\begin{eqnarray*}
\sum_{k=0}^N k {N \choose k} \mu^k(1-\mu)^{N-k} & = & \sum_{k=1}^N k 
	     {N \choose k} \mu^k(1-\mu)^{N-k}\\
 & = & N \sum_{k=1}^N  {N-1 \choose k-1} \mu^k(1-\mu)^{N-k} 
 \ [\mbox{using}\ {N \choose k} = \frac{N}{k} {N-1 \choose k-1}] \\
 & = &  N\sum_{t=0}^{s+1}\mu {s \choose t} \mu^t(1-\mu)^{s-t} 
 \ [\mbox{with}\ s=N-1, t=k-1]\\
 & = & N\mu
\end{eqnarray*}

A good list of properties for manipulating binomials is chapter 1 (p.55)
of Knuth's TAOCP (Volume 1).

