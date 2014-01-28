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

describe YarnsController do

  # This should return the minimal set of attributes required to create a valid
  # Yarn. As you add validations to Yarn, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "brand" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # YarnsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all yarns as @yarns" do
      yarn = Yarn.create! valid_attributes
      get :index, {}, valid_session
      assigns(:yarns).should eq([yarn])
    end
  end

  describe "GET show" do
    it "assigns the requested yarn as @yarn" do
      yarn = Yarn.create! valid_attributes
      get :show, {:id => yarn.to_param}, valid_session
      assigns(:yarn).should eq(yarn)
    end
  end

  describe "GET new" do
    it "assigns a new yarn as @yarn" do
      get :new, {}, valid_session
      assigns(:yarn).should be_a_new(Yarn)
    end
  end

  describe "GET edit" do
    it "assigns the requested yarn as @yarn" do
      yarn = Yarn.create! valid_attributes
      get :edit, {:id => yarn.to_param}, valid_session
      assigns(:yarn).should eq(yarn)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Yarn" do
        expect {
          post :create, {:yarn => valid_attributes}, valid_session
        }.to change(Yarn, :count).by(1)
      end

      it "assigns a newly created yarn as @yarn" do
        post :create, {:yarn => valid_attributes}, valid_session
        assigns(:yarn).should be_a(Yarn)
        assigns(:yarn).should be_persisted
      end

      it "redirects to the created yarn" do
        post :create, {:yarn => valid_attributes}, valid_session
        response.should redirect_to(Yarn.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved yarn as @yarn" do
        # Trigger the behavior that occurs when invalid params are submitted
        Yarn.any_instance.stub(:save).and_return(false)
        post :create, {:yarn => { "brand" => "invalid value" }}, valid_session
        assigns(:yarn).should be_a_new(Yarn)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Yarn.any_instance.stub(:save).and_return(false)
        post :create, {:yarn => { "brand" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested yarn" do
        yarn = Yarn.create! valid_attributes
        # Assuming there are no other yarns in the database, this
        # specifies that the Yarn created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Yarn.any_instance.should_receive(:update_attributes).with({ "brand" => "MyString" })
        put :update, {:id => yarn.to_param, :yarn => { "brand" => "MyString" }}, valid_session
      end

      it "assigns the requested yarn as @yarn" do
        yarn = Yarn.create! valid_attributes
        put :update, {:id => yarn.to_param, :yarn => valid_attributes}, valid_session
        assigns(:yarn).should eq(yarn)
      end

      it "redirects to the yarn" do
        yarn = Yarn.create! valid_attributes
        put :update, {:id => yarn.to_param, :yarn => valid_attributes}, valid_session
        response.should redirect_to(yarn)
      end
    end

    describe "with invalid params" do
      it "assigns the yarn as @yarn" do
        yarn = Yarn.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Yarn.any_instance.stub(:save).and_return(false)
        put :update, {:id => yarn.to_param, :yarn => { "brand" => "invalid value" }}, valid_session
        assigns(:yarn).should eq(yarn)
      end

      it "re-renders the 'edit' template" do
        yarn = Yarn.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Yarn.any_instance.stub(:save).and_return(false)
        put :update, {:id => yarn.to_param, :yarn => { "brand" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested yarn" do
      yarn = Yarn.create! valid_attributes
      expect {
        delete :destroy, {:id => yarn.to_param}, valid_session
      }.to change(Yarn, :count).by(-1)
    end

    it "redirects to the yarns list" do
      yarn = Yarn.create! valid_attributes
      delete :destroy, {:id => yarn.to_param}, valid_session
      response.should redirect_to(yarns_url)
    end
  end

end