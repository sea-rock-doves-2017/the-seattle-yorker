require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  let!(:article) { Article.create(title: 'Hamz All da Way', body: 'hamz hamz hamz times 50', author: 'Sir Hamzalot', category: 'for funsies') }

  describe 'GET #index' do
    before(:each) { get :index }
    it 'responds with status code 200' do
      expect(response.status).to eq 200
    end

    it 'assigns the @articles variable with a value' do
      expect(assigns[:articles]).to eq (Article.all)
    end
  end

  describe 'GET #show' do
    it 'responds with status code 200' do
    expect(response.status).to eq 200
    end

    it 'assigns the @article variable with a value' do
      get :show, params: {id: article.id}
      expect(assigns[:article]).to eq article
    end
  end

end
