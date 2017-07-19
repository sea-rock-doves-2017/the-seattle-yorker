require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:article) { Article.create(title: 'Hamz All da Way', body: 'hamz hamz hamz times 50', author: 'Sir Hamzalot', category: 'for funsies') }

  it 'has a title' do
    expect(article.title).to eq 'Hamz All da Way'
  end

  it 'has a body' do
    expect(article.body).to eq 'hamz hamz hamz times 50'
  end

  it 'has an author' do
    expect(article.author).to eq 'Sir Hamzalot'
  end

  it 'has a category' do
    expect(article.category).to eq 'for funsies'
  end

end
