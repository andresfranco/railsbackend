require 'rails_helper'

RSpec.describe Article, type: :model do
  it "is invalid without a title" do
     article = Article.new(title: nil)
     article.valid?
     expect(article.errors[:title]).to include("can't be blank")
  end

  it "is invalid without a body" do
     article = Article.new(body: nil)
     article.valid?
     expect(article.errors[:body]).to include("can't be blank")
  end
end
