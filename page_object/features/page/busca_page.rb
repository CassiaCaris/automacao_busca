# Classe que contem todas as informações da busca
class BuscaPage
  include Capybara::DSL

  def campo
  	fill_in id: "lst-ib", with: "estadao economia"
  end

  def logo
  	find(:id, 'hplogo').click
  end

  def botao
  	find(:xpath, '//*[@id="tsf"]/div[2]/div[3]/center/input[1]').click
  end

  def selecao
  	find(:xpath, '//*[@id="rso"]/div[1]/div/div/div/div/h3/a').click
  end

  def validacao
  	has_content?("Economia & Negócios")
  end
 end