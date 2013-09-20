require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do
	it "Quero ver o conteudo 'Me Ajuda Nisso'" do
    	visit root_path
    	page.should have_content('Me Ajuda Nisso')
    end	
  end
  
  describe "Help Page" do
  	it "Quero ver o conteudo 'Ajuda'"do
  		visit help_path
  		page.should have_content('Ajuda')
  	end
  end
  
  describe "About page" do
  	it "Quero ver o conteudo 'Sobre'" do
  		visit about_path
  		page.should have_content('Sobre')
  	end
  end
  describe "Contact page" do
  	it "Quero ver no h1 'Contato'" do
  		visit contact_path
  		page.should have_content('Contato')
  	end
  end 
   	 
end

