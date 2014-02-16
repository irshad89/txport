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

describe DepotFuelsController do

  # This should return the minimal set of attributes required to create a valid
  # DepotFuel. As you add validations to DepotFuel, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "unit_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DepotFuelsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all depot_fuels as @depot_fuels" do
      depot_fuel = DepotFuel.create! valid_attributes
      get :index, {}, valid_session
      assigns(:depot_fuels).should eq([depot_fuel])
    end
  end

  describe "GET show" do
    it "assigns the requested depot_fuel as @depot_fuel" do
      depot_fuel = DepotFuel.create! valid_attributes
      get :show, {:id => depot_fuel.to_param}, valid_session
      assigns(:depot_fuel).should eq(depot_fuel)
    end
  end

  describe "GET new" do
    it "assigns a new depot_fuel as @depot_fuel" do
      get :new, {}, valid_session
      assigns(:depot_fuel).should be_a_new(DepotFuel)
    end
  end

  describe "GET edit" do
    it "assigns the requested depot_fuel as @depot_fuel" do
      depot_fuel = DepotFuel.create! valid_attributes
      get :edit, {:id => depot_fuel.to_param}, valid_session
      assigns(:depot_fuel).should eq(depot_fuel)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new DepotFuel" do
        expect {
          post :create, {:depot_fuel => valid_attributes}, valid_session
        }.to change(DepotFuel, :count).by(1)
      end

      it "assigns a newly created depot_fuel as @depot_fuel" do
        post :create, {:depot_fuel => valid_attributes}, valid_session
        assigns(:depot_fuel).should be_a(DepotFuel)
        assigns(:depot_fuel).should be_persisted
      end

      it "redirects to the created depot_fuel" do
        post :create, {:depot_fuel => valid_attributes}, valid_session
        response.should redirect_to(DepotFuel.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved depot_fuel as @depot_fuel" do
        # Trigger the behavior that occurs when invalid params are submitted
        DepotFuel.any_instance.stub(:save).and_return(false)
        post :create, {:depot_fuel => { "unit_id" => "invalid value" }}, valid_session
        assigns(:depot_fuel).should be_a_new(DepotFuel)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        DepotFuel.any_instance.stub(:save).and_return(false)
        post :create, {:depot_fuel => { "unit_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested depot_fuel" do
        depot_fuel = DepotFuel.create! valid_attributes
        # Assuming there are no other depot_fuels in the database, this
        # specifies that the DepotFuel created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        DepotFuel.any_instance.should_receive(:update).with({ "unit_id" => "1" })
        put :update, {:id => depot_fuel.to_param, :depot_fuel => { "unit_id" => "1" }}, valid_session
      end

      it "assigns the requested depot_fuel as @depot_fuel" do
        depot_fuel = DepotFuel.create! valid_attributes
        put :update, {:id => depot_fuel.to_param, :depot_fuel => valid_attributes}, valid_session
        assigns(:depot_fuel).should eq(depot_fuel)
      end

      it "redirects to the depot_fuel" do
        depot_fuel = DepotFuel.create! valid_attributes
        put :update, {:id => depot_fuel.to_param, :depot_fuel => valid_attributes}, valid_session
        response.should redirect_to(depot_fuel)
      end
    end

    describe "with invalid params" do
      it "assigns the depot_fuel as @depot_fuel" do
        depot_fuel = DepotFuel.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        DepotFuel.any_instance.stub(:save).and_return(false)
        put :update, {:id => depot_fuel.to_param, :depot_fuel => { "unit_id" => "invalid value" }}, valid_session
        assigns(:depot_fuel).should eq(depot_fuel)
      end

      it "re-renders the 'edit' template" do
        depot_fuel = DepotFuel.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        DepotFuel.any_instance.stub(:save).and_return(false)
        put :update, {:id => depot_fuel.to_param, :depot_fuel => { "unit_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested depot_fuel" do
      depot_fuel = DepotFuel.create! valid_attributes
      expect {
        delete :destroy, {:id => depot_fuel.to_param}, valid_session
      }.to change(DepotFuel, :count).by(-1)
    end

    it "redirects to the depot_fuels list" do
      depot_fuel = DepotFuel.create! valid_attributes
      delete :destroy, {:id => depot_fuel.to_param}, valid_session
      response.should redirect_to(depot_fuels_url)
    end
  end

end