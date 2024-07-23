#Pkg.add("Plots")
using Plots
#v = u.ln(M0/(M0 -c.t))+g.t
#M0 = 1600, g = 9.8 q = 27, v = 100, u = 200

#intervalo [6, 8]

v = 100
g = 9.8
c = 27
M0 = 1600
u = 200

t = 0:100
f(t) = (u*log(M0/(M0 - (c*t))) + g*t) - v


#plot(f(t), )

# print(f(8))
# print('\n')
# print(f(6))
display(plot(t,f))
readline()