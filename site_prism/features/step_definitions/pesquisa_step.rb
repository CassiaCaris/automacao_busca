Dado("que estou na home do google") do
  @home = Home.new
  @home.load
  @pesquisa = Pesquisa.new
end

Quando("Realizar a busca pela {string}") do |string|
  @pesquisa.busca(string)
end

Quando("selecionada a pagina do Estadao") do
  @pesquisa.resultado
end

Entao("estarei no portal de economia") do
  @pesquisa.valida
end