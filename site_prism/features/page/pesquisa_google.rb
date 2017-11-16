# Passo a passo da execucao do teste automatizado usando site_prism
class Pesquisa < SitePrism::Page
	element :campo, :id, 'lst-ib'
	element :logo_home, :id, 'hplogo'
	element :link, :xpath, '//*[@id="tsf"]/div[2]/div[3]/center/input[1]'
	element :link_pesq, :xpath, '//*[@id="rso"]/div[1]/div/div/div/div/h3/a'

def busca(text_busca)
	campo.set text_busca
	logo_home.click
	link.click
end

def resultado
	link_pesq.click
end

def Valida
	has_content?('Economia & Negócios')
end
end
