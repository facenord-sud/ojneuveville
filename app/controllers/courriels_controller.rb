class CourrielsController < ApplicationController

  after_filter :set_back_url

  # GET /courriels
  # GET /courriels.json
  def index
    @courriels = Courriel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @courriels }
    end
  end

  # GET /courriels/1
  # GET /courriels/1.json
  def show
    @courriel = Courriel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @courriel }
    end
  end

  # GET /courriels/new
  # GET /courriels/new.json
  def new
    @courriel = Courriel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @courriel }
    end
  end

  # GET /courriels/1/edit
  def edit
    @courriel = Courriel.find(params[:id])
  end

  # POST /courriels
  # POST /courriels.json
  def create
    @courriel = Courriel.new(params[:courriel])

    respond_to do |format|
      if @courriel.save
        format.html { redirect_to @courriel, notice: 'Courriel was successfully created.' }
        format.json { render json: @courriel, status: :created, location: @courriel }
      else
        format.html { render action: "new" }
        format.json { render json: @courriel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /courriels/1
  # PUT /courriels/1.json
  def update
    @courriel = Courriel.find(params[:id])

    respond_to do |format|
      if @courriel.update_attributes(params[:courriel])
        format.html { redirect_to @courriel, notice: 'Courriel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @courriel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courriels/1
  # DELETE /courriels/1.json
  def destroy
    @courriel = Courriel.find(params[:id])
    @courriel.destroy

    respond_to do |format|
      format.html { redirect_to courriels_url }
      format.json { head :no_content }
    end
  end
end
