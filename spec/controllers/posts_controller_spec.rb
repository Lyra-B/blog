require 'rails_helper'
describe PostsController do
  describe 'GET #index' do
    context 'when there are posts' do
      it 'renders the page' do
        @posts = FactoryGirl.create_list(:post, 10)

        get :index

        expect(response).to render_template(:index)

      end
    end

    context 'when there are no posts' do
      it 'renders the page with a no posts warning' do
        @posts = []

        get :index
        
        expect(response).to render_template(:index)

        expect(flash[:notice]).to match(/^There are no posts here yet!/)
      end
    end
  end
end
