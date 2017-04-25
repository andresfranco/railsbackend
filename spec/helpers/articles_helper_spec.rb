require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ArticlesHelper. For example:
#
# describe ArticlesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ArticlesHelper, type: :helper do
  it "should work method" do
    article = Article.create(:title => "Test Title", :body => "Test Body")
    expect(article_title(article)).to eq("Titulo: "+article.title)

   end

   it "should show deffect title" do
     article = Article.create(:title => nil, :body => "Test Body")
     expect(article_title(article)).to eq("Titulo por defecto")

    end
end
