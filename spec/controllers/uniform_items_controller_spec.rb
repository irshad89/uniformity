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

describe UniformItemsController do

  # This should return the minimal set of attributes required to create a valid
  # UniformItem. As you add validations to UniformItem, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "code" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UniformItemsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all uniform_items as @uniform_items" do
      uniform_item = UniformItem.create! valid_attributes
      get :index, {}, valid_session
      assigns(:uniform_items).should eq([uniform_item])
    end
  end

  describe "GET show" do
    it "assigns the requested uniform_item as @uniform_item" do
      uniform_item = UniformItem.create! valid_attributes
      get :show, {:id => uniform_item.to_param}, valid_session
      assigns(:uniform_item).should eq(uniform_item)
    end
  end

  describe "GET new" do
    it "assigns a new uniform_item as @uniform_item" do
      get :new, {}, valid_session
      assigns(:uniform_item).should be_a_new(UniformItem)
    end
  end

  describe "GET edit" do
    it "assigns the requested uniform_item as @uniform_item" do
      uniform_item = UniformItem.create! valid_attributes
      get :edit, {:id => uniform_item.to_param}, valid_session
      assigns(:uniform_item).should eq(uniform_item)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new UniformItem" do
        expect {
          post :create, {:uniform_item => valid_attributes}, valid_session
        }.to change(UniformItem, :count).by(1)
      end

      it "assigns a newly created uniform_item as @uniform_item" do
        post :create, {:uniform_item => valid_attributes}, valid_session
        assigns(:uniform_item).should be_a(UniformItem)
        assigns(:uniform_item).should be_persisted
      end

      it "redirects to the created uniform_item" do
        post :create, {:uniform_item => valid_attributes}, valid_session
        response.should redirect_to(UniformItem.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved uniform_item as @uniform_item" do
        # Trigger the behavior that occurs when invalid params are submitted
        UniformItem.any_instance.stub(:save).and_return(false)
        post :create, {:uniform_item => { "code" => "invalid value" }}, valid_session
        assigns(:uniform_item).should be_a_new(UniformItem)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        UniformItem.any_instance.stub(:save).and_return(false)
        post :create, {:uniform_item => { "code" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested uniform_item" do
        uniform_item = UniformItem.create! valid_attributes
        # Assuming there are no other uniform_items in the database, this
        # specifies that the UniformItem created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        UniformItem.any_instance.should_receive(:update).with({ "code" => "MyString" })
        put :update, {:id => uniform_item.to_param, :uniform_item => { "code" => "MyString" }}, valid_session
      end

      it "assigns the requested uniform_item as @uniform_item" do
        uniform_item = UniformItem.create! valid_attributes
        put :update, {:id => uniform_item.to_param, :uniform_item => valid_attributes}, valid_session
        assigns(:uniform_item).should eq(uniform_item)
      end

      it "redirects to the uniform_item" do
        uniform_item = UniformItem.create! valid_attributes
        put :update, {:id => uniform_item.to_param, :uniform_item => valid_attributes}, valid_session
        response.should redirect_to(uniform_item)
      end
    end

    describe "with invalid params" do
      it "assigns the uniform_item as @uniform_item" do
        uniform_item = UniformItem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        UniformItem.any_instance.stub(:save).and_return(false)
        put :update, {:id => uniform_item.to_param, :uniform_item => { "code" => "invalid value" }}, valid_session
        assigns(:uniform_item).should eq(uniform_item)
      end

      it "re-renders the 'edit' template" do
        uniform_item = UniformItem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        UniformItem.any_instance.stub(:save).and_return(false)
        put :update, {:id => uniform_item.to_param, :uniform_item => { "code" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested uniform_item" do
      uniform_item = UniformItem.create! valid_attributes
      expect {
        delete :destroy, {:id => uniform_item.to_param}, valid_session
      }.to change(UniformItem, :count).by(-1)
    end

    it "redirects to the uniform_items list" do
      uniform_item = UniformItem.create! valid_attributes
      delete :destroy, {:id => uniform_item.to_param}, valid_session
      response.should redirect_to(uniform_items_url)
    end
  end

end