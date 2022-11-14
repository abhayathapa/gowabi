require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/shops', type: :request do
  let(:valid_attributes) do
    { name: 'Shop 1',
      latitude: 0.13736717e2,
      longitude: 0.100526186e3,
      category: Category.create("name": 'Nails', "color": 'green') }
  end

  describe 'GET /index' do
    before do
      Shop.create! valid_attributes
      get shops_url
    end

    it 'renders a successful response' do
      expect(response).to be_successful
    end

    it 'sets proper data attributes for map' do
      expect(response.body).to include('data-latitude=13.736717')
      expect(response.body).to include('data-longitude=100.526186')
      expect(response.body).to include('data-color=green')
    end
  end
end
