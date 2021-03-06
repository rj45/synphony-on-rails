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

describe SequenceSpellingPatternsController do

  # This should return the minimal set of attributes required to create a valid
  # SequenceSpellingPattern. As you add validations to SequenceSpellingPattern, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "position" => "1" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SequenceSpellingPatternsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all sequence_spelling_patterns as @sequence_spelling_patterns" do
      sequence_spelling_pattern = SequenceSpellingPattern.create! valid_attributes
      get :index, {}, valid_session
      assigns(:sequence_spelling_patterns).should eq([sequence_spelling_pattern])
    end
  end

  describe "GET show" do
    it "assigns the requested sequence_spelling_pattern as @sequence_spelling_pattern" do
      sequence_spelling_pattern = SequenceSpellingPattern.create! valid_attributes
      get :show, {:id => sequence_spelling_pattern.to_param}, valid_session
      assigns(:sequence_spelling_pattern).should eq(sequence_spelling_pattern)
    end
  end

  describe "GET new" do
    it "assigns a new sequence_spelling_pattern as @sequence_spelling_pattern" do
      get :new, {}, valid_session
      assigns(:sequence_spelling_pattern).should be_a_new(SequenceSpellingPattern)
    end
  end

  describe "GET edit" do
    it "assigns the requested sequence_spelling_pattern as @sequence_spelling_pattern" do
      sequence_spelling_pattern = SequenceSpellingPattern.create! valid_attributes
      get :edit, {:id => sequence_spelling_pattern.to_param}, valid_session
      assigns(:sequence_spelling_pattern).should eq(sequence_spelling_pattern)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new SequenceSpellingPattern" do
        expect {
          post :create, {:sequence_spelling_pattern => valid_attributes}, valid_session
        }.to change(SequenceSpellingPattern, :count).by(1)
      end

      it "assigns a newly created sequence_spelling_pattern as @sequence_spelling_pattern" do
        post :create, {:sequence_spelling_pattern => valid_attributes}, valid_session
        assigns(:sequence_spelling_pattern).should be_a(SequenceSpellingPattern)
        assigns(:sequence_spelling_pattern).should be_persisted
      end

      it "redirects to the created sequence_spelling_pattern" do
        post :create, {:sequence_spelling_pattern => valid_attributes}, valid_session
        response.should redirect_to(SequenceSpellingPattern.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved sequence_spelling_pattern as @sequence_spelling_pattern" do
        # Trigger the behavior that occurs when invalid params are submitted
        SequenceSpellingPattern.any_instance.stub(:save).and_return(false)
        post :create, {:sequence_spelling_pattern => { "position" => "invalid value" }}, valid_session
        assigns(:sequence_spelling_pattern).should be_a_new(SequenceSpellingPattern)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        SequenceSpellingPattern.any_instance.stub(:save).and_return(false)
        post :create, {:sequence_spelling_pattern => { "position" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested sequence_spelling_pattern" do
        sequence_spelling_pattern = SequenceSpellingPattern.create! valid_attributes
        # Assuming there are no other sequence_spelling_patterns in the database, this
        # specifies that the SequenceSpellingPattern created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        SequenceSpellingPattern.any_instance.should_receive(:update_attributes).with({ "position" => "1" })
        put :update, {:id => sequence_spelling_pattern.to_param, :sequence_spelling_pattern => { "position" => "1" }}, valid_session
      end

      it "assigns the requested sequence_spelling_pattern as @sequence_spelling_pattern" do
        sequence_spelling_pattern = SequenceSpellingPattern.create! valid_attributes
        put :update, {:id => sequence_spelling_pattern.to_param, :sequence_spelling_pattern => valid_attributes}, valid_session
        assigns(:sequence_spelling_pattern).should eq(sequence_spelling_pattern)
      end

      it "redirects to the sequence_spelling_pattern" do
        sequence_spelling_pattern = SequenceSpellingPattern.create! valid_attributes
        put :update, {:id => sequence_spelling_pattern.to_param, :sequence_spelling_pattern => valid_attributes}, valid_session
        response.should redirect_to(sequence_spelling_pattern)
      end
    end

    describe "with invalid params" do
      it "assigns the sequence_spelling_pattern as @sequence_spelling_pattern" do
        sequence_spelling_pattern = SequenceSpellingPattern.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SequenceSpellingPattern.any_instance.stub(:save).and_return(false)
        put :update, {:id => sequence_spelling_pattern.to_param, :sequence_spelling_pattern => { "position" => "invalid value" }}, valid_session
        assigns(:sequence_spelling_pattern).should eq(sequence_spelling_pattern)
      end

      it "re-renders the 'edit' template" do
        sequence_spelling_pattern = SequenceSpellingPattern.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SequenceSpellingPattern.any_instance.stub(:save).and_return(false)
        put :update, {:id => sequence_spelling_pattern.to_param, :sequence_spelling_pattern => { "position" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested sequence_spelling_pattern" do
      sequence_spelling_pattern = SequenceSpellingPattern.create! valid_attributes
      expect {
        delete :destroy, {:id => sequence_spelling_pattern.to_param}, valid_session
      }.to change(SequenceSpellingPattern, :count).by(-1)
    end

    it "redirects to the sequence_spelling_patterns list" do
      sequence_spelling_pattern = SequenceSpellingPattern.create! valid_attributes
      delete :destroy, {:id => sequence_spelling_pattern.to_param}, valid_session
      response.should redirect_to(sequence_spelling_patterns_url)
    end
  end

end
