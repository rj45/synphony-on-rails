class GraphemesController < ApplicationController
  # GET /graphemes
  # GET /graphemes.json
  def index
    @graphemes = Grapheme.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @graphemes }
    end
  end

  # GET /graphemes/1
  # GET /graphemes/1.json
  def show
    @grapheme = Grapheme.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @grapheme }
    end
  end

  # GET /graphemes/new
  # GET /graphemes/new.json
  def new
    @grapheme = Grapheme.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @grapheme }
    end
  end

  # GET /graphemes/1/edit
  def edit
    @grapheme = Grapheme.find(params[:id])
  end

  # POST /graphemes
  # POST /graphemes.json
  def create
    @grapheme = Grapheme.new(params[:grapheme])

    respond_to do |format|
      if @grapheme.save
        format.html { redirect_to @grapheme, notice: 'Grapheme was successfully created.' }
        format.json { render json: @grapheme, status: :created, location: @grapheme }
      else
        format.html { render action: "new" }
        format.json { render json: @grapheme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /graphemes/1
  # PUT /graphemes/1.json
  def update
    @grapheme = Grapheme.find(params[:id])

    respond_to do |format|
      if @grapheme.update_attributes(params[:grapheme])
        format.html { redirect_to @grapheme, notice: 'Grapheme was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @grapheme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /graphemes/1
  # DELETE /graphemes/1.json
  def destroy
    @grapheme = Grapheme.find(params[:id])
    @grapheme.destroy

    respond_to do |format|
      format.html { redirect_to graphemes_url }
      format.json { head :no_content }
    end
  end
end
