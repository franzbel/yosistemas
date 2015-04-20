require 'spec_helper'

describe EventosController do
  before(:each) do
    controller.class.skip_before_filter :require_log_in #para evitar este filtro de application_controller

  end

  #ATENCION: El uso de factory girl ayuda a hacer los specs m'as simples. Sin embargo, tambi'en m'as lentos ya 
  # que acceden a la BD en lugar de mocks o stubs
  describe 'GET #index' do
    it "obtiene todos los temas de grupo publico" do  
      grupo = FactoryGirl.create(:grupo_publico)
      evento1 = FactoryGirl.create(:evento)
      evento2 = FactoryGirl.create(:evento)

      grupo.eventos << evento1
      evento1.grupos_pertenece << grupo
      
      grupo.eventos << evento2
      evento2.grupos_pertenece << grupo

      get :index
      
      expect(assigns(:eventos)).to start_with(evento1)
      expect(assigns(:eventos)).to end_with(evento2)
      expect(assigns(:grupo)).to eq(grupo)
    end
  end
  it "obtiene grupo publico" do
    grupo = FactoryGirl.create(:grupo_publico)
  end
end

=begin
    it "obtiene todos los temas del grupo especificado" do  
      grupo = FactoryGirl.create(:grupo)
      
      tema1 = FactoryGirl.create(:tema, titulo: 'Tema 1')
      tema2 = FactoryGirl.create(:tema, titulo: 'Tema 2')

      grupo.temas << tema1
      tema1.grupos_pertenece << grupo
      tema1.grupos_dirigidos << grupo.id.to_s

      grupo.temas << tema2
      tema2.grupos_pertenece << grupo
      tema2.grupos_dirigidos << grupo.id.to_s      

      grupo.save
      tema1.save
      tema2.save
      
      get :index, :id => grupo.id
      
      expect(assigns(:temas)).to start_with(tema1)
      expect(assigns(:temas)).to end_with(tema2)
      expect(assigns(:grupo)).to eq(grupo)
    end

    it "muestra la vista index" do
      grupo = FactoryGirl.create(:grupo_publico)

      get :index
      
      expect(response).to render_template :index
    end
  end
=end
