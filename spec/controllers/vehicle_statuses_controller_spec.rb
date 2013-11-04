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

describe VehicleStatusesController do

  # This should return the minimal set of attributes required to create a valid
  # VehicleStatus. As you add validations to VehicleStatus, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "short_name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # VehicleStatusesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all vehicle_statuses as @vehicle_statuses" do
      vehicle_status = VehicleStatus.create! valid_attributes
      get :index, {}, valid_session
      assigns(:vehicle_statuses).should eq([vehicle_status])
    end
  end

  describe "GET show" do
    it "assigns the requested vehicle_status as @vehicle_status" do
      vehicle_status = VehicleStatus.create! valid_attributes
      get :show, {:id => vehicle_status.to_param}, valid_session
      assigns(:vehicle_status).should eq(vehicle_status)
    end
  end

  describe "GET new" do
    it "assigns a new vehicle_status as @vehicle_status" do
      get :new, {}, valid_session
      assigns(:vehicle_status).should be_a_new(VehicleStatus)
    end
  end

  describe "GET edit" do
    it "assigns the requested vehicle_status as @vehicle_status" do
      vehicle_status = VehicleStatus.create! valid_attributes
      get :edit, {:id => vehicle_status.to_param}, valid_session
      assigns(:vehicle_status).should eq(vehicle_status)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new VehicleStatus" do
        expect {
          post :create, {:vehicle_status => valid_attributes}, valid_session
        }.to change(VehicleStatus, :count).by(1)
      end

      it "assigns a newly created vehicle_status as @vehicle_status" do
        post :create, {:vehicle_status => valid_attributes}, valid_session
        assigns(:vehicle_status).should be_a(VehicleStatus)
        assigns(:vehicle_status).should be_persisted
      end

      it "redirects to the created vehicle_status" do
        post :create, {:vehicle_status => valid_attributes}, valid_session
        response.should redirect_to(VehicleStatus.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved vehicle_status as @vehicle_status" do
        # Trigger the behavior that occurs when invalid params are submitted
        VehicleStatus.any_instance.stub(:save).and_return(false)
        post :create, {:vehicle_status => { "short_name" => "invalid value" }}, valid_session
        assigns(:vehicle_status).should be_a_new(VehicleStatus)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        VehicleStatus.any_instance.stub(:save).and_return(false)
        post :create, {:vehicle_status => { "short_name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested vehicle_status" do
        vehicle_status = VehicleStatus.create! valid_attributes
        # Assuming there are no other vehicle_statuses in the database, this
        # specifies that the VehicleStatus created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        VehicleStatus.any_instance.should_receive(:update).with({ "short_name" => "MyString" })
        put :update, {:id => vehicle_status.to_param, :vehicle_status => { "short_name" => "MyString" }}, valid_session
      end

      it "assigns the requested vehicle_status as @vehicle_status" do
        vehicle_status = VehicleStatus.create! valid_attributes
        put :update, {:id => vehicle_status.to_param, :vehicle_status => valid_attributes}, valid_session
        assigns(:vehicle_status).should eq(vehicle_status)
      end

      it "redirects to the vehicle_status" do
        vehicle_status = VehicleStatus.create! valid_attributes
        put :update, {:id => vehicle_status.to_param, :vehicle_status => valid_attributes}, valid_session
        response.should redirect_to(vehicle_status)
      end
    end

    describe "with invalid params" do
      it "assigns the vehicle_status as @vehicle_status" do
        vehicle_status = VehicleStatus.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        VehicleStatus.any_instance.stub(:save).and_return(false)
        put :update, {:id => vehicle_status.to_param, :vehicle_status => { "short_name" => "invalid value" }}, valid_session
        assigns(:vehicle_status).should eq(vehicle_status)
      end

      it "re-renders the 'edit' template" do
        vehicle_status = VehicleStatus.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        VehicleStatus.any_instance.stub(:save).and_return(false)
        put :update, {:id => vehicle_status.to_param, :vehicle_status => { "short_name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested vehicle_status" do
      vehicle_status = VehicleStatus.create! valid_attributes
      expect {
        delete :destroy, {:id => vehicle_status.to_param}, valid_session
      }.to change(VehicleStatus, :count).by(-1)
    end

    it "redirects to the vehicle_statuses list" do
      vehicle_status = VehicleStatus.create! valid_attributes
      delete :destroy, {:id => vehicle_status.to_param}, valid_session
      response.should redirect_to(vehicle_statuses_url)
    end
  end

end
