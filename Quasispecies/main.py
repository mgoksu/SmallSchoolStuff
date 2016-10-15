'''
Created on Oct 12, 2016

@author: miracgoksuozturk
'''
import numpy as np

total_species = 10
total_population = 1000
total_iter = 100

Q = np.random.rand(total_species, total_species)
for i in xrange(Q.shape[0]):# Each row needs to add up to 1. Q.shape[0] is number of rows
    Q[i] = Q[i]/sum(Q[i])

f = np.random.rand(total_species)
x = np.random.rand(total_species)
x = x/sum(x) # normalization
x_pop = x * total_population # population of each species
x_dot = np.zeros(total_species) # change in the x(frequency)



for i in xrange(total_iter):
    print "iter %d : total population=%f" % (i,sum(x_pop))
    print "total change : %f" % sum(x_dot) 
    print x_pop
    aver_fit = f.T.dot(x) # average fitness. a scalar value
    x_dot = Q.T.dot(f*x) - aver_fit*x
    x = x + x_dot
    x_pop = x * total_population 
