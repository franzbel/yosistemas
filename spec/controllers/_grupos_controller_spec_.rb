require 'spec_helper'

describe GruposController do
  before(:each) do
    controller.class.skip_before_filter :require_log_in #para evitar este filtro de application_controller

  end

  # describe 'GET #buscar' do
  #   it "obtiene grupo que coincide con el nombre" do  
  #     grupo1 = FactoryGirl.create(:grupo, nombre: 'grupo 1')
  #     grupo2 = FactoryGirl.create(:grupo, nombre: 'grupo 2')
      
  #     get :buscar, {:grupo=>"1", :nombre=>"1"}
      
  #     expect(assigns(:grupos)).to match_array([grupo1])
  #   end

  #   it "renderiza a la vista index" do
  #     get :buscar, {:grupo=>"1"}
      
  #     expect(response).to render_template :index
  #   end
  # end
  # it " buscar" do

  # end
   # it "obtiene todos los temas de grupo publico" do  
   #    grupo = FactoryGirl.create(:grupo_publico)
   #    evento1 = FactoryGirl.create(:evento)
   #    evento2 = FactoryGirl.create(:evento)

   #    grupo.eventos << evento1
   #    evento1.grupos_pertenece << grupo
      
   #    grupo.eventos << evento2
   #    evento2.grupos_pertenece << grupo

   #    get :index
      
   #    expect(assigns(:eventos)).to start_with(evento1)
   #    expect(assigns(:eventos)).to end_with(evento2)
   #    expect(assigns(:grupo)).to eq(grupo)
   #  end
   it "obtiene todos los temas de grupo publico" do  
      grupo = FactoryGirl.create(:grupo_publico)
      tema1 = FactoryGirl.create(:tema, titulo: 'Tema 1')
      tema2 = FactoryGirl.create(:tema, titulo: 'Tema 2')

      #grupo = Grupo.find(1)  #grupo publico
      grupo.temas << tema1
      tema1.grupos_pertenece << grupo
      grupo.temas << tema2
      tema2.grupos_pertenece << grupo

      get :index
      
      expect(assigns(:temas)).to start_with(tema1)
      expect(assigns(:temas)).to end_with(tema2)
      expect(assigns(:grupo)).to eq(grupo)
    end
end
