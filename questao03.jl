using Pkg
Pkg.add("Plots")
using Plots
Pkg.add("ForwardDiff")
using ForwardDiff 
Pkg.add("Printf")
using Printf

global tolerancia = 0.0001 #tolerancia (critério de parada)

#resolve raíz de equação por método de Newton
#=
  | f -> função a ser resolvida
  | x -> valor inicial pelo qual se iniciará a aproximação
=#
function newton_method(f, x)
  contador = 0

  while true
    @printf("%d | x = %lf | f(%f) = %.6f\n",contador, x, x, f(x))
    if f(x) < tolerancia #Se for menor que a tolerância pré definida então se obteve uma boa aproximação
      @printf("Raiz da equação -> x = %lf\n", x)
      break
    end
    x = x - f(x)/ForwardDiff.derivative(f, x) #x(n+1) = x(n) - f(x(n))/f'(x(n))
    contador+=1 #incrementa contador
  end
end

#Questão 07
f_valor = 2499 #valor financiado
p = 249 #valor da parcela
n = 12.0 #número de parcelas

i = 0:100 #intervalo do domínio da função

#Função que representa a equação
f(i) = ((f_valor*i)/(1-(1+i)^(-n))) - p

#Chamada do método de Newton
newton_method(f, 15)
