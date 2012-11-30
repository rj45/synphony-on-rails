class PhonemesController < ApplicationController
  # GET /phonemes
  # GET /phonemes.json
  def index
    @phonemes = Phoneme.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @phonemes }
    end
  end

  # GET /phonemes/1
  # GET /phonemes/1.json
  def show
    @phoneme = Phoneme.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @phoneme }
    end
  end

  # GET /phonemes/new
  # GET /phonemes/new.json
  def new
    @phoneme = Phoneme.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @phoneme }
    end
  end

  # GET /phonemes/1/edit
  def edit
    @phoneme = Phoneme.find(params[:id])
  end

  # POST /phonemes
  # POST /phonemes.json
  def create
    @phoneme = Phoneme.new(params[:phoneme])

    respond_to do |format|
      if @phoneme.save
        format.html { redirect_to @phoneme, notice: 'Phoneme was successfully created.' }
        format.json { render json: @phoneme, status: :created, location: @phoneme }
      else
        format.html { render action: "new" }
        format.json { render json: @phoneme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /phonemes/1
  # PUT /phonemes/1.json
  def update
    @phoneme = Phoneme.find(params[:id])

    respond_to do |format|
      if @phoneme.update_attributes(params[:phoneme])
        format.html { redirect_to @phoneme, notice: 'Phoneme was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @phoneme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phonemes/1
  # DELETE /phonemes/1.json
  def destroy
    @phoneme = Phoneme.find(params[:id])
    @phoneme.destroy

    respond_to do |format|
      format.html { redirect_to phonemes_url }
      format.json { head :no_content }
    end
  end
end
