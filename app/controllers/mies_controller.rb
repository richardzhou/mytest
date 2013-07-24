class MiesController < ApplicationController
  # GET /mies
  # GET /mies.json
  def index
    @mies = My.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mies }
    end
  end

  # GET /mies/1
  # GET /mies/1.json
  def show
    @my = My.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @my }
    end
  end

  # GET /mies/new
  # GET /mies/new.json
  def new
    @my = My.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @my }
    end
  end

  # GET /mies/1/edit
  def edit
    @my = My.find(params[:id])
  end

  # POST /mies
  # POST /mies.json
  def create
    @my = My.new(params[:my])

    respond_to do |format|
      if @my.save
        format.html { redirect_to @my, notice: 'My was successfully created.' }
        format.json { render json: @my, status: :created, location: @my }
      else
        format.html { render action: "new" }
        format.json { render json: @my.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mies/1
  # PUT /mies/1.json
  def update
    @my = My.find(params[:id])

    respond_to do |format|
      if @my.update_attributes(params[:my])
        format.html { redirect_to @my, notice: 'My was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @my.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mies/1
  # DELETE /mies/1.json
  def destroy
    @my = My.find(params[:id])
    @my.destroy

    respond_to do |format|
      format.html { redirect_to mies_url }
      format.json { head :no_content }
    end
  end
end
