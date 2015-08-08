require 'rails_helper'

RSpec.describe RestaurantsController, type: :controller do

  describe "POST #create" do
    context 'with valid attributes' do
      it 'will save a new post' do
        expect{
          post :create, restaurant: FactoryGirl.attributes_for(:restaurant)
        }.to change(Restaurant, :count).by 1
      end
      it 'will redirect to the index page' do
        post :create, restaurant: FactoryGirl.attributes_for(:restaurant)
        expect(response).to redirect_to :action => :index
      end
    end
    context 'with invalid attributes' do
      it 'will not save a new post' do
        expect{
          post :create, restaurant: FactoryGirl.attributes_for(:invalid_restaurant)
        }.not_to change(Restaurant, :count)
      end
      it 'will flash a not saved message' do
         post :create, restaurant: FactoryGirl.attributes_for(:invalid_restaurant)
         expect(flash[:alert]).to be_present
      end
    end
  end

end
