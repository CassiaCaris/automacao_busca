Dado(/^que estou na home do google$/) do
  visit "http://www.google.com.br/" 
end

Quando(/^Realizar a busca pela estadao economia$/) do
 
fill_in id: "lst-ib", with: "estadao economia"
find(:id, 'hplogo').click
find(:xpath, '//*[@id="tsf"]/div[2]/div[3]/center/input[1]').click

end

Quando(/^selecionada a página do Estadao$/) do
  
find(:xpath, '//*[@id="rso"]/div[1]/div/div/div/div/h3/a').click
  
end

Entao(/^estarei no portal de economia$/) do
  
  has_content?("Economia & Negócios")                         
  
end