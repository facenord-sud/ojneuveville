require 'spec_helper'


describe CourrielsController do

  # This should return the minimal set of attributes required to create a valid
  # Courriel. As you add validations to Courriel, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CourrielsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all courriels as @courriels" do
      courriel = Courriel.create! valid_attributes
      get :index, {}, valid_session
      assigns(:courriels).should eq([courriel])
    end
  end

  describe "GET show" do
    it "assigns the requested courriel as @courriel" do
      courriel = Courriel.create! valid_attributes
      get :show, {:id => courriel.to_param}, valid_session
      assigns(:courriel).should eq(courriel)
    end
  end

  describe "GET new" do
    it "assigns a new courriel as @courriel" do
      get :new, {}, valid_session
      assigns(:courriel).should be_a_new(Courriel)
    end
  end

  describe "GET edit" do
    it "assigns the requested courriel as @courriel" do
      courriel = Courriel.create! valid_attributes
      get :edit, {:id => courriel.to_param}, valid_session
      assigns(:courriel).should eq(courriel)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Courriel" do
        expect {
          post :create, {:courriel => valid_attributes}, valid_session
        }.to change(Courriel, :count).by(1)
      end

      it "assigns a newly created courriel as @courriel" do
        post :create, {:courriel => valid_attributes}, valid_session
        assigns(:courriel).should be_a(Courriel)
        assigns(:courriel).should be_persisted
      end

      it "redirects to the created courriel" do
        post :create, {:courriel => valid_attributes}, valid_session
        response.should redirect_to(Courriel.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved courriel as @courriel" do
        # Trigger the behavior that occurs when invalid params are submitted
        Courriel.any_instance.stub(:save).and_return(false)
        post :create, {:courriel => {}}, valid_session
        assigns(:courriel).should be_a_new(Courriel)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Courriel.any_instance.stub(:save).and_return(false)
        post :create, {:courriel => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested courriel" do
        courriel = Courriel.create! valid_attributes
        # Assuming there are no other courriels in the database, this
        # specifies that the Courriel created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Courriel.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => courriel.to_param, :courriel => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested courriel as @courriel" do
        courriel = Courriel.create! valid_attributes
        put :update, {:id => courriel.to_param, :courriel => valid_attributes}, valid_session
        assigns(:courriel).should eq(courriel)
      end

      it "redirects to the courriel" do
        courriel = Courriel.create! valid_attributes
        put :update, {:id => courriel.to_param, :courriel => valid_attributes}, valid_session
        response.should redirect_to(courriel)
      end
    end

    describe "with invalid params" do
      it "assigns the courriel as @courriel" do
        courriel = Courriel.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Courriel.any_instance.stub(:save).and_return(false)
        put :update, {:id => courriel.to_param, :courriel => {}}, valid_session
        assigns(:courriel).should eq(courriel)
      end

      it "re-renders the 'edit' template" do
        courriel = Courriel.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Courriel.any_instance.stub(:save).and_return(false)
        put :update, {:id => courriel.to_param, :courriel => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested courriel" do
      courriel = Courriel.create! valid_attributes
      expect {
        delete :destroy, {:id => courriel.to_param}, valid_session
      }.to change(Courriel, :count).by(-1)
    end

    it "redirects to the courriels list" do
      courriel = Courriel.create! valid_attributes
      delete :destroy, {:id => courriel.to_param}, valid_session
      response.should redirect_to(courriels_url)
    end
  end

end
