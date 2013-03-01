class DirectsController < ApplicationController
  # GET /directs
  # GET /directs.json
  def index
    @directs = Direct.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @directs }
    end
  end

  # GET /directs/1
  # GET /directs/1.json
  def show
    @direct = Direct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @direct }
    end
  end

  # GET /directs/new
  # GET /directs/new.json
  def new
    @direct = Direct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @direct }
    end
  end

  # GET /directs/1/edit
  def edit
    @direct = Direct.find(params[:id])
  end

  # POST /directs
  # POST /directs.json
  def create
    @direct = Direct.new(params[:direct])

    respond_to do |format|
      if @direct.save
        format.html { redirect_to @direct, notice: 'Direct was successfully created.' }
        format.json { render json: @direct, status: :created, location: @direct }
      else
        format.html { render action: "new" }
        format.json { render json: @direct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /directs/1
  # PUT /directs/1.json
  def update
    @direct = Direct.find(params[:id])

    respond_to do |format|
      if @direct.update_attributes(params[:direct])
        format.html { redirect_to @direct, notice: 'Direct was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @direct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directs/1
  # DELETE /directs/1.json
  def destroy
    @direct = Direct.find(params[:id])
    @direct.destroy

    respond_to do |format|
      format.html { redirect_to directs_url }
      format.json { head :no_content }
    end
  end
end
