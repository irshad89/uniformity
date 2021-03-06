require 'spec_helper'

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

describe UniformStocksController do

  # This should return the minimal set of attributes required to create a valid
  # UniformStock. As you add validations to UniformStock, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "uniform_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UniformStocksController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all uniform_stocks as @uniform_stocks" do
      uniform_stock = UniformStock.create! valid_attributes
      get :index, {}, valid_session
      assigns(:uniform_stocks).should eq([uniform_stock])
    end
  end

  describe "GET show" do
    it "assigns the requested uniform_stock as @uniform_stock" do
      uniform_stock = UniformStock.create! valid_attributes
      get :show, {:id => uniform_stock.to_param}, valid_session
      assigns(:uniform_stock).should eq(uniform_stock)
    end
  end

  describe "GET new" do
    it "assigns a new uniform_stock as @uniform_stock" do
      get :new, {}, valid_session
      assigns(:uniform_stock).should be_a_new(UniformStock)
    end
  end

  describe "GET edit" do
    it "assigns the requested uniform_stock as @uniform_stock" do
      uniform_stock = UniformStock.create! valid_attributes
      get :edit, {:id => uniform_stock.to_param}, valid_session
      assigns(:uniform_stock).should eq(uniform_stock)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new UniformStock" do
        expect {
          post :create, {:uniform_stock => valid_attributes}, valid_session
        }.to change(UniformStock, :count).by(1)
      end

      it "assigns a newly created uniform_stock as @uniform_stock" do
        post :create, {:uniform_stock => valid_attributes}, valid_session
        assigns(:uniform_stock).should be_a(UniformStock)
        assigns(:uniform_stock).should be_persisted
      end

      it "redirects to the created uniform_stock" do
        post :create, {:uniform_stock => valid_attributes}, valid_session
        response.should redirect_to(UniformStock.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved uniform_stock as @uniform_stock" do
        # Trigger the behavior that occurs when invalid params are submitted
        UniformStock.any_instance.stub(:save).and_return(false)
        post :create, {:uniform_stock => { "uniform_id" => "invalid value" }}, valid_session
        assigns(:uniform_stock).should be_a_new(UniformStock)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        UniformStock.any_instance.stub(:save).and_return(false)
        post :create, {:uniform_stock => { "uniform_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested uniform_stock" do
        uniform_stock = UniformStock.create! valid_attributes
        # Assuming there are no other uniform_stocks in the database, this
        # specifies that the UniformStock created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        UniformStock.any_instance.should_receive(:update).with({ "uniform_id" => "1" })
        put :update, {:id => uniform_stock.to_param, :uniform_stock => { "uniform_id" => "1" }}, valid_session
      end

      it "assigns the requested uniform_stock as @uniform_stock" do
        uniform_stock = UniformStock.create! valid_attributes
        put :update, {:id => uniform_stock.to_param, :uniform_stock => valid_attributes}, valid_session
        assigns(:uniform_stock).should eq(uniform_stock)
      end

      it "redirects to the uniform_stock" do
        uniform_stock = UniformStock.create! valid_attributes
        put :update, {:id => uniform_stock.to_param, :uniform_stock => valid_attributes}, valid_session
        response.should redirect_to(uniform_stock)
      end
    end

    describe "with invalid params" do
      it "assigns the uniform_stock as @uniform_stock" do
        uniform_stock = UniformStock.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        UniformStock.any_instance.stub(:save).and_return(false)
        put :update, {:id => uniform_stock.to_param, :uniform_stock => { "uniform_id" => "invalid value" }}, valid_session
        assigns(:uniform_stock).should eq(uniform_stock)
      end

      it "re-renders the 'edit' template" do
        uniform_stock = UniformStock.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        UniformStock.any_instance.stub(:save).and_return(false)
        put :update, {:id => uniform_stock.to_param, :uniform_stock => { "uniform_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested uniform_stock" do
      uniform_stock = UniformStock.create! valid_attributes
      expect {
        delete :destroy, {:id => uniform_stock.to_param}, valid_session
      }.to change(UniformStock, :count).by(-1)
    end

    it "redirects to the uniform_stocks list" do
      uniform_stock = UniformStock.create! valid_attributes
      delete :destroy, {:id => uniform_stock.to_param}, valid_session
      response.should redirect_to(uniform_stocks_url)
    end
  end

end
