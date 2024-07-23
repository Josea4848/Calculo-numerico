#Questão 02 - Aplicação em Física

#Função que retorna valor lógico
#true => um número é negativo e o outro é positivo
#false => dois negativos ou dois positivos
function TVM(y1, y2)
  return y1*y2 < 0 
end

#considere x <=> t
alpha = 0.1 #0.1 kgf
s = 32 #s é o comprimento do cabo (em metro)
l = 30 #l é a distância entre os postes (em metro/)
tolerancia = 0.01 #tolerância

#definição do intervalo inicial
x1 = 2
x2 = 3

#função 
f(x) = (2*x*sinh((alpha*l)/(2*x)))/alpha - s

k = 0 #variável para contagem
println("ak | bk | x(k+1) | f(ak) | f(bk) | f(x(k+1))")
while true
  ponto_medio_x = (x1 + x2)/2
  ponto_medio_y = f(ponto_medio_x)

  println("$(k) | $(x1) | $(x2) | $(ponto_medio_x) | $(f(x1)) | $(f(x2)) | $(ponto_medio_y)")

  if abs(ponto_medio_y) < tolerancia
    break
  end

  if TVM(ponto_medio_y, f(x1))
    global x2 = ponto_medio_x
  else
    global x1 = ponto_medio_x
  end
  global k += 1

end
