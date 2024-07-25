using Pkg
Pkg.add("Plots")
using Plots

#Intervalo incial:

a = 6
b = 8

#

v = 100 #Velocidade
g = 9.8 #Gravidade
c = 27 #Taxa de consumo
M0 = 1600 #Massa
u = 200 #Velocidade de exaustão

f(t) = (u*log(M0/(M0 - (c*t))) + g*t) - v #Função da velocidade

count = 1

while (true) #Iteração
    global a
    global b

    global count += 1 #Contador

    if(f(a)*f(b) < 0) #Teorema de Bolzano
        x = (a + b)/2 #TVM

        if (f(a) * f(x)) < 0 #Teorema de Bolzano (Entre A e X)
            b = x
        end

        if(f(b) * f(x) < 0) #Teorema de Bolzano (Entre X e B)
            a = x
        end


        if(abs(f(x)) < 0.008) #Critério de parada
            print(x) #Raiz
            print('\n')
            break
        end
    end
end