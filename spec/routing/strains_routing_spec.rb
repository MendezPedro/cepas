require 'rails_helper'

RSpec.describe StrainsController, type: :controller do
    context 'test' do
        it 'index displays all strains' do 
            strains = Strain.create(name: 'faviloco')
            get :index
            expect(assigns(:strains)).to eq([strains])
            expect(get: '/strains').to route_to("strains#index")
        end

        it 'renders index template' do 
            expect(get :index).to render_template('index')
        end

        it 'renders show template' do 
            strain = Strain.create(name: 'merlot')
            expect(get: "/strains/#{strain.id}").to route_to('strains#show', id: strain.id)
        end
    end
end
