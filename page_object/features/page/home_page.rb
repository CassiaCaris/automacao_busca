# Classe para carregar a home do Google !
class HomePage
  include Capybara::DSL
 
  def google
    visit 'http://www.google.com'
  end
end