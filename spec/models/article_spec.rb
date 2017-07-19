require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:article) { Article.create(title: 'Sample', body: 'body here', category: 'for funsies') }

  it 'has a title'

  it 'has a body'

  it 'has an author'

  it 'has a category'

end
