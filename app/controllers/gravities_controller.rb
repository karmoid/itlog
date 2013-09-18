class GravitiesController < ApplicationController
  # GET /gravities
  # GET /gravities.json
  def index
    @gravities = Gravity.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gravities }
    end
  end

  # GET /gravities/1
  # GET /gravities/1.json
  def show
    @gravity = Gravity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gravity }
    end
  end

  # GET /gravities/new
  # GET /gravities/new.json
  def new
    @gravity = Gravity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gravity }
    end
  end

  # GET /gravities/1/edit
  def edit
    @gravity = Gravity.find(params[:id])
  end

  # POST /gravities
  # POST /gravities.json
  def create
    @gravity = Gravity.new(params[:gravity])

    respond_to do |format|
      if @gravity.save
        format.html { redirect_to @gravity, notice: 'Gravity was successfully created.' }
        format.json { render json: @gravity, status: :created, location: @gravity }
      else
        format.html { render action: "new" }
        format.json { render json: @gravity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gravities/1
  # PUT /gravities/1.json
  def update
    @gravity = Gravity.find(params[:id])

    respond_to do |format|
      if @gravity.update_attributes(params[:gravity])
        format.html { redirect_to @gravity, notice: 'Gravity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gravity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gravities/1
  # DELETE /gravities/1.json
  def destroy
    @gravity = Gravity.find(params[:id])
    @gravity.destroy

    respond_to do |format|
      format.html { redirect_to gravities_url }
      format.json { head :no_content }
    end
  end
end
