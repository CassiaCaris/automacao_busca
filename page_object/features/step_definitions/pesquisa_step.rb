Dado(/^que estou na home do google$/) do
  @home = HomePage.new
  @home.google
  @pesquisa = BuscaPage.new
end

Quando(/^Realizar a busca pela estadao economia$/) do
	@pesquisa.campo
	@pesquisa.logo
	@pesquisa.botao
end

Quando(/^selecionada a página do Estadao$/) do
	@pesquisa.selecao
end

Entao(/^estarei no portal de economia$/) do
	@pesquisa.validacao
end