using Pkg
Pkg.add("Plots")
using Plots
#v = u.ln(M0/(M0 -c.t))+g.t
#M0 = 1600, g = 9.8 q = 27, v = 100, u = 200

#intervalo [6, 8]

a = 6
b = 8

v = 100
g = 9.8
c = 27
M0 = 1600
u = 200

f(t) = (u*log(M0/(M0 - (c*t))) + g*t) - v

while (true)
    global a
    global b

    if(f(a)*f(b) < 0)
        x = (a + b)/2

        if (f(a) * f(x)) < 0
            b = x
        end

        if(f(b) * f(x) < 0)
            a = x
        end

        if((b-a) < 0.008)
            print(x)
            print('\n')
            print(f(x))
            print('\n')
            break
        end
    end
end

# print(f(8))
# print('\n')
# print(f(6))
