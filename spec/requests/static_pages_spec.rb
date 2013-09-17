require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do
	it "Quero ver o conteudo 'Me Ajuda Nisso'" do
    	visit '/static_pages/home'
    	page.should have_content('Me Ajuda Nisso')
    end	
  end
  
  describe "Help Page" do
  	it "Quero ver o conteudo 'Ajuda'"do
  		visit '/static_pages/help'
  		page.should have_content('Ajuda')
  	end
  end
  
  describe "About page" do
  	it "Quero ver o conteudo 'Sobre'" do
  		visit '/static_pages/about'
  		page.should have_content('Sobre')
  	end
  end
  describe "Contact page" do
  	it "Quero ver no h1 'Contato'" do
  		visit '/static_pages/contact'
  		page.should have_content('Contato')
  	end
  end 
   	 
end
