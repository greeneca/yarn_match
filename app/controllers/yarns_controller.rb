class YarnsController < ApplicationController

  before_filter :authenticate_user!
  load_and_authorize_resource

  # GET /yarns
  # GET /yarns.json
  def index
    @yarns = Yarn.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @yarns }
    end
  end

  # GET /yarns/1
  # GET /yarns/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @yarn }
    end
  end

  # GET /yarns/new
  # GET /yarns/new.json
  def new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @yarn }
    end
  end

  # GET /yarns/1/edit
  def edit
  end

  # POST /yarns
  # POST /yarns.json
  def create
    respond_to do |format|
      if @yarn.save
        format.html { redirect_to @yarn, notice: 'Yarn was successfully created.' }
        format.json { render json: @yarn, status: :created, location: @yarn }
      else
        format.html { render action: "new" }
        format.json { render json: @yarn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /yarns/1
  # PUT /yarns/1.json
  def update
    respond_to do |format|
      if @yarn.update_attributes(params[:yarn])
        format.html { redirect_to @yarn, notice: 'Yarn was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @yarn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yarns/1
  # DELETE /yarns/1.json
  def destroy
    @yarn.destroy
    respond_to do |format|
      format.html { redirect_to yarns_url }
      format.json { head :no_content }
    end
  end
end
