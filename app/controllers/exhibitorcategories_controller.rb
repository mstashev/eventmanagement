class ExhibitorcategoriesController < ApplicationController
  # GET /exhibitorcategories
  # GET /exhibitorcategories.json
  def index
    @exhibitorcategories = Exhibitorcategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exhibitorcategories }
    end
  end

  # GET /exhibitorcategories/1
  # GET /exhibitorcategories/1.json
  def show
    @exhibitorcategory = Exhibitorcategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exhibitorcategory }
    end
  end

  # GET /exhibitorcategories/new
  # GET /exhibitorcategories/new.json
  def new
    @exhibitorcategory = Exhibitorcategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exhibitorcategory }
    end
  end

  # GET /exhibitorcategories/1/edit
  def edit
    @exhibitorcategory = Exhibitorcategory.find(params[:id])
  end

  # POST /exhibitorcategories
  # POST /exhibitorcategories.json
  def create
    @exhibitorcategory = Exhibitorcategory.new(params[:exhibitorcategory])

    respond_to do |format|
      if @exhibitorcategory.save
        format.html { redirect_to @exhibitorcategory, notice: 'Exhibitorcategory was successfully created.' }
        format.json { render json: @exhibitorcategory, status: :created, location: @exhibitorcategory }
      else
        format.html { render action: "new" }
        format.json { render json: @exhibitorcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exhibitorcategories/1
  # PUT /exhibitorcategories/1.json
  def update
    @exhibitorcategory = Exhibitorcategory.find(params[:id])

    respond_to do |format|
      if @exhibitorcategory.update_attributes(params[:exhibitorcategory])
        format.html { redirect_to @exhibitorcategory, notice: 'Exhibitorcategory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exhibitorcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exhibitorcategories/1
  # DELETE /exhibitorcategories/1.json
  def destroy
    @exhibitorcategory = Exhibitorcategory.find(params[:id])
    @exhibitorcategory.destroy

    respond_to do |format|
      format.html { redirect_to exhibitorcategories_url }
      format.json { head :no_content }
    end
  end
end
