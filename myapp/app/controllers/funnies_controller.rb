class FunniesController < ApplicationController
  # GET /funnies
  # GET /funnies.json
  def index
    @funnies = Funny.order("random()").limit(1)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @funnies }
    end
  end

  # GET /funnies/1
  # GET /funnies/1.json
  def show
    @funny = Funny.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @funny }
    end
  end

  # GET /funnies/new
  # GET /funnies/new.json
  def new
    @funny = Funny.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @funny }
    end
  end

  # GET /funnies/1/edit
  def edit
    @funny = Funny.find(params[:id])
  end

  # POST /funnies
  # POST /funnies.json
  def create
    @funny = Funny.new(params[:funny])

    respond_to do |format|
      if @funny.save
        format.html { redirect_to @funny, notice: 'Funny was successfully created.' }
        format.json { render json: @funny, status: :created, location: @funny }
      else
        format.html { render action: "new" }
        format.json { render json: @funny.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /funnies/1
  # PUT /funnies/1.json
  def update
    @funny = Funny.find(params[:id])

    respond_to do |format|
      if @funny.update_attributes(params[:funny])
        format.html { redirect_to @funny, notice: 'Funny was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @funny.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funnies/1
  # DELETE /funnies/1.json
  def destroy
    @funny = Funny.find(params[:id])
    @funny.destroy

    respond_to do |format|
      format.html { redirect_to funnies_url }
      format.json { head :no_content }
    end
  end
end
