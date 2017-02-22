class UncategoriesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_uncategory, only: [:show, :edit, :update, :destroy]

  # GET /uncategories
  # GET /uncategories.json
  def index
    @uncategories = Uncategory.all
  end

  # GET /uncategories/1
  # GET /uncategories/1.json
  def show
  end

  # GET /uncategories/new
  def new
    @uncategory = Uncategory.new
  end

  # GET /uncategories/1/edit
  def edit
  end

  # POST /uncategories
  # POST /uncategories.json
  def create
    @uncategory = Uncategory.new(uncategory_params)

    respond_to do |format|
      if @uncategory.save
        format.html { redirect_to @uncategory, notice: 'Uncategory was successfully created.' }
        format.json { render :show, status: :created, location: @uncategory }
      else
        format.html { render :new }
        format.json { render json: @uncategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uncategories/1
  # PATCH/PUT /uncategories/1.json
  def update
    respond_to do |format|
      if @uncategory.update(uncategory_params)
        format.html { redirect_to @uncategory, notice: 'Uncategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @uncategory }
      else
        format.html { render :edit }
        format.json { render json: @uncategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uncategories/1
  # DELETE /uncategories/1.json
  def destroy
    @uncategory.destroy
    respond_to do |format|
      format.html { redirect_to uncategories_url, notice: 'Uncategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uncategory
      @uncategory = Uncategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uncategory_params
      params.require(:uncategory).permit(:name, :category_id)
    end
end
