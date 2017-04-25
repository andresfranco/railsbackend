require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe ArticlesController, type: :controller do

  let!(:first_article)  { Article.create(:title => "Test Title", :body => "Test Body")}

    describe "GET 'index'" do
      before { get :index }

      it "assigns @articles" do
        expect(assigns(:articles)).to eq([first_article])
      end

      it "renders the index template" do
        expect(response).to render_template("index")
      end
    end

    describe "GET 'show'" do
   before { get :show , :id => first_article.id }

   it "assigns @article" do
     expect(assigns(:article)).to eq(first_article)
   end

   it "renders the show template" do
     expect(response).to render_template("show")
   end
 end

 describe "GET 'new'" do
     before { get :new }

     it "assigns @article" do
       expect(assigns(:article)).to be_a_new(Article)
     end

     it "renders the new template" do
       expect(response).to render_template("new")
     end
   end

   describe "POST 'create'" do
       context "when valid" do
         before { post :create, :article => {:title => "Test Title", :body => "Test Body"} }

         it "will redirect to articles path" do
           expect(response).to redirect_to(articles_path)
         end

         it "will set flash[:notice]" do
           expect(flash[:notice]).to be_present
         end
       end
       context "when invalid" do
      before { post :create, :article => {:title => "Test Title", :body => ""} }

      it "will render new template" do
        expect(response).to render_template("new")
      end
      it "will set flash[:error]" do
        expect(flash[:error]).to be_present
      end

    end
  end

  describe "GET 'edit'" do
    before { get :edit, :id => first_article.id }

    it "assigns @post" do
      expect(assigns(:article)).to eq(first_article)
    end

    it "renders the edit template" do
      expect(response).to render_template("edit")
    end
  end

  describe "PUT 'update'" do
      context "when success" do
        before { put :update, :article => {:title => "Update Title", :body => "Update Body"},:id => first_article.id }

        it "will redirect to root path" do
          expect(response).to redirect_to article_path
        end

        it "will set flash[:notice]" do
          expect(flash[:notice]).to be_present
        end
      end

      context "when not success" do
        before { put :update, :article => {:title => "", :body => ""},:id => first_article.id }

        it "will render new template" do
          expect(response).to render_template("edit")
        end

        it "will set flash[:error]" do
          expect(flash[:error]).to be_present
        end
      end
    end

    describe "DELETE 'destroy'" do
      before { delete :destroy, :article =>{:id => first_article.id} ,:id => first_article.id}

      it " will redirect to articles path" do
        expect(response).to redirect_to articles_path
      end


      it "will set flash[:notice]" do
        expect(flash[:notice]).to be_present
      end
    end


end
